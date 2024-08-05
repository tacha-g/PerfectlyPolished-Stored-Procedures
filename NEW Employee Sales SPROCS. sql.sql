USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE dicountsales
AS
/******************************************************************************
* Description: Showing Discount Sales
*			   	
*			
* Procedure Test: 
	EXEC Pulling Up Discounts Sale

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/23/2024	Latacha Gibson		Discount Sales
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT csd.Discount
	     , csd.Price
		 , p.ProductName
	FROM dbo.CustomerSaleDetail AS csd
	JOIN dbo.Product AS p
	ON csd.ProductID = p.ProductID

END;