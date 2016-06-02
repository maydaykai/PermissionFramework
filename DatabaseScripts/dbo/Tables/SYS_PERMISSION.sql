CREATE TABLE [dbo].[SYS_PERMISSION] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [MODULEID]   INT            NOT NULL,
    [NAME]       NVARCHAR (36)  NULL,
    [PERVALUE]   NVARCHAR (100) NULL,
    [ICON]       NVARCHAR (50)  NULL,
    [SHOWORDER]  INT            NULL,
    [CREATEDATE] DATE           NULL,
    [CREATEUSER] NVARCHAR (36)  NULL,
    [UPDATEDATE] DATE           NULL,
    [UPDATEUSER] NVARCHAR (36)  NULL,
    CONSTRAINT [PK_SYS_PERMISSION] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_PERMISSION_MODULEID] FOREIGN KEY ([MODULEID]) REFERENCES [dbo].[SYS_MODULE] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模块ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'MODULEID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'授权名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'权限值（对应SYS_CODE表）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'PERVALUE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'图标ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'ICON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'显示排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'SHOWORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'CREATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_PERMISSION', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';

