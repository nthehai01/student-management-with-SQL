-- find the faculty code
CREATE FUNCTION getFacultyCode(
	@faculty NVARCHAR(100)
)
RETURNS VARCHAR(10) AS
BEGIN 
	RETURN(
		SELECT Khoa.MaKhoa
		FROM dbo.Khoa
		WHERE dbo.Khoa.TenKhoa = @faculty
	)
END;

-- find the students belong to faculty @faculty
CREATE PROCEDURE findStudentsOfFaculty
	@faculty NVARCHAR(10)
AS
	DECLARE @facultyID VARCHAR(10)
	SET @facultyID = dbo.getFacultyCode(@facultyID)

	SELECT SinhVien.*
	FROM dbo.SinhVien 
	LEFT JOIN dbo.Lop ON Lop.MaLop = SinhVien.MaLop
	WHERE dbo.Lop.MaKhoa = @facultyID

-- execute the procedure
EXEC findStudentsOfFaculty @faculty = N'Công nghệ thông tin'