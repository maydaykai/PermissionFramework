CREATE TABLE [dbo].[SYS_CODE_AREA] (
    [ID]     VARCHAR (50)   NOT NULL,
    [PID]    VARCHAR (50)   NOT NULL,
    [NAME]   NVARCHAR (200) NULL,
    [LEVELS] TINYINT        NOT NULL,
    CONSTRAINT [PK_SYS_CODE_AREA] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE_AREA', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'上级ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE_AREA', @level2type = N'COLUMN', @level2name = N'PID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE_AREA', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'级别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE_AREA', @level2type = N'COLUMN', @level2name = N'LEVELS';

