param(
    [string]$Password = "QLBH_StrongPass123!"
)

Write-Host "=== Connecting to SQL Server (QuanLyBanHang) ===" -ForegroundColor Cyan
Write-Host "Container: qlbh-sqlserver" -ForegroundColor Gray
Write-Host "Server: localhost,1433" -ForegroundColor Gray
Write-Host "User: sa" -ForegroundColor Gray
Write-Host ""

docker exec -it qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd `
    -S localhost -U sa -P "$Password" -C
