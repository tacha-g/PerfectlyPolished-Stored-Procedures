USE [Perfectly Polished]

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE SellingToCustomerGraph
@CustomerSaleID INT, @CustomerID INT, @EmployeeID INT, @SaleDate DATETIME, @CustomerSaleDetailID INT, @ProductID INT, @Discount INT = NULL, @Price DECIMAL
AS
/******************************************************************************
* Description: Showing Customer and Employee Sale
*			   	
*		,
* Procedure Test: 
	
	

* Change History:
* -----------------------------------------------------------------------------
* Date			 |Author				|Reason
* -----------------------------------------------------------------------------
* 08/04/2024	 Latacha Gibson		Customer and Employee Sales
*******************************************************************************/
BEGIN

	SET NOCOUNT ON
	INSERT INTO dbo.CustomerSale(CustomerSaleID, CustomerID, EmployeeID, SaleDate)
	VALUES(@CustomerSaleID, @CustomerID, @EmployeeID, @SaleDate)

	INSERT  INTO dbo.CustomerSaleDetail(CustomerSaleDetailID, ProductID, CustomerSaleID, Discount, Price)
	VALUES(@CustomerSaleDetailID, @ProductID, @CustomerSaleID, @Discount, @Price)
	
	
	
	--SELECT c.FirstName + ' ' + c.LastName AS CustomerName
	--     , e.FirstName+ ' ' + e.LastName AS EmployeeName
	--	 , p.ProductName
	--FROM dbo.CustomerSale AS cs
	--JOIN dbo.Employee AS e
	--ON cs.EmployeeID = e.EmployeeID
	--JOIN dbo.Customer AS c
	--ON cs.CustomerID = c.CustomerID
	--JOIN dbo.CustomerSaleDetail AS csd
	--ON cs.CustomerSaleID = csd.CustomerSaleID
	--JOIN dbo.Product AS p
	--ON csd.ProductID = p.ProductID

END;