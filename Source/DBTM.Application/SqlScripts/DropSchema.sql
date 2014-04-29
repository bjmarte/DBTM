﻿USE [Master]
IF EXISTS (SELECT * FROM master.dbo.sysdatabases WHERE name = '[DATABASE_NAME]')
	BEGIN
			ALTER DATABASE [[DATABASE_NAME]]
			SET OFFLINE
			WITH ROLLBACK IMMEDIATE
			
			ALTER DATABASE [[DATABASE_NAME]]
			SET ONLINE
			WITH ROLLBACK IMMEDIATE
			
			DROP DATABASE [[DATABASE_NAME]]
	END