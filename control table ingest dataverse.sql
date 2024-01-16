SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [etl].[ControlTable_Ingest_dataverse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SourceExtractMethod] [varchar](50) NULL, --either FULL or DELTA
	[SourceEntity] [varchar](50) NULL, --name of source entity (e.g., account)
	[DeltaWatermarkColumnName] [varchar](50) NULL, --which column in source contains watermark data (e.g., modifiedon)
	[DeltaLastWatermarkDateTimeUTC] [datetime2](7) NULL, --UTC time when data was last extracted
	[TargetType] [varchar](50) NULL, --Azure SQL (could also be another type of database)
	[TargetServer] [varchar](50) NULL, 
	[TargetDatabase] [varchar](50) NULL,
	[TargetSchema] [varchar](50) NULL,
	[TargetTable] [varchar](50) NULL,
	[TargetKeyColumn] [varchar](50) NULL, --what is the target key column (used for merge/upsert)
	[PreCopyScript] [varchar](200) NULL, --prior to copy script...this can be a drop if exists or truncate table
	[PreCopyScript_Deletes] [varchar](200) NULL, --can drop the table to store deletes before the copy runs (leaves last run in the deletes table)
	[DeleteStatement] [varchar](200) NULL, --delete statement to delete only records that have been deleted in the source
	[IsActiveFlag] [bit] NULL, --1 or 0 indicating if the table config is active
	[PipelineLastRunDateTimeUTC] [datetime2](7) NULL, --UTC of last run
	[LastRunStatus] [varchar](50) NULL, --status (success or failure) of last pipeline run
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
