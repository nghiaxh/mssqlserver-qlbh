#!/bin/bash
PASSWORD="${1:-QLBH_StrongPass123!}"

echo "=== Copy init scripts to container ==="
docker cp "init/01-create-database.sql" qlbh-sqlserver:/tmp/
docker cp "init/02-create-tables.sql" qlbh-sqlserver:/tmp/

echo "=== Step 1: Creating database QuanLyBanHang ==="
docker exec qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd \
    -S localhost -U sa -P "$PASSWORD" -C \
    -i /tmp/01-create-database.sql

echo "=== Step 2: Creating tables & inserting data ==="
docker exec qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd \
    -S localhost -U sa -P "$PASSWORD" -C \
    -i /tmp/02-create-tables.sql

echo "=== Done! Database QuanLyBanHang is ready ==="
echo "Connect with: ./scripts/connect.sh"
