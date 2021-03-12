USE STUDENT_MANAGEMENT

-- for KhoaHoc
INSERT INTO dbo.KhoaHoc
(
    MaKoaHoc,
    NamBatDau,
    NamKetThuc
)
VALUES
(   'K2002',        -- MaKoaHoc - varchar(10)
    '20020101', -- NamBatDau - date
    '20060101'  -- NamKetThuc - date
    )

INSERT INTO dbo.KhoaHoc
(
    MaKoaHoc,
    NamBatDau,
    NamKetThuc
)
VALUES
(   'K2003',        -- MaKoaHoc - varchar(10)
    '20030101', -- NamBatDau - date
    '20070101'  -- NamKetThuc - date
    )

INSERT INTO dbo.KhoaHoc
(
    MaKoaHoc,
    NamBatDau,
    NamKetThuc
)
VALUES
(   'K2004',        -- MaKoaHoc - varchar(10)
    '20040101', -- NamBatDau - date
    '20080101'  -- NamKetThuc - date
    )

-- for ChuongTrinhHoc
INSERT INTO dbo.ChuongTrinhHoc
(
    MaCT,
    TenCT
)
VALUES
(   'CQ', -- MaCT - varchar(10)
    N'Chính Quy' -- TenCT - nvarchar(100)
    )

-- for Lop
INSERT INTO dbo.Lop
(
    MaLop,
    MaKhoa,
    MaKhoaHoc,
    MaCT,
    STT
)
VALUES
(   'TH2002/01', -- MaLop - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    'K2002', -- MaKhoaHoc - varchar(10)
    'CQ', -- MaCT - varchar(10)
    1   -- STT - int
    )

INSERT INTO dbo.Lop
(
    MaLop,
    MaKhoa,
    MaKhoaHoc,
    MaCT,
    STT
)
VALUES
(   'TH2002/02', -- MaLop - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    'K2002', -- MaKhoaHoc - varchar(10)
    'CQ', -- MaCT - varchar(10)
    2   -- STT - int
    )

INSERT INTO dbo.Lop
(
    MaLop,
    MaKhoa,
    MaKhoaHoc,
    MaCT,
    STT
)
VALUES
(   'VL2003/01', -- MaLop - varchar(10)
    'VL', -- MaKhoa - varchar(10)
    'K2003', -- MaKhoaHoc - varchar(10)
    'CQ', -- MaCT - varchar(10)
    1   -- STT - int
    )

-- for SinhVien
INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0212001',        -- MaSV - varchar(10)
    N'Nguyen Vinh An',       -- HoTen - nvarchar(100)
    '19840101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'TH2002/01'         -- MaLop - varchar(10)
    )

INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0212002',        -- MaSV - varchar(10)
    N'Nguyen Thanh Binh',       -- HoTen - nvarchar(100)
    '19850101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'TH2002/01'         -- MaLop - varchar(10)
    )

INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0212003',        -- MaSV - varchar(10)
    N'Nguyen Thanh Cuong',       -- HoTen - nvarchar(100)
    '19840101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'TH2002/02'         -- MaLop - varchar(10)
    )

INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0212004',        -- MaSV - varchar(10)
    N'Nguyen Quoc Duy',       -- HoTen - nvarchar(100)
    '19830101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'TH2002/02'         -- MaLop - varchar(10)
    )

INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0311001',        -- MaSV - varchar(10)
    N'Nguyen Tuan Anh',       -- HoTen - nvarchar(100)
    '19850101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'VL2003/01'         -- MaLop - varchar(10)
    )

INSERT INTO dbo.SinhVien
(
    MaSV,
    HoTen,
    NamSinh,
    DanToc,
    MaLop
)
VALUES
(   '0311002',        -- MaSV - varchar(10)
    N'Huynh Tan Sang',       -- HoTen - nvarchar(100)
    '19840101', -- NamSinh - date
    N'Kinh',       -- DanToc - nvarchar(20)
    'VL2003/01'         -- MaLop - varchar(10)
    )

-- for MonHoc
INSERT INTO dbo.MonHoc
(
    MaMH,
    MaKhoa,
    TenMH
)
VALUES
(   'THT01', -- MaMH - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    N'Toan Cao Cap A1' -- TenMH - nvarchar(100)
    )

INSERT INTO dbo.MonHoc
(
    MaMH,
    MaKhoa,
    TenMH
)
VALUES
(   'VLT01', -- MaMH - varchar(10)
    'VL', -- MaKhoa - varchar(10)
    N'Toan Cao Cap A1' -- TenMH - nvarchar(100)
    )

INSERT INTO dbo.MonHoc
(
    MaMH,
    MaKhoa,
    TenMH
)
VALUES
(   'THT02', -- MaMH - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    N'Toan Roi Rac' -- TenMH - nvarchar(100)
    )

INSERT INTO dbo.MonHoc
(
    MaMH,
    MaKhoa,
    TenMH
)
VALUES
(   'THCS01', -- MaMH - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    N'Cau Truc Du Lieu 1' -- TenMH - nvarchar(100)
    )

INSERT INTO dbo.MonHoc
(
    MaMH,
    MaKhoa,
    TenMH
)
VALUES
(   'THCS02', -- MaMH - varchar(10)
    'CNTT', -- MaKhoa - varchar(10)
    N'He Dieu Hanh' -- TenMH - nvarchar(100)
    )

-- for KetQua
INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    4 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    2,  -- LanThi - int
    7 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212002', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    8 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212003', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    6 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212004', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    9 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'THT01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    4 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'THT02', -- MaMH - varchar(10)
    1,  -- LanThi - int
    8 -- DiemThi - float
    )
INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212002', -- MaSV - varchar(10)
    'THT02', -- MaMH - varchar(10)
    1,  -- LanThi - int
    5.5 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212003', -- MaSV - varchar(10)
    'THT02', -- MaMH - varchar(10)
    1,  -- LanThi - int
    4 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212003', -- MaSV - varchar(10)
    'THT02', -- MaMH - varchar(10)
    2,  -- LanThi - int
    6 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212001', -- MaSV - varchar(10)
    'THCS01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    6.5 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212002', -- MaSV - varchar(10)
    'THCS01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    4 -- DiemThi - float
    )

INSERT INTO dbo.KetQua
(
    MaSV,
    MaMH,
    LanThi,
    DiemThi
)
VALUES
(   '0212003', -- MaSV - varchar(10)
    'THCS01', -- MaMH - varchar(10)
    1,  -- LanThi - int
    7 -- DiemThi - float
    )

-- for GiangKhoa
INSERT INTO dbo.GiangKhoa
(
    MaCT,
    MaKhoa,
    MaMH,
    NamHoc,
    HocKy,
    SoTietLyThuyet,
    SoTietThucHanh,
    SoTinChi
)
VALUES
(   'CQ',        -- MaCT - varchar(10)
    'CNTT',        -- MaKhoa - varchar(10)
    'THT01',        -- MaMH - varchar(10)
    '20030101', -- NamHoc - date
    1,         -- HocKy - int
    60,         -- SoTietLyThuyet - int
    30,         -- SoTietThucHanh - int
    5          -- SoTinChi - int
    )

INSERT INTO dbo.GiangKhoa
(
    MaCT,
    MaKhoa,
    MaMH,
    NamHoc,
    HocKy,
    SoTietLyThuyet,
    SoTietThucHanh,
    SoTinChi
)
VALUES
(   'CQ',        -- MaCT - varchar(10)
    'CNTT',        -- MaKhoa - varchar(10)
    'THT02',        -- MaMH - varchar(10)
    '20030101', -- NamHoc - date
    2,         -- HocKy - int
    45,         -- SoTietLyThuyet - int
    30,         -- SoTietThucHanh - int
    4          -- SoTinChi - int
    )

INSERT INTO dbo.GiangKhoa
(
    MaCT,
    MaKhoa,
    MaMH,
    NamHoc,
    HocKy,
    SoTietLyThuyet,
    SoTietThucHanh,
    SoTinChi
)
VALUES
(   'CQ',        -- MaCT - varchar(10)
    'CNTT',        -- MaKhoa - varchar(10)
    'THCS01',        -- MaMH - varchar(10)
    '20040101', -- NamHoc - date
    1,         -- HocKy - int
    45,         -- SoTietLyThuyet - int
    30,         -- SoTietThucHanh - int
    4          -- SoTinChi - int
    )

