USE [Perfectly Polished]
GO

SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE AddOrUpdateEmployee
@FirstName VARCHAR(50), @LastName VARCHAR(50), @JobTitle VARCHAR(50), @EmailAddress VARCHAR(50), @Phone VARCHAR(50), @HireDate VARCHAR(50)

AS 
/******************************************************************************
* Description: Add Employee to Employee Table
*			   	
*			
* Procedure Test: 
	
	EXEC 

	SELECT * FROM dbo.Employee

* Change History:
* -----------------------------------------------------------------------------
* Date			|Author				|Reason
* -----------------------------------------------------------------------------
* 07/25/2024	Latacha Gibson		Add Employee
*******************************************************************************/
BEGIN

	SET NOCOUNT ON;

			INSERT INTO dbo.Employee(FirstName, LastName, JobTitle, EmailAddress, Phone, HireDate) 
			VALUES (@FirstName, @LastName,@JobTitle, @EmailAddress, @Phone, @HireDate)
			SELECT 'SUCCESS' AS Message

End
