USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE PickingEmployeeSales
--@EmployeeID INT --@FirstName VARCHAR(50), @LastName VARCHAR(50)
AS
/******************************************************************************
* Description: Showing Employee Sales
*			   	
*			
* Procedure Test: 
	
	EXEC Making Sales for Employee

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/24/2024	Latacha Gibson		Employee Name Sales
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;
--	INSERT dbo.Employee(EmployeeID)
	-- VALUES(@EmployeeID)
    SELECT e.FirstName + ' ' + e.LastName AS EmployeeName
	FROM dbo.Employee AS e
	WHERE e.JobTitle = 'Sales Representative'

END;