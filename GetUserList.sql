USE [db_a9e9e8_studentmanagement]
GO

/****** Object:  StoredProcedure [dbo].[GetUserList]    Script Date: 27-10-2023 17:12:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Ahsan Kazmi
-- Create date: 9/21/2023
-- Description:	Get list of users
-- =============================================
CREATE PROCEDURE [dbo].[GetUserList]
AS
BEGIN
	Select u.UserId,u.UserName,u.FirstName,u.MiddleName,u.LastName,u.IsApproved,u.IsActive,u.CreateDate,	u.CreatedBy,
	u.UpdateDate,	u.UpdatedBy,r.RoleName,r.RoleId
	from [User] u join [UserRole] ur on u.UserId = ur.UserId
	join [Role] r on ur.RoleId = r.RoleId
END
GO


