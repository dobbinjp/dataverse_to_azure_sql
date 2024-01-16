SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [etl].[ControlTable_Ingest_dataverse](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SourceExtractMethod] [varchar](50) NULL,
	[SourceEntity] [varchar](50) NULL,
	[DeltaWatermarkColumnName] [varchar](50) NULL,
	[DeltaLastWatermarkDateTimeUTC] [datetime2](7) NULL,
	[TargetType] [varchar](50) NULL,
	[TargetServer] [varchar](50) NULL,
	[TargetDatabase] [varchar](50) NULL,
	[TargetSchema] [varchar](50) NULL,
	[TargetTable] [varchar](50) NULL,
	[TargetKeyColumn] [varchar](50) NULL,
	[PreCopyScript] [varchar](200) NULL,
	[PreCopyScript_Deletes] [varchar](200) NULL, --can drop the table to store deletes before the copy runs (leaves last run in the deletes table)
	[DeleteStatement] [varchar](200) NULL, --delete statement to delete only records that have been deleted in the source
	[IsActiveFlag] [bit] NULL,
	[PipelineLastRunDateTimeUTC] [datetime2](7) NULL,
	[LastRunStatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
