CREATE TABLE [dbo].[SYS_DEPARTMENT] (
    [ID]            NVARCHAR (36)  NOT NULL,
    [CODE]          NVARCHAR (100) NULL,
    [NAME]          NVARCHAR (200) NULL,
    [BUSINESSLEVEL] INT            NULL,
    [SHOWORDER]     INT            NULL,
    [CREATEPERID]   NVARCHAR (36)  NULL,
    [CREATEDATE]    DATE           NULL,
    [PARENTID]      NVARCHAR (36)  NULL,
    [UPDATEDATE]    DATE           NULL,
    [UPDATEUSER]    NVARCHAR (36)  NULL,
    [PARENTCODE]    NVARCHAR (100) NULL,
    CONSTRAINT [PK_SYS_DEPARTMENT] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门编号，横向增长', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'CODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'业务等级', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'BUSINESSLEVEL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'SHOWORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者编号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'CREATEPERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'上级部门ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'PARENTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改人', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';

