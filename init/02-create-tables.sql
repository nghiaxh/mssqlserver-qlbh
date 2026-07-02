USE [QuanLyBanHang]
GO

-- ThanhPho
CREATE TABLE [dbo].[ThanhPho](
    [ThanhPho] [nvarchar](2) NOT NULL,
    [TenThanhPho] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED ([ThanhPho] ASC)
)
GO

INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'01', N'Hà Nội')
INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'02', N'Hải Phòng')
INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'03', N'Huế')
INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'04', N'Nha Trang')
INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'05', N'TP HCM')
INSERT [dbo].[ThanhPho] ([ThanhPho], [TenThanhPho]) VALUES (N'06', N'Cần Thơ')
GO

-- SanPham
CREATE TABLE [dbo].[SanPham](
    [MaSP] [nvarchar](6) NOT NULL,
    [TenSP] [nvarchar](50) NOT NULL,
    [DonViTinh] [nvarchar](10) NULL,
    [DonGia] [float] NOT NULL,
    [Hinh] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED ([MaSP] ASC)
)
GO

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0001', N'Bia 333', N'Thung', 220000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0002', N'Bia Tiger', N'Thung', 310000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0003', N'Bia Heineken', N'Thung', 380000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0004', N'Rượu Bình tây', N'Chai', 150000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0005', N'Rượu Napoleon', N'Chai', 430500, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0006', N'Gia vị', N'Thùng', 400000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0007', N'Bánh kem', N'Cái', 200000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0008', N'Bơ', N'Kg', 380000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0009', N'Bánh mì', N'Cái', 10000, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0010', N'Nem', N'Kg', 83790, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonViTinh], [DonGia], [Hinh]) VALUES (N'0011', N'Táo', N'Kg', 15000, NULL)
GO

-- NhanVien
CREATE TABLE [dbo].[NhanVien](
    [MaNV] [nvarchar](6) NOT NULL,
    [Ho] [nvarchar](30) NOT NULL,
    [Ten] [nvarchar](12) NOT NULL,
    [Nu] [int] NOT NULL DEFAULT ((0)),
    [NgayNV] [date] NOT NULL,
    [DiaChi] [nvarchar](100) NULL,
    [DienThoai] [nvarchar](10) NULL,
    [Hinh] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED ([MaNV] ASC)
)
GO

INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0001', N'Lê Văn', N'Tám', 0, CAST(0x011E0B00 AS Date), N'45 Trần Phú Q7', N'86452345', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0002', N'Hà Vĩnh', N'Phát', 0, CAST(0xF0170B00 AS Date), N'89 Đặng Khôi Q1', N'8352074', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0003', N'Trần Tuyết', N'Oanh', 1, CAST(0x69170B00 AS Date), N'26 Lê Quí Đôn P6 Q3', N'8557798', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0004', N'Nguyễn Kim', N'Ngọc', 1, CAST(0xF6180B00 AS Date), N'178 Hậu Giang P6 Q6', N'8553278', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0005', N'Trương Duy ', N'Hùng', 0, CAST(0x9D190B00 AS Date), N'77 Trương Định P6 Q3', N'8940295', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0006', N'Lương Bá ', N'Thắng', 0, CAST(0x9D190B00 AS Date), N'92 Lê Thánh Tôn Q1', N'8940549', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0007', N'Trần thị', N'Lan', 1, CAST(0x2C250B00 AS Date), N'15 Nguyễn Trãi Q5', N'85656634', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0008', N'Tạ thành', N'Tâm', 0, CAST(0x462C0B00 AS Date), N'20 Võ thị Sáu Q3', N'85656666', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0009', N'Ngô Thanh', N'Sơn', 0, CAST(0xAD330B00 AS Date), N'122 Trần Phú Q5', N'85654166', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [Ho], [Ten], [Nu], [NgayNV], [DiaChi], [DienThoai], [Hinh]) VALUES (N'0010', N'Lê thị', N'Thủy', 1, CAST(0x66330B00 AS Date), N'25 Ngô Quyền Q10', N'97654123', NULL)
GO

-- Khachhang
CREATE TABLE [dbo].[Khachhang](
    [MaKH] [nvarchar](10) NOT NULL,
    [TenCty] [nvarchar](50) NOT NULL,
    [DiaChi] [nvarchar](100) NULL,
    [ThanhPho] [nvarchar](2) NOT NULL,
    [DienThoai] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED ([MaKH] ASC)
)
GO

INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'AGROMAS', N'Cơ Điện Nông Nghiệp Q. 3', N'311 Hai Bà Trưng Q3', N'05', N'88970364')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'ALSIMES', N'Giày An Lạc', N'761 Trần Hưng Đạo P1', N'03', N'548456005')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'ASC', N'Du Lịch An Phú', N'233 Nguyễn Trãi P2', N'04', N'0588124780')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'ASECO', N'Giầy May 3/2', N'811 Trần Hưng Đạo P1', N'01', N'48951320')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'ATC', N'Sản Xuất Hàng Mỹ Thuật', N'7 Trang Tử P14', N'04', N'588512230')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'BUMEM', N'Xây Dựng Bình Minh', N'155 Tô Hiến Thành', N'06', N'718547896')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'CEMACO', N'Hóa Chất Vật Liệu', N'282 Trần Hưng Đạo P11', N'06', N'0718450057')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'CINOTEC', N'Điện Toán Sài Gòn', N'43 Yết Kiêu P9', N'06', N'718931752')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'CODACO', N'Cơ Khí Dân Dụng', N'534 Lê Văn Sĩ P14', N'04', N'588647207')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'COFIDEC', N'Phát Triển Kinh Té Duyên Hải', N'94 Điện Biên Phủ', N'01', N'48453710')
INSERT [dbo].[Khachhang] ([MaKH], [TenCty], [DiaChi], [ThanhPho], [DienThoai]) VALUES (N'LIPPHACO', N'Liên Phát', N'200 B?n Chuong Duong', N'04', N'0588321047')
GO

-- HoaDon
CREATE TABLE [dbo].[HoaDon](
    [MaHD] [nvarchar](10) NOT NULL,
    [MaKH] [nvarchar](10) NOT NULL,
    [MaNV] [nvarchar](6) NOT NULL,
    [NgayLapHD] [date] NOT NULL DEFAULT (getdate()),
    [NgayNhanHang] [date] NULL,
PRIMARY KEY CLUSTERED ([MaHD] ASC)
)
GO

INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00001', N'AGROMAS', N'0001', CAST(0x4C230B00 AS Date), CAST(0x58230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00002', N'BUMEM', N'0002', CAST(0x4D230B00 AS Date), CAST(0x5A230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00003', N'ALSIMES', N'0001', CAST(0x52230B00 AS Date), CAST(0x5A230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00004', N'AGROMAS', N'0004', CAST(0x53230B00 AS Date), CAST(0x58230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00005', N'COFIDEC', N'0003', CAST(0x54230B00 AS Date), CAST(0x62230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00006', N'ATC', N'0002', CAST(0x55230B00 AS Date), CAST(0x63230B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00007', N'AGROMAS', N'0001', CAST(0x07240B00 AS Date), CAST(0x26240B00 AS Date))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayNhanHang]) VALUES (N'00008', N'AGROMAS', N'0001', CAST(0x66330B00 AS Date), CAST(0x66330B00 AS Date))
GO

-- ChiTietHoaDon
CREATE TABLE [dbo].[ChiTietHoaDon](
    [MaHD] [nvarchar](10) NOT NULL,
    [MaSP] [nvarchar](6) NOT NULL,
    [SoLuong] [int] NOT NULL
)
GO

INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00001', N'0006', 48)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00001', N'0007', 10)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00002', N'0001', 25)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00002', N'0002', 90)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00002', N'0003', 25)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00002', N'0004', 20)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00003', N'0007', 10)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00004', N'0006', 15)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00004', N'0007', 20)
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaSP], [SoLuong]) VALUES (N'00004', N'0008', 15)
GO

-- Foreign keys
ALTER TABLE [dbo].[Khachhang] WITH CHECK ADD FOREIGN KEY([ThanhPho]) REFERENCES [dbo].[ThanhPho] ([ThanhPho])
GO
ALTER TABLE [dbo].[HoaDon] WITH CHECK ADD FOREIGN KEY([MaKH]) REFERENCES [dbo].[Khachhang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] WITH CHECK ADD FOREIGN KEY([MaNV]) REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] WITH CHECK ADD FOREIGN KEY([MaHD]) REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] WITH CHECK ADD FOREIGN KEY([MaSP]) REFERENCES [dbo].[SanPham] ([MaSP])
GO
