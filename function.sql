-- 1. check if a student with code @ID belongs to @faculty
CREATE FUNCTION checkStudentBelongToFaculty (
	@ID VARCHAR(10),
	@faculty NVARCHAR(100)
)
RETURNS BIT AS 
BEGIN
	IF(EXISTS(
		SELECT *
		FROM dbo.SinhVien AS SV
		LEFT JOIN dbo.Lop AS L ON L.MaLop = SV.MaLop
		LEFT JOIN dbo.Khoa AS K ON K.MaKhoa = L.MaKhoa 
		WHERE SV.MaSV = @ID
		AND LOWER(K.TenKhoa) = LOWER(@faculty)
	))
		RETURN 1;
	RETURN 0;
END;

SELECT dbo.checkStudentBelongToFaculty('0212001', N'Công nghệ thông tin');

-- 2. calculate the score of a student with code @ID in a specific subject
CREATE FUNCTION findSubjectID(
	@subject NVARCHAR(100)
)
RETURNS VARCHAR(10) AS 
BEGIN
	RETURN(
		SELECT MonHoc.MaMH
		FROM dbo.MonHoc 
		WHERE LOWER(MonHoc.TenMH) = LOWER(@subject)
	)
END;

CREATE FUNCTION calculateScoreOfSubject(
	@ID VARCHAR(10),
	@subject NVARCHAR(100)
)
RETURNS FLOAT AS
BEGIN
	-- find ID of subject
	DECLARE @subjectID VARCHAR(10);
	SET @subjectID = dbo.findSubjectID(@subject);
	
	-- filter KetQua table
	RETURN (
		SELECT KQ.DiemThi
		FROM KetQua AS KQ
		RIGHT JOIN (
			SELECT KQ.MaSV, KQ.MaMH, COUNT(*) AS [so]
			FROM KetQua AS KQ
			GROUP BY KQ.MaSV, KQ.MaMH
		) FilteredKetQua 
		ON KQ.MaSV = FilteredKetQua.MaSV
		AND KQ.MaMH = FilteredKetQua.MaMH 
		AND KQ.LanThi = FilteredKetQua.[so] 
		WHERE KQ.MaSV = @ID
		AND KQ.MaMH = @subjectID)
END;

-- 3. calculate the GPA of a student
CREATE FUNCTION calculateGPA(
	@ID VARCHAR(10)
)
RETURNS FLOAT AS
BEGIN
	RETURN (
		SELECT AVG(KQ.DiemThi)
		FROM KetQua AS KQ
		RIGHT JOIN (
			SELECT KQ.MaSV, KQ.MaMH, COUNT(*) AS [so]
			FROM KetQua AS KQ
			GROUP BY KQ.MaSV, KQ.MaMH
		) FilteredKetQua 
		ON KQ.MaSV = FilteredKetQua.MaSV
		AND KQ.MaMH = FilteredKetQua.MaMH 
		AND KQ.LanThi = FilteredKetQua.[so] 
		WHERE KQ.MaSV = @ID)
END;

-- 4. find the list of subjects which a student with code @ID must enroll
CREATE FUNCTION subjectsMustEnroll(
	@ID VARCHAR(10)
)
RETURNS TABLE  
RETURN (
	SELECT MH.MaMH
	FROM MonHoc AS MH
	WHERE MH.MaMH NOT IN (
		SELECT KQ.MaMH
		FROM KetQua AS KQ
		RIGHT JOIN (
			SELECT KQ.MaSV, KQ.MaMH, COUNT(*) AS [so]
			FROM KetQua AS KQ
			GROUP BY KQ.MaSV, KQ.MaMH
		) FilteredKetQua 
		ON KQ.MaSV = FilteredKetQua.MaSV
		AND KQ.MaMH = FilteredKetQua.MaMH 
		AND KQ.LanThi = FilteredKetQua.[so] 
		WHERE KQ.MaSV = @ID
	)
)