#!/bin/bash
PASSWORD="${1:-QLBH_StrongPass123!}"

echo "=== Connecting to SQL Server (QuanLyBanHang) ==="
echo "Container: qlbh-sqlserver"
echo "Server: localhost,1433"
echo "User: sa"
echo ""

docker exec -it qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd \
    -S localhost -U sa -P "$PASSWORD" -C
