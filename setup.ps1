$ErrorActionPreference = "Stop"

# Step 1: Create .env
if (-not (Test-Path .env)) {
    "SA_PASSWORD=QLBH_StrongPass123!" | Out-File -Encoding utf8 .env
    Write-Host "[1/3] Created .env"
} else {
    Write-Host "[1/3] .env already exists, skipped"
}

# Step 2: Load database
Write-Host "[2/3] Loading database..."
& .\scripts\load-database.ps1
Write-Host "[2/3] Database loaded"

# Step 3: Update data source
Write-Host "[3/3] Updating data source..."
& .\scripts\update-datasource.ps1
Write-Host "[3/3] Data source updated"

Write-Host "`nSetup complete." -ForegroundColor Green
