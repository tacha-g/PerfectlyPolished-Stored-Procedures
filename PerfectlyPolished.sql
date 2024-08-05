SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE or ALTER PROCEDURE dbo.ReviewofProduct 

AS
/*****************************************************************
* Description: bring back Products Review for Customers. 
*
*
* Produre Test:

   EXEC dbo.ReviewofProduct 

*Change History:
* -----------------------------------------------------------------------
* Date                    |Author                   |Reason
* -----------------------------------------------------------------------
*07/3/2024               Latacha Crumer         Create Reviews for Product
*************************************************************************/

BEGIN

  SET NOCOUNT ON;

   --Do Stuff
   SELECT c.FirstName
         ,c.LastName
		 ,p.ProductName
		 ,pr.Rating
   FROM dbo.ProductReview AS pr
   JOIN dbo.Product AS p
   ON pr.ProductID = p.ProductID
   JOIN dbo.CustomerSaleDetail AS csd
   ON csd.ProductID = p.ProductID
   JOIN dbo.CustomerSale AS cs
   ON cs.CustomerSaleID = csd.CustomerSaleID
   JOIN dbo.Customer AS c
   ON c.CustomerID = cs.CustomerID
  END;