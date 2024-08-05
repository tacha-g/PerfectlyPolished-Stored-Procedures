USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE reviewsoftheproducts
@ProductName varchar(50)--, @Review varchar(100), @Rating smallint
AS
/******************************************************************************
* Description: Showing Product Review by Whom
*			   	
*			
* Procedure Test: 
	
	EXEC Reviewsofproducts 'Base Coat'

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/24/2024	Latacha Gibson		Review Products
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT p.ProductName
	     , pr.Review
		 , pr.Rating
	FROM dbo.ProductReview AS pr
	JOIN dbo.CustomerSaleDetail AS csd
	ON pr.CustomerSaleDetailID = csd.CustomerSaleDetailID
	JOIN dbo.Product AS p
	ON csd.ProductID = p.ProductID
	WHERE p.ProductName = @ProductName

	

END;