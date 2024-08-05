USE [Perfectly Polished]
GO

SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE SearchBar
@SearchStr VARCHAR(150) = NULL

AS
/******************************************************************************
* Description: Setting up Search Bar	
*			   	
*			
* Procedure Test: 
	
	EXEC SearchBar 'glitter'


* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 08/01/2024	Latacha Gibson		 Add a Search Bar for Products
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

			SELECT p.ProductName,
			       p.Description,
				   p.Cost
			FROM dbo.Product AS p
            WHERE p.Description LIKE '%' + @SearchStr + '%'
End
