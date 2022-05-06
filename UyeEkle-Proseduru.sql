
--UyeEkle Proseduru--
CREATE PROCEDURE spuyeekleme(@Kadi nvarchar(50),@sifre nvarchar(50), @tel nvarchar(50),@eposta nvarchar(50))
AS
BEGIN
INSERT INTO Tbl_Uyeler
VALUES(@Kadi,@sifre,@tel,@eposta)
END

