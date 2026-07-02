# Quản Lý Bán Hàng - SQL Server on Docker

Chạy Microsoft SQL Server 2022 bằng Docker với database mẫu **QuanLyBanHang**.

## Setup

Tạo file `.env` trong thư mục gốc:

```
SA_PASSWORD=QLBH_StrongPass123!
```

> Mật khẩu phải có: chữ hoa, chữ thường, số, ký tự đặc biệt (tối thiểu 8 ký tự).

## Quick start

```powershell
docker compose up -d
.\scripts\load-database.ps1
```

## Kết nối

| Công cụ | Lệnh / Thông số |
|---------|----------------|
| SQLCMD | `.\scripts\connect.ps1` |
| SSMS | `localhost,1433` / `sa` / mật khẩu trong `.env` |

Kiểm tra nhanh:

```powershell
docker exec qlbh-sqlserver /opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P "${env:SA_PASSWORD}" -C -Q "USE QuanLyBanHang; SELECT TOP 5 * FROM SanPham"
```

## Cấu trúc database

6 bảng: `ThanhPho` → `Khachhang` → `HoaDon` → `ChiTietHoaDon` → `SanPham`, `NhanVien`

## Lệnh Docker

| Lệnh | Mô tả |
|------|-------|
| `docker compose up -d` | Khởi động |
| `docker compose down` | Dừng, giữ volume |
| `docker compose down -v` | Dừng, xóa volume (mất dữ liệu) |
| `docker compose logs -f` | Log realtime |
| `docker exec -it qlbh-sqlserver bash` | Vào container |

## Xử lý lỗi

- **Port 1433 đã dùng**: sửa port trong `docker-compose.yml`, kết nối SSMS tới `localhost,<port-mới>`
- **Đổi mật khẩu**: sửa `.env`, dùng `-Password "..."` với script
- **Tạo lại database**: `docker compose down -v && docker compose up -d && .\scripts\load-database.ps1`
