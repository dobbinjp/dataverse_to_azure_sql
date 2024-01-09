SET IDENTITY_INSERT [etl].[ControlTable_Ingest_dataverse] ON 
GO
INSERT [etl].[ControlTable_Ingest_dataverse] ([id], [SourceExtractMethod], [SourceEntity], [DeltaWatermarkColumnName], [DeltaLastWatermarkDateTimeUTC], [TargetType], [TargetServer], [TargetDatabase], [TargetSchema], [TargetTable], [TargetKeyColumn], [PreCopyScript], [IsActiveFlag], [PipelineLastRunDateTimeUTC], [LastRunStatus]) VALUES (1, N'FULL', N'account', NULL, CAST(N'2024-01-05T16:38:08.0000000' AS DateTime2), N'Azure SQL', N'jdobbins-sql.database.windows.net', N'dobbinsdb', N'dbo', N'account_full', NULL, N'drop table if exists dbo.account_full', 1, CAST(N'2024-01-05T16:38:05.9300000' AS DateTime2), N'Success')
GO
INSERT [etl].[ControlTable_Ingest_dataverse] ([id], [SourceExtractMethod], [SourceEntity], [DeltaWatermarkColumnName], [DeltaLastWatermarkDateTimeUTC], [TargetType], [TargetServer], [TargetDatabase], [TargetSchema], [TargetTable], [TargetKeyColumn], [PreCopyScript], [IsActiveFlag], [PipelineLastRunDateTimeUTC], [LastRunStatus]) VALUES (2, N'DELTA', N'account', N'modifiedon', CAST(N'2024-01-05T16:38:08.0000000' AS DateTime2), N'Azure SQL', N'jdobbins-sql.database.windows.net', N'dobbinsdb', N'dbo', N'account_delta', N'accountid', NULL, 1, CAST(N'2024-01-05T16:38:05.9300000' AS DateTime2), N'Success')
GO
INSERT [etl].[ControlTable_Ingest_dataverse] ([id], [SourceExtractMethod], [SourceEntity], [DeltaWatermarkColumnName], [DeltaLastWatermarkDateTimeUTC], [TargetType], [TargetServer], [TargetDatabase], [TargetSchema], [TargetTable], [TargetKeyColumn], [PreCopyScript], [IsActiveFlag], [PipelineLastRunDateTimeUTC], [LastRunStatus]) VALUES (3, N'FULL', N'account', NULL, NULL, N'Azure SQL', N'jdobbins-sql.database.windows.net', N'dobbinsdb', N'dbo', N'account_delta', NULL, NULL, 0, NULL, NULL)
GO
SET IDENTITY_INSERT [etl].[ControlTable_Ingest_dataverse] OFF
GO
