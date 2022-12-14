create database QLBH
go
use QLBH
go
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] IDENTITY(1,1) NOT NULL,
	[NoidungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDh] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaKH] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](150) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien_Quyen]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien_Quyen](
	[MaLoaiTV] [int] NOT NULL,
	[MaQuyen] [nvarchar](50) NOT NULL,
	[GhiChu] [nvarchar](max) NULL,
 CONSTRAINT [PK_LoaiThanhVien_Quyen] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC,
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/3/2022 9:27:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/3/2022 9:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/3/2022 9:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/3/2022 9:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[MaQuyen] [nvarchar](50) NOT NULL,
	[TenQuyen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/3/2022 9:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](250) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[CauHinh] [nvarchar](max) NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLuotMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
	[HinhAnh1] [nvarchar](max) NULL,
	[HinhAnh2] [nvarchar](max) NULL,
	[HinhAnh3] [nvarchar](max) NULL,
	[HinhAnh4] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 12/3/2022 9:27:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[SoDienThoai] [varchar](50) NULL,
	[CauHoi] [nvarchar](max) NULL,
	[CauTraLoi] [nvarchar](max) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (1, 1, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (2, 1, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (3, 2, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (4, 2, 2, N'Alienware M15 R2', 2, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (5, 4, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (6, 4, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (7, 5, 30, N'Dell Business Multimedia Keyboard - KB522', 1, CAST(700000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (8, 5, 31, N'Dell Keyboard - Smartcard USB', 2, CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (9, 6, 20, N'Alienware AURORA RYZEN™ EDITION R10 GAMING', 1, CAST(24000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (10, 6, 21, N'Alienware Aurora R12 Gaming Desktop', 1, CAST(26000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (11, 7, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (12, 9, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (13, 10, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (14, 11, 1, N'Alienware M15 R1', 3, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (15, 12, 1, N'Alienware M15 R1', 2, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (16, 12, 2, N'Alienware M15 R2', 1, CAST(40000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (17, 12, 7, N'Dell XPS 13 9310 (2021)', 1, CAST(27000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (18, 12, 56, N'Alienware 27 Gaming Monitor - AW2720HF', 1, CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (19, 13, 1, N'Alienware M15 R1', 1, CAST(35000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (20, 13, 3, N'Alienware 51M R1', 1, CAST(60000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDh], [MaDDH], [MaSP], [TenSP], [SoLuong], [Dongia]) VALUES (21, 13, 5, N'Alienware M15 R3', 1, CAST(47500000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] ON 

INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (3, 7, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (4, 8, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (5, 8, 2, CAST(25000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (6, 8, 5, CAST(30000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (7, 9, 1, CAST(20000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (8, 10, 2, CAST(25000000 AS Decimal(18, 0)), 12)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (9, 11, 1, CAST(35000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (10, 12, 1, CAST(35000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (11, 13, 4, CAST(50000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (12, 14, 2, CAST(34000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (13, 15, 3, CAST(30000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (14, 16, 5, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (15, 17, 6, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (16, 18, 7, CAST(34000000 AS Decimal(18, 0)), 10)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (17, 19, 8, CAST(27000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (18, 20, 9, CAST(34000000 AS Decimal(18, 0)), 5)
INSERT [dbo].[ChiTietPhieuNhap] ([MaChiTietPN], [MaPN], [MaSP], [DonGiaNhap], [SoLuongNhap]) VALUES (19, 21, 10, CAST(30000000 AS Decimal(18, 0)), 5)
SET IDENTITY_INSERT [dbo].[ChiTietPhieuNhap] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (1, CAST(N'2021-04-11T23:22:38.417' AS DateTime), 1, NULL, 1, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (2, CAST(N'2021-04-12T14:07:58.713' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (3, CAST(N'2021-04-12T14:08:20.460' AS DateTime), 0, NULL, 0, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (4, CAST(N'2021-04-12T14:08:27.353' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (5, CAST(N'2021-04-15T17:48:18.297' AS DateTime), 0, NULL, 1, 10, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (6, CAST(N'2021-04-15T22:26:51.883' AS DateTime), 1, NULL, 1, 11, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (7, CAST(N'2021-04-15T22:28:36.757' AS DateTime), 1, NULL, 1, 12, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (9, CAST(N'2021-04-23T11:38:30.620' AS DateTime), 0, NULL, 0, 13, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (10, CAST(N'2021-04-25T08:08:20.747' AS DateTime), 0, NULL, 0, 14, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (11, CAST(N'2021-04-25T15:22:36.147' AS DateTime), 1, NULL, 1, 15, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (12, CAST(N'2021-04-25T15:31:48.393' AS DateTime), 1, NULL, 1, 16, 0, 0, 0)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaKH], [UuDai], [DaHuy], [DaXoa]) VALUES (13, CAST(N'2022-11-04T20:25:51.030' AS DateTime), 0, NULL, 0, 17, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (1, N'Nguyễn văn A', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (2, N'Đỗ Văn B', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (3, N'Phạm Thế C', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (4, N'Nguyễn văn D', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (5, N'Đỗ Văn E', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (6, N'Phạm Thế F', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (7, N'Nguyễn văn G', N'123 Bùi đình túy, Q BT, TPHCM', N'vana@gmail.com', N'01235475231', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (8, N'Đỗ Văn H', N'23 XVNT, Q.BT, TPHCM', N'Dob@gmail.com', N'01234324232', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (9, N'Phạm Thế I', N'763 Đồng khởi, Q1, TPHCM', N'TheC@gmail.com', N'04349954312', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (10, N'le gia huy', N'123 nguyen trung truc', N'asdda@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (11, N'le gia huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (12, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (13, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (14, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', N'0123456789', 1)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (15, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (16, N'Lê Gia Huy', N'100 Nguyễn Huệ, Q1, TPHCM', N'giahuyle1@gmail.com', NULL, NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SoDienThoai], [MaThanhVien]) VALUES (17, N'Vũ Hảo', N'Hòa Chính', N'vuvanhaohc123@gmail.com', N'0395698772', NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Laptop', N'fas fa-laptop', N'May-Tinh-Xach-Tay')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'PC', N'fas fa-hdd', N'May-Tinh-De-Ban')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Bàn Phím', N'fas fa-keyboard', N'Ban-Phim')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (4, N'Chuột', N'fas fa-mouse', N'Chuot-May-Tinh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (5, N'Tai Nghe', N'fas fa-headphones', N'Tai-Nghe-May-Tinh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (6, N'Màn Hình', N'fas fa-desktop', N'Man-Hinh-May-Tinh')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (7, N'Gaming Phone', N'fas fa-mobile', N'Dien-Thoai-Gaming')
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Admin', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Staff', 0)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (3, N'Khách Thường', 5)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (4, N'Khách Vip', 10)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanLy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (1, N'QuanTriWeb', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (2, N'QuanLy', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (3, N'DangNhap', NULL)
INSERT [dbo].[LoaiThanhVien_Quyen] ([MaLoaiTV], [MaQuyen], [GhiChu]) VALUES (4, N'DangNhap', NULL)
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'vietcargo', N'180/17 Nguyễn Hữu Cảnh, phường 22, Bình Thạnh,TP.HCM', N'contact@vietcargo.vn', N'0931620000', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'ezitrans', N'79/14 Dương Quảng Hàm, Cầu Giấy, Hà Nội', N'contact@ezitrans.com', N'0867503500', N'0389118500')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'PAKAGO', N'14/16A Thân Nhân Trung, P.13, Q. Tân Bình, HCM', N'hotro@pakago.com', N'0886788247', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Indochinapost', N'167 Quang Trung, Đống Đa, Hà Nội', N'lienhe@indochinapost.com', N'0931620000', N'02866567777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'tantrieuexpress', N'39 Hồng Hà, P.2, Q. Tân Bình, HCM', N'tantrieuexpress@gmail.com', N'0905620000', N'02863569777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'cargoexpress', N'158/2 Hoàng Hoa Thám, P.12, Q. Tân Bình, Tp. HCM', N'contact@cargoexpress.vn', N'02822537487', N'02863569777')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (1, N'Dell', N'Dell_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (2, N'Alienware', N'Alienware_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (3, N'Asus', N'Asus_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (4, N'Razor', N'Razor_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (5, N'MSI', N'MSI_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (6, N'HP', N'HP_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (7, N'Lenovo', N'Lenovo_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (8, N'Logitech', N'Logitech_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (9, N'Acer', N'Acer_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (10, N'Xiaomi', N'Xiaomi_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (11, N'ZTE', N'ZTE_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (12, N'Fuhlen', N'Fuhlen_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (13, N'Corsair', N'Corsair_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (14, N'SteelSeries', N'SteelSeries_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (15, N'SamSung', N'SamSung_Pro@gmail.com')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin]) VALUES (16, N'LG', N'LG_Pro@gmail.com')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[PhieuNhap] ON 

INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (1, 1, NULL, 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (2, 1, NULL, 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (3, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (4, 2, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (5, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (7, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (8, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (9, 1, NULL, NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (10, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (11, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (12, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (13, 3, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (14, 1, CAST(N'2021-04-18T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (15, 6, CAST(N'2021-04-25T01:18:31.977' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (16, 6, CAST(N'2021-04-25T01:22:20.483' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (17, 6, CAST(N'2021-04-25T01:25:06.517' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (18, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (19, 6, CAST(N'2021-04-25T15:25:38.263' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (20, 1, CAST(N'2021-04-25T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [DaXoa]) VALUES (21, 6, CAST(N'2021-04-25T15:35:07.850' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[PhieuNhap] OFF
GO
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'DangNhap', N'Đăng nhập')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanLy', N'Quản lý')
INSERT [dbo].[Quyen] ([MaQuyen], [TenQuyen]) VALUES (N'QuanTriWeb', N'Quản trị web')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (1, N'Alienware M15 R1', CAST(35000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.037' AS DateTime), N'<p>-Màn hình: 15.6 inch, Full HD (1920×1080)</p>
<p>-CPU: Core™i7-8750H Processor 9M Cache, up to 4.10 GHz</p>
<p>-RAM: 16 GB DDR4 2666 MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce GTX 1060 6GB</p>
<p>-Trọng lượng: 2.2 kg</p><p>-Pin: 60 Wh Lithium</p>', NULL, N'csdl.png', 23, 2, 0, 0, 3, 1, 1, 2, 1, 0, N'cai-tao-nha-thi-dau-bac-tu-liem-2.jpg', N'ntd-bac-tu-liem-8-16476868348911495184839.webp', N'csdl.png', N'313401453_633913148476085_2135965803372870481_n.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (2, N'Alienware M15 R2', CAST(40000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch, Full HD (1920×1080) 240Hz </p>
<p>-CPU: Intel Core™i7-9750H Processor 12MB Cache, up to 4.50 GHz</p>
<p>-RAM: 16 GB DDR4 2666 MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce RTX 2060 8GB</p>
<p>-Trọng lượng: 2.16 kg</p>
<p>-Pin: 76 Wh Lithium</p>', NULL, N'313401453_633913148476085_2135965803372870481_n.jpg', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, N'cai-tao-nha-thi-dau-bac-tu-liem-2.jpg', N'1778c9551470cd2e9461.jpg', N'csdl.png', N'ntd-bac-tu-liem-8-16476868348911495184839.webp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (3, N'Alienware 51M R1', CAST(60000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 17.3 inch, Full HD (1920×1080) 240Hz </p>
<p>-CPU: Intel Core™i7-9700K Processor 12MB Cache, up to 4.9 GHz</p>
<p>-RAM: 16 GB DDR4 2666 MHz</p>
<p>-Ổ cứng: 1TB HDD + SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce RTX 2070 8GB</p>
<p>-Trọng lượng: 3.78 Kg</p>
<p>-Pin: 90 Wh Lithium-Polymer</p>', NULL, N'area-51m.png', 8, 50, 0, 0, 3, 1, 1, 2, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (4, N'Alienware 51M R2', CAST(90000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch, Full HD (1920×1080) 300Hz + Tobii Eyetracking</p>
<p>-CPU: Intel Core™i7-10900K Processor 20MB Cache, up to 5.3 GHz</p>
<p>-RAM: 32 GB DDR4 2933MHz</p>
<p>-Ổ cứng: 1TB SSD</p>
<p>-Đồ họa: NVIDIA GeForce RTX 2070 8GB</p>
<p>-Trọng lượng: 3.78 Kg</p>
<p>-Pin: 90 Wh Lithium-Polymer</p>', NULL, N'dell_alienware_area-51m_gaming_laptop_1_-_tejar.png', 14, 12, 0, 0, 3, 1, 1, 2, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (5, N'Alienware M15 R3', CAST(47500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch, Full HD (1920×1080) 240Hz </p>
<p>-CPU: Intel Core™i7-10750H Processor 12MB Cache, up to 5.1 GHz</p>
<p>-RAM: 16 GB DDR4 2666 MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce RTX 2070 8GB</p>
<p>-Trọng lượng:2.11 kg</p>
<p>-Pin: 76 Wh Lithium</p>', NULL, N'alienware-m15-r3-2020.png', 9, 12, 0, 0, 3, 1, 1, 2, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (6, N'Dell XPS 13 7390', CAST(20000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 13.3 inch (1920 x 1080) IPS Anti-Glare </p>
<p>-CPU: Intel Core i5-10210U 1.60 GHz, 6 MB Cache, Upto 4.20 GHz</p>
<p>-RAM: 8GB LPDDR3 2133 MHz</p>
<p>-Ổ cứng: SSD 256GB</p>
<p>-Đồ họa: Intel UHD Graphics 620</p>
<p>-Trọng lượng: 1.23kg</p>
<p>-Pin: 52 Wh Lithium</p>', NULL, N'dell-xps-13-9310-1200.png', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (7, N'Dell XPS 13 9310 (2021)', CAST(27000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 13.3 inch (1920 x 1080) IPS Anti-Glare </p>
<p>-CPU: Intel Core i7-1185g7 Processor (12MB C ache, up to 4.8 GHz)</p>
<p>-RAM: 16GB 4267MHz LPDDR4x</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: Intel Iris Xe Graphics</p>
<p>-Trọng lượng: 1.18kg</p>
<p>-Pin: 51 Wh Lithium</p>', NULL, N'xps-13_black_open-up-left-v2.png', 14, 12, 0, 0, 3, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (8, N'Dell XPS 15 9300', CAST(29000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch FHD (1920 x 1200) IPS Anti-Glare </p>
<p>-CPU: Intel Core™ i7-10750H (12MB Cache, up to 5.0 GHz, 6 cores)</p>
<p>-RAM: 8GB 2933MHz</p>
<p>-Ổ cứng: SSD 256GB</p>
<p>-Đồ họa: NVIDIA GeForce GTX 1650 Ti 4GB GDDR6</p>
<p>-Trọng lượng: 1.83kg</p>
<p>-Pin: 68 Wh Lithium</p>', NULL, N'637092404010389299_dell-xps-15-7590-bac-1.png', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (9, N'Dell XPS 13 9310  2-in-1', CAST(40000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 13.3 inch (1920 x 1200)FHD </p>
<p>-CPU: Intel Core i7-1165G7 2.8GHz up to 4.7GHz</p>
<p>-RAM: 16GB 4267MHz LPDDR4x</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: Intel Iris Xe Graphics</p>
<p>-Trọng lượng: 1,32Kg</p>
<p>-Pin: 51 Wh Lithium</p>', NULL, N'Dell XPS-13-2-in-1-7390-01.png', 9, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (10, N'Dell XPS 17 9700 (2020)', CAST(39000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 17.0 inch (1920 x 1200)FHD </p>
<p>-CPU: Intel Core i7-10875H (16MB Cache, up to 5.1 GHz)</p>
<p>-RAM: 8GB 4267MHz LPDDR4x</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce GTX 1650 Ti 4GB GDDR6</p>
<p>-Trọng lượng: 2.1Kg</p>
<p>-Pin: 97Whr Lithium</p>', NULL, N'Dell-XPS-17-9700-1.png', 9, 12, 0, 0, 3, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (12, N'Dell G3 15 3500B', CAST(24000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch FHD (1920 x 1200) IPS Anti-Glare </p>
<p>-CPU: Intel Core™ i7-10750H (12MB Cache, up to 5.0 GHz, 6 cores)</p>
<p>-RAM: 16GB 2933MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: NVIDIA GeForce GTX 1650 Ti 4GB GDDR6</p>
<p>-Trọng lượng: 2.58kg</p>
<p>-Pin: 56 Wh Lithium</p>', NULL, N'g-series-15-3590-laptop.png', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (13, N'Dell Inspiron G5 15 SE (5505) 2020', CAST(27000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch FHD (1920 x 1200) IPS Anti-Glare </p>
<p>-CPU: AMD Ryzen 7 4800H</p>
<p>-RAM: 16GB 2933MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: AMD Radeon RX 5600M</p>
<p>-Trọng lượng: 2.5kg</p>
<p>-Pin: 56 Wh Lithium</p>', NULL, N'5432_5019467_dell_g5_15_se_2.png', 4, 12, 0, 0, 3, 1, 3, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (14, N'Dell G7 17 7700 2020', CAST(38000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 17.3" FHD (1920 x 1080) IPS Anti-Glare</p>
<p>-CPU: Core i7-10750H (12MB Cache, 2.6GHz up to 5.0 GHz)</p>
<p>-RAM: 16GB 2933MHz</p>
<p>-Ổ cứng: SSD 512GB</p>
<p>-Đồ họa: Nvidia GeForce GTX 1660 Ti (6GB)</p>
<p>-Trọng lượng: 3.2Kg</p>
<p>-Pin: 97 WHr Lithium</p>', NULL, N'Dell-G7-17-7790-033-1558335123.png', 4, 12, 0, 0, 3, 1, 4, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (15, N'Dell G7 15 7588', CAST(27000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch FHD (1920 x 1200) IPS Anti-Glare</p>
<p>-CPU: Core i7-8750H (upto 4.10GHz, 9MB Cache)</p>
<p>-RAM: 8GB DDR4 2666MHz</p>
<p>-Ổ cứng: SSD 256GB</p>
<p>-Đồ họa: Nvidia GeForce GTX 1660 Ti (6GB)</p>
<p>-Trọng lượng: 2.6Kg</p>
<p>-Pin: 56 WHr Lithium</p>', NULL, N'Dell_G7_15-01.png', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (16, N'Dell Inspiron 15 N3501', CAST(19000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), N'<p>-Màn hình: 15.6 inch FHD (1920 x 1200) IPS Anti-Glare</p>
<p>-CPU: Core i7-8750H (upto 4.10GHz, 9MB Cache)</p>
<p>-RAM: 8GB DDR4 2666MHz</p>
<p>-Ổ cứng: SSD 256GB</p>
<p>-Đồ họa: Nvidia GeForce GTX 1660 Ti (6GB)</p>
<p>-Trọng lượng: 2.6Kg</p>
<p>-Pin: 56 WHr Lithium</p>', NULL, N'Dell-Inspiron-15-3000.png', 4, 12, 0, 0, 3, 1, 1, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (17, N'Dell Inspiron 14 3000', CAST(9000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'notebook-inspiron-14-3480-black-campaign-hero-504x350-ng.png', 4, 12, 0, 0, 3, 1, 2, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (18, N'Dell New Inspiron 15 3000', CAST(13000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-New-Inspiron-15-3000.png', 4, 12, 0, 0, 3, 1, 3, 1, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (20, N'Alienware AURORA RYZEN™ EDITION R10 GAMING', CAST(24000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-AURORA-RYZEN-EDITION-R10-GAMING.png', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (21, N'Alienware Aurora R12 Gaming Desktop', CAST(26000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Aurora-R12-Gaming-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (22, N'Alienware Aurora R11 Gaming Desktop', CAST(28000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Aurora-R11-Gaming-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 2, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (23, N'Dell G5 Gaming Desktop', CAST(18000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-G5-Gaming-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (24, N'Dell G5 Gaming Desktop Advanced', CAST(25000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-G5-Gaming-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (25, N'Dell G5 Gaming Desktop Ultimate', CAST(30000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-G5-Gaming-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (26, N'Dell XPS Desktop', CAST(15000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-XPS-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (27, N'Dell XPS Desktop Special Edition', CAST(30000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-XPS-Desktop-Special-Edition.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (28, N'Dell Inspiron 24 5000 Black All-In-One with Bipod Stand', CAST(20000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Inspiron-24 5000-Black-All-In-One.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (29, N'Dell Inspiron Desktop', CAST(13000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Inspiron-Desktop.png', 4, 12, 0, 0, 3, 1, 1, 1, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (30, N'Dell Business Multimedia Keyboard - KB522', CAST(700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Business-Multimedia-Keyboard-KB522.png', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (31, N'Dell Keyboard - Smartcard USB', CAST(900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Keyboard-Smartcard-USB.png', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (32, N'Dell Multimedia Keyboard-KB216 - UK (QWERTY) - White', CAST(500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Multimedia-Keyboard-KB216 -White.png', 4, 12, 0, 0, 3, 1, 1, 1, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (33, N'Alienware Mechanical Gaming Keyboard | AW310K', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Mechanical-Gaming-AW310K.png', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (34, N'Alienware Low Profile RGB Mechanical Gaming Keyboard | AW510K', CAST(3000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Low-Profile-RGB-Mechanical-AW510K.png', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (35, N'Alienware RGB Mechanical Gaming Keyboard | AW410K', CAST(2500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-RGB-Mechanica-Gaming-AW410K.png', 4, 12, 0, 0, 3, 1, 1, 2, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (37, N'Dell Premier Rechargeable Wireless Mouse – MS7421W', CAST(1500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Premier-Rechargeable-Wireless-MS7421W.png', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (38, N'Dell Optical Mouse- MS116 ( BLACK)', CAST(400000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Optical-Mouse-MS116- BLACK.png', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (39, N'Dell Bluetooth Mouse - WM615', CAST(1000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Bluetooth-Mouse-WM615.png', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (40, N'Dell Laser Wired Mouse - MS3220 - Titan Gray', CAST(600000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Del-Laser-Wired-Mouse-MS3220-Gray.png', 4, 12, 0, 0, 3, 1, 1, 1, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (41, N'Alienware Wireless Gaming Mouse | AW310M', CAST(1200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Wireless-Gaming-Mouse-AW310M.png', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (42, N'Alienware RGB Gaming Mouse | AW510M', CAST(1400000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-RGB-Gaming-Mouse-AW510M.png', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (43, N'Alienware Wired/Wireless Gaming Mouse | AW610M', CAST(1900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Wireless-Gaming-Mouse-AW610M.png', 4, 12, 0, 0, 3, 1, 1, 2, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (46, N'Alienware Wireless Gaming Headset: AW988', CAST(3700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Wireless-Headset-AW988.png', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (47, N'Alienware 7.1 Gaming Headset | AW510H', CAST(2300000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-7.1-Gaming-Headset-AW510H.png', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (48, N'Alienware Stereo Gaming Headset | AW310H', CAST(1500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-Stereo-Gaming-Headset-AW310H.png', 4, 12, 0, 0, 3, 1, 1, 2, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (49, N'Dell Pro Stereo Headset - UC350 - Skype for Business', CAST(1900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-Pro-Stereo-Headset-UC350-Skype-Business.png', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (50, N'Dell Pro Stereo Headset – UC150 – Skype for Business', CAST(1300000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'dell-pro-stereo-headset-uc150-hero-504x350.png', 4, 12, 0, 0, 3, 1, 1, 1, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (51, N'Dell 24 Gaming Monitor: S2421HGF', CAST(3700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Del-24-Gaming-Monitor-S2421HGF.png', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (52, N'Dell 27 Gaming Monitor - S2721DGF', CAST(1100000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-27-Gaming-Monitor-S2721DGF.png', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (53, N'Dell 27 Curved Gaming Monitor – S2721HGF', CAST(4600000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-27-Curved-Gaming-Monitor-S2721HGF.png', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (54, N'Dell 32 Curved Gaming Monitor - S3220DGF', CAST(8700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Dell-32-Curved-Gaming-Monitor-S3220DGF.png', 4, 12, 0, 0, 3, 1, 1, 1, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (55, N'Alienware 25 Gaming Monitor - AW2521HF', CAST(7500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-25-Gaming-Monitor-AW2521HF.png', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (56, N'Alienware 27 Gaming Monitor - AW2720HF', CAST(9000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-27-Gaming-Monitor-AW2720HF.png', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (57, N'Alienware 55 OLED Gaming Monitor - AW5520QF', CAST(70000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-55-OLED-Monitor-AW5520QF.png', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (58, N'Alienware 38 Curved Gaming Monitor - AW3821DW', CAST(17000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-38-Curved-Monitor-AW3821DW.png', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (59, N'Alienware 34 Curved Gaming Monitor - AW3420DW', CAST(26000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Alienware-34-Curved-Monitor-AW3420DW.png', 4, 12, 0, 0, 3, 1, 1, 2, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (60, N'Asus ROG Zephyrus Duo 15 GX550LXS-HC055R', CAST(120000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (61, N'Asus ROG Zephyrus G14 GA401I-HHE012T', CAST(30000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (62, N'Asus ROG Zephyrus G15 GA502DU-AL024T', CAST(27000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (63, N'Asus ROG Zephyrus M15 GU502LV-HC090T', CAST(47000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (64, N'Asus ROG Zephyrus S17 GX701LWS-HG061T', CAST(60000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (65, N'Asus ROG Zephyrus G14 GA401', CAST(30000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (66, N'Asus ROG G703GXR-EV029R', CAST(100000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (67, N'Asus ROG Strix G17 G713QR-HG072T', CAST(50000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (68, N'Asus ROG Strix SCAR 15 G533QR-HQ081T', CAST(56000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (69, N'Asus ROG Strix G G731-VEV082T', CAST(36000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (70, N'Asus ROG Strix SCAR III G531G_N-VES122T', CAST(50000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (71, N'Asus TUF FX506LI', CAST(20000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (72, N'Asus TUF Gaming A15 FA506QM', CAST(32000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (73, N'Asus TUF Gaming A17 FA706II-H7125T', CAST(20000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (74, N'Asus ROG Strix G35DX VN007T', CAST(46000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (75, N'Asus ROG Strix GA15 G15DH-VN001T', CAST(28000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (76, N'Asus ROG Strix GL10CS-VN004T', CAST(21000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (77, N'Asus ROG Strix GL10CS-VN023T', CAST(23000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (78, N'Asus ROG Huracan G21CN-D-VN001T', CAST(25000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (79, N'Asus ROG Huracan G21CX-VN007T', CAST(50000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (80, N'Gaming Asus TUF K5 RGB Aura Sync', CAST(1000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (81, N'Asus Gaming Keyboard - RA03 TUF K7', CAST(38000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (82, N'Gaming Asus TUF K1 RGB', CAST(1200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (83, N'ASUS XA01ROG Strix FLARE (Cherry MX Red)', CAST(4300000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (84, N'ASUS ROG Chakram', CAST(3800000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (85, N'ASUS ROG Strix Carry', CAST(1200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (86, N'Gaming ASUS ROG Strix Impact II', CAST(1200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (87, N'ASUS ROG Gladius III Aura Sync USB Wired', CAST(1700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (88, N'ASUS ROG Pugio II RGB', CAST(2500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (89, N' Asus ROG Delta Core', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (90, N' Asus ROG STRIX FUSION 300 7.1 Virtual Gaming', CAST(2700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (91, N' Asus ROG Delta Usb-C Hi-Res Audio Gaming', CAST(4700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (92, N' Asus ROG Delta S', CAST(5000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (93, N' Asus ROG Delta Gundam Edition', CAST(5000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (94, N' ASUS TUF Gaming VG24VQ', CAST(4500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (95, N' ASUS ProArt PA279CV', CAST(13500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (96, N' ASUS ROG Strix XG49VQ', CAST(26500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (97, N' ASUS ROG Strix XG279Q', CAST(17500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (98, N' ASUS ProArt PA248QV', CAST(5500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (99, N' ASUS VA24EHE', CAST(3200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 3, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (100, N' ASUS ROG Phone 5 (8GB - 128GB)', CAST(15000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'ASUS-ROG-Phone-5-8GB-128GB.png', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (101, N' ASUS ROG Phone 2', CAST(13000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'ASUS-ROG-Phone-2.png', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (102, N' ASUS ROG Phone 3 (12GB - 128GB)', CAST(15000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'ASUS-ROG-Phone-3.png', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (103, N'ASUS ROG Phone 3 Strix (12GB - 128GB)', CAST(14000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'ASUS-ROG-Phone-3-Strix.png', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (104, N' Asus ROG Phone 5 Ultimate (18GB|512GB)', CAST(26000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, N'Asus-ROG-Phone-5-Ultimate.png', 4, 12, 0, 0, 3, 1, 1, 3, 7, 0, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (105, N'Razer Blade 15 Advanced Edition - Full HD 360Hz - RTX 3070 - Black', CAST(60000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (106, N'Razer Blade 15 Base Edition - Full HD 144Hz -  RTX 3070 - Black', CAST(46000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (107, N'Razer Blade Pro 17 - QHD 165Hz - RTX 3060 - Black', CAST(53000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (108, N'Razer Blade Pro 17 - 4K Touch 120Hz - RTX 3080 - Black', CAST(83000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (109, N'Razer Blade 15 Advanced Edition - QHD 240Hz - GeForce RTX 3080 - Black', CAST(67000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (110, N'Razer Book 13 - Full HD 60Hz ', CAST(28000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (111, N'Razer Blade Stealth 13 - Full HD 120Hz - GTX 1650 Ti Max-Q - Black', CAST(40000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 1, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (112, N'Razer Tomahawk Gaming Desktop - RTX 3080 - Intel NUC', CAST(75000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (113, N'Razer Tomahawk Gaming Desktop with Intel NUC only', CAST(55000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 2, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (114, N'Razer Huntsman V2 Analog', CAST(7500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (115, N'Razer BlackWidow V3 - Black', CAST(3500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (116, N'Razer BlackWidow V3 Pro', CAST(6000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (117, N'Razer Pro Type', CAST(4000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (118, N'Razer Huntsman Mini', CAST(3200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (119, N'RAZER BLACKWIDOW LITE', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 3, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (120, N'Razer Viper 8KHz', CAST(2000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (121, N'Razer Naga X', CAST(2300000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (122, N'Razer Naga Pro', CAST(4000000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (123, N'Razer DeathAdder V2 Pro', CAST(3100000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (124, N'Razer Mamba Wireless Gears 5 Edition', CAST(2900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (125, N'Razer BASILISK Ultimate', CAST(3200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 4, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (126, N'Razer BlackShark V2 Pro', CAST(4500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (127, N'Razer BlackShark V2 X', CAST(1700000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (128, N'Razer BlackShark V2', CAST(2900000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (129, N'Razer Opus - Midnight Blue', CAST(6200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (130, N'Razer Kraken Ultimate', CAST(3500000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (131, N'Razer Nari Essential Gaming', CAST(2200000 AS Decimal(18, 0)), CAST(N'2018-11-05T10:34:28.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 5, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (132, N'Razer Raptor 27', CAST(16000000 AS Decimal(18, 0)), CAST(N'2021-04-25T00:00:00.000' AS DateTime), NULL, NULL, NULL, 4, 12, 0, 0, 3, 1, 1, 4, 6, 0, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (133, N'alibaba', CAST(10000000 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, N'alienware-wallpaper-4285-4332-hd-wallpapers.jpg', 12, 12, 12, 12, 12, 1, 2, 7, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (134, N'asd', CAST(1233323 AS Decimal(18, 0)), CAST(N'2021-04-17T00:00:00.000' AS DateTime), NULL, NULL, NULL, 12, 12, 12, 12, 12, 1, 6, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (139, N'macbook pro', CAST(10000000 AS Decimal(18, 0)), NULL, NULL, NULL, N'alienware-wallpaper-79-798763-black-and-white-wallpaper-hd-photo-alienware-wallpaper.jpg', 12, 12, 12, 12, 12, 1, 1, 2, 1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhat], [CauHinh], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [LuotBinhLuan], [SoLuotMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa], [HinhAnh1], [HinhAnh2], [HinhAnh3], [HinhAnh4]) VALUES (143, N'Hảo Sâu Sắc', CAST(1000 AS Decimal(18, 0)), NULL, N'I9 11000k', N'<p>Kh&ocirc;ng c&oacute;&nbsp;</p>', N'313401453_633913148476085_2135965803372870481_n.jpg', 1, 1, 1, 1, 1, 1, 6, 2, 1, NULL, N'313401453_633913148476085_2135965803372870481_n.jpg', N'cai-tao-nha-thi-dau-bac-tu-liem-2.jpg', N'313401453_633913148476085_2135965803372870481_n.jpg', N'1778c9551470cd2e9461.jpg')
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (1, N'admin', N'123456', N'Quản trị viên', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'HuyAdmin', 1)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (2, N'staff1', N'123456', N'Nhân viên 1', NULL, NULL, NULL, NULL, NULL, 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (7, N'asida111', N'123', N'hồ thị như loằn', N'123 ádasd', N'asd@gmail.com', N'0123456789', N'Họ tên người cha bạn là gì?', N'Huy', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (8, N'asida111123', N'123', N'ád', N'100 Nguyễn Huệ, Q1, TPHCM', N'asd@gmail.com', N'0123456789', N'Vật nuôi mà bạn yêu thích là gì?', N'Huy', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (9, N'staff2', N'123456', N'nhân viên 2', N'100 Nguyễn Huệ, Q1, TPHCM', N'admin@gmail.com', N'0123456789', N'Sở thích của bạn là gì', N'Huy', 2)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (14, N'vuvanhao', N'123456', N'Vũ Hảo', N'Hòa Chính', N'vuvanhaohc123@gmail.com', N'0395698772', N'Họ tên người cha bạn là gì?', N'Hảo', 3)
INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [CauHoi], [CauTraLoi], [MaLoaiTV]) VALUES (15, N'vuvanhaohc123', N'123456', N'Vũ Hảo', N'Hòa Chính', N'vuvanhaohc123@gmail.com', N'0395698772', N'Họ tên người cha bạn là gì?', N'Hảo', 3)
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ToTable] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ToTable]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_LoaiThanhVien]
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen]  WITH CHECK ADD  CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen] FOREIGN KEY([MaQuyen])
REFERENCES [dbo].[Quyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[LoaiThanhVien_Quyen] CHECK CONSTRAINT [FK_LoaiThanhVien_Quyen_Quyen]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_ToTable] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_ToTable]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_ToTable] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_ToTable]
GO
