USE [Perfectly Polished]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE OR ALTER PROCEDURE pullingemployeeinformation
AS
/******************************************************************************
* Description: Showing Employees Information
*			   	
*			
* Procedure Test: 
	
	EXEC Pulling Employee Information

* Change History:
* --------------------------------------------------------------------------------
* Date			|Author				|Reason
* --------------------------------------------------------------------------------
* 07/23/2024	Latacha Gibson		Employee Information
***********************************************************************************/
BEGIN

	SET NOCOUNT ON;
	
	SELECT e.FirstName + ' ' + e.LastName AS EmployeeName
	              , e.JobTitle
				  , e.EmailAddress
	              , e.HireDate
	FROM dbo.Employee AS e

END;