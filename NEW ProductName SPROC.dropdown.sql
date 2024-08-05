USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE ProductNames
AS
/******************************************************************************
* Description: Showing Products
*			   	
*			
* Procedure Test: 
	
	EXEC Puliing Product Name

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/24/2024	Latacha Gibson		Product Name
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT DISTINCT p.ProductName
	FROM dbo.Product AS p


END;