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

-- =============================================
-- Author:		<Jenafae ,Holley>
-- Create date: <11/5/24>
-- Description:	<remove consrants >
-- =============================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

If EXISTS
(
SELECT fk.*
FROM sys.foreign_keys AS fk
WHERE fk.name = 'FK_h_bak_employees1_h_bak_employees1'
AND parent_object_id = OBJECT_ID(N'bv.h_bak_employees1')
)

BEGIN 
	ALTER TABLE bv.h_bak_employees1 DROP CONSTRAINT FK_h_bak_employees1_h_bak_employees1;

END;

