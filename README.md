# Quản Lý Bán Hàng - SQL Server on Docker

Chạy SQL Server 2022 bằng Docker với database mẫu **QuanLyBanHang**.

## Yêu cầu

- Docker
- **PowerShell** (Windows) hoặc **bash** (Linux/macOS)
- `sqlcmd` được cài sẵn trong container (đã có sẵn)

## Setup

### 1. Tạo file `.env`

```bash
echo SA_PASSWORD=QLBH_StrongPass123! > .env
```

> Mật khẩu phải có: chữ hoa, chữ thường, số, ký tự đặc biệt (tối thiểu 8 ký tự).

### 2. Khởi động

```bash
docker compose up
```

### 3. Load database

**PowerShell:**
```powershell
.\scripts\load-database.ps1
```

**Bash:**
```bash
chmod +x scripts/*.sh
./scripts/load-database.sh
```

### 4. Kết nối

| Công cụ | Thông số |
|---------|----------|
| SSMS | `localhost,1433` / `sa` / mật khẩu `.env` |
| SQLCMD | `.\scripts\connect.ps1` (PS) hoặc `./scripts/connect.sh` (bash) |

## Lệnh Docker

| Lệnh | Mô tả |
|------|-------|
| `docker compose up` | Khởi động |
| `docker compose down` | Dừng, giữ volume |
| `docker compose down -v` | Dừng, xóa volume (mất dữ liệu) |

## Xử lý lỗi

- **Port 1433 trùng**: đổi port trong `docker-compose.yml`
- **Đổi mật khẩu**: sửa `.env`, dùng `-Password "..."` với script
- **Tạo lại DB**: `docker compose down -v` và chạy lại từ bước 2
