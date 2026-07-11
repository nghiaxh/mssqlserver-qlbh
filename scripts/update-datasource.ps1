$workspaceRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$connectionString = "Data Source=localhost,1433;Initial Catalog=QuanLyBanHang;User ID=sa;Password=QLBH_StrongPass123!"

Write-Host "=== Updating Data Sources ===" -ForegroundColor Cyan
Write-Host "Workspace: $workspaceRoot" -ForegroundColor Gray
Write-Host "Connection string: $connectionString" -ForegroundColor Yellow
Write-Host ""

$projectDirs = Get-ChildItem -Path $workspaceRoot -Recurse -Filter "*.csproj" -ErrorAction SilentlyContinue |
    Where-Object { $_.FullName -like "*QuanLyBanHang*" -and $_.FullName -notmatch '\\(obj|bin)\\' } |
    ForEach-Object { $_.DirectoryName } |
    Select-Object -Unique

if (-not $projectDirs) {
    Write-Host "No project folder containing 'QuanLyBanHang' found!" -ForegroundColor Red
    exit 1
}

Write-Host "Found project(s):" -ForegroundColor Gray
foreach ($d in $projectDirs) { Write-Host "  $d" -ForegroundColor Gray }
Write-Host ""

$updated = 0
$total = 0

foreach ($dir in $projectDirs) {
    $csFiles = Get-ChildItem -Path $dir -Recurse -Filter "*.cs" -ErrorAction SilentlyContinue |
        Where-Object { $_.FullName -notmatch '\\(obj|bin)\\' }

    foreach ($file in $csFiles) {
        $content = Get-Content -LiteralPath $file.FullName -Raw -ErrorAction SilentlyContinue
        if ($null -eq $content) { continue }
        if ($content -notmatch 'strConnectionString\s*=\s*@"Data Source=') { continue }

        $total++
        $newContent = $content -replace 'Data Source=[^;]+;Initial Catalog=[^;]+;User ID=[^;]+;Password=[^"]+', $connectionString

        if ($newContent -ne $content) {
            Set-Content -LiteralPath $file.FullName -Value $newContent -NoNewline -Encoding UTF8
            Write-Host "[$total] $($file.Name)" -ForegroundColor White -NoNewline
            Write-Host " ... OK" -ForegroundColor Green
            $updated++
        } else {
            Write-Host "[$total] $($file.Name)" -ForegroundColor White -NoNewline
            Write-Host " ... SKIP (unchanged)" -ForegroundColor DarkGray
        }
    }
}

Write-Host ""
Write-Host "=== Done! Updated $updated/$total files ===" -ForegroundColor Green
