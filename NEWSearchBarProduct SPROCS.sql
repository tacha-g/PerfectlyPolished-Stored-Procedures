USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE ProductNamesforSearch
AS
/******************************************************************************
* Description: Showing Products for Searching
*			   	
*			
* Procedure Test: 
	
	EXEC Pulling Product Name

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 08/01/2024	Latacha Gibson		Product Name
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT DISTINCT p.ProductName
	FROM dbo.Product AS p


END;