USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE discountsales
AS
/******************************************************************************
* Description: Showing Discounts
*			   	
*			
* Procedure Test: 
	
	EXEC Discount for Products

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/22/2024	Latacha Gibson		Discounted Products
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT p.ProductName
	     , csd.Discount
	     , csd.Price
	FROM dbo.CustomerSaleDetail AS csd
	JOIN dbo.Product AS p
	ON csd.ProductID = p.ProductID

END;