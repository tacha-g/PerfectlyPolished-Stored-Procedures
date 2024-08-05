USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE SellingToCustomer
--@CustomerID INT --@FirstName VARCHAR(50), @LastName VARCHAR(50)
AS
/******************************************************************************
* Description: Showing Customer Buying Products
*			   	
*			
* Procedure Test: 
	
	EXEC Selling to Customer

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/24/2024	Latacha Gibson		Customer Sales
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
	--INSERT INTO dbo.Customer(CustomerID)
	--VALUES(@CustomerID)
	SELECT c.FirstName + ' ' + c.LastName AS CustomerName
	FROM dbo.Customer AS c

END;
