USE [ALMS]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_VOU_NO]    Script Date: 2018/7/29 下午 11:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER FUNCTION [dbo].[Get_VOU_NO](@Date varchar(8))
RETURNS nvarchar(20)
AS
BEGIN
  DECLARE @OrderID nvarchar(20)
  DECLARE @DT nvarchar(20)
  DECLARE @DateTime datetime = convert(datetime,@Date,111)
  DECLARE @max nvarchar(20) = 0

  SELECT @DT = CAST((CAST(DATEPART(YEAR,@DateTime) AS NUMERIC(4))-1911) AS VARCHAR(3)) + REPLACE(STR(datepart(mm, @DateTime), 2, 0), ' ', '0')--10706


  select @max = max(VOU_NO) from TR01A where left(VOU_NO,5) = @DT

  SELECT @OrderID= @DT + right('00' + ltrim(isnull(max(cast(right(ISNULL(@max,@DT + '000'), 3) as int)),0)+1), 3) 


  RETURN @OrderID
END