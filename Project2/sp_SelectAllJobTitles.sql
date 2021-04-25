-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jordan Mah
-- Create date: 2021-03-08
-- Description:	Job Title
-- =============================================
CREATE PROCEDURE sp_SelectAllJobTitles 
@JobTitle NVARCHAR (50) 
AS
SELECT * FROM Employee WHERE JobTitle = @JobTitle  