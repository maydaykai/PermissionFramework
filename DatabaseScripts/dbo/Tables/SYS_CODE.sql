CREATE TABLE [dbo].[SYS_CODE] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [CODETYPE]   NVARCHAR (50)   NULL,
    [NAMETEXT]   NVARCHAR (200)  NULL,
    [CODEVALUE]  NVARCHAR (100)  NULL,
    [SHOWORDER]  INT             NULL,
    [ISCODE]     INT             NULL,
    [REMARK]     NVARCHAR (2000) NULL,
    [CREATEDATE] DATETIME        NULL,
    [CREATEUSER] NVARCHAR (36)   NULL,
    [UPDATEDATE] DATETIME        NULL,
    [UPDATEUSER] NVARCHAR (36)   NULL,
    [PARENTID]   INT             NULL,
    CONSTRAINT [PK_SYS_CODE] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'代码类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'CODETYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'代码显示文本', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'NAMETEXT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'代码值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'CODEVALUE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'排序值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'SHOWORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否为编码（0否1是）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'ISCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'REMARK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'CREATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'父级ID（使用时注意ISCODE为0）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_CODE', @level2type = N'COLUMN', @level2name = N'PARENTID';

