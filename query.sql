USE STUDENT_MANAGEMENT

-- 1.find IT students who are 2002-2006 course
SELECT SV.*
FROM dbo.SinhVien AS SV 
LEFT JOIN dbo.Lop AS L ON SV.MaLop = L.MaLop
LEFT JOIN dbo.KhoaHoc AS KH ON L.MaKhoaHoc = KH.MaKoaHoc
WHERE L.MaKhoa = 'CNTT' 
AND YEAR(KH.NamBatDau) = '2002' 
AND YEAR(KH.NamKetThuc) = '2006'

-- 2.find students who enrolled earlier than the prescribed age (18)
SELECT SV.MaSV, SV.HoTen, SV.NamSinh
FROM dbo.SinhVien AS SV 
LEFT JOIN dbo.Lop AS L ON L.MaLop = SV.MaLop
LEFT JOIN dbo.KhoaHoc AS KH ON KH.MaKoaHoc = L.MaKhoaHoc
WHERE YEAR(KH.NamBatDau) - YEAR(SV.NamSinh) < 18

-- 3.find 2002-2006 course IT students who didn't enroll Cau truc du lieu 1
SELECT SV.*
FROM dbo.SinhVien AS SV 
LEFT JOIN dbo.Lop AS L ON L.MaLop = SV.MaLop
LEFT JOIN dbo.KhoaHoc AS KH ON KH.MaKoaHoc = L.MaKhoaHoc
WHERE YEAR(KH.NamBatDau) = '2002' 
AND YEAR(Kh.NamKetThuc) = '2006'
AND L.MaKhoa='CNTT'
AND SV.MaSV NOT IN
(
	SELECT SV.MaSV 
	FROM dbo.SinhVien AS SV
	LEFT JOIN dbo.KetQua AS KQ ON KQ.MaSV = SV.MaSV
	LEFT JOIN dbo.MonHoc AS MH ON MH.MaMH = KQ.MaMH
	WHERE MH.TenMH = N'Cau Truc Du Lieu 1'
)

-- 4.find students fell Cau truc du lieu 1 (Diem<5) in the fist test
--   but haven't retest
SELECT SV.*
FROM dbo.SinhVien AS SV
LEFT JOIN dbo.KetQua AS KQ ON KQ.MaSV = SV.MaSV
LEFT JOIN dbo.MonHoc AS MH ON MH.MaMH = KQ.MaMH
WHERE MH.TenMH = N'Cau Truc Du Lieu 1'
AND KQ.DiemThi < 5
AND KQ.LanThi = 1
AND SV.MaSV NOT IN
(
	SELECT SV.MaSV
	FROM dbo.SinhVien AS SV
	LEFT JOIN dbo.KetQua AS KQ ON KQ.MaSV = SV.MaSV
	LEFT JOIN dbo.MonHoc AS MH ON MH.MaMH = KQ.MaMH
	WHERE MH.TenMH = N'Cau Truc Du Lieu 1'
	AND KQ.DiemThi < 5
	AND KQ.LanThi > 1
)	

-- 5.with each class belonging to IT faculty, indicate class ID, course ID, 
--	 program name and the number of students in this class
SELECT L.MaLop, l.MaKhoa, COUNT(*) AS [So Luong]
FROM dbo.Lop AS L
LEFT JOIN dbo.SinhVien AS SV ON SV.MaLop = L.MaLop
WHERE L.MaKhoa='CNTT'
GROUP BY L.MaLop, l.MaKhoa

-- 6.indicate the GPA of student has ID 0212003
SELECT AVG(KQ.DiemThi) AS [GPA] 
FROM dbo.KetQua AS KQ
RIGHT JOIN
(
	SELECT MaMH, MAX(LanThi) AS [So Lan Thi]
	FROM dbo.KetQua
	WHERE MaSV='0212003'
	GROUP BY MaMH
) FilteredKetQua 
ON FilteredKetQua.MaMH = KQ.MaMH AND FilteredKetQua.[So Lan Thi]=KQ.LanThi
WHERE KQ.MaSV='0212003'