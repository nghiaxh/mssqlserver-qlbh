param(
    [string]$Password = "QLBH_StrongPass123!"
)

Write-Host "=== Copy init scripts to container ===" -ForegroundColor Cyan
docker cp "init/01-create-database.sql" qlbh-sqlserver:/tmp/
docker cp "init/02-create-tables.sql" qlbh-sqlserver:/tmp/

Write-Host "=== Step 1: Creating database QuanLyBanHang ===" -ForegroundColor Cyan
docker exec qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd `
    -S localhost -U sa -P "$Password" -C `
    -i /tmp/01-create-database.sql

Write-Host "=== Step 2: Creating tables & inserting data ===" -ForegroundColor Cyan
docker exec qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd `
    -S localhost -U sa -P "$Password" -C `
    -i /tmp/02-create-tables.sql

Write-Host "=== Done! Database QuanLyBanHang is ready ===" -ForegroundColor Green
Write-Host "Connect with: .\scripts\connect.ps1" -ForegroundColor Yellow
