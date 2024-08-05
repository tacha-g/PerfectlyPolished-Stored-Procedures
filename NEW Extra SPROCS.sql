USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE listofextra

AS
/******************************************************************************
* Description: Extra from Products
*			   	
*			
* Procedure Test: 
	
	EXEC All Extras

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/17/2024	Latacha Gibson		Initial Release
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT p.ProductName
		 , p.Description
		 , p.Cost
	FROM dbo.Product AS p
	JOIN dbo.ProductCategory AS pc
	ON p.ProductID = pc.ProductID
	WHERE pc.Type = 'Extra'
	


END;