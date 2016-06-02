CREATE TABLE [dbo].[SYS_SYSTEM] (
    [ID]         NVARCHAR (36)   NOT NULL,
    [NAME]       NVARCHAR (200)  NULL,
    [SITEURL]    NVARCHAR (500)  NULL,
    [IS_LOGIN]   TINYINT         NULL,
    [DOCKUSER]   NVARCHAR (100)  NULL,
    [DOCKPASS]   NVARCHAR (200)  NULL,
    [CREATEDATE] DATE            NULL,
    [REMARK]     NVARCHAR (2000) NULL,
    CONSTRAINT [PK_SYS_SYSTEM] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'系统名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'系统地址', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'SITEURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否允许登录系统（0否1是）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'IS_LOGIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'系统对接用户名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'DOCKUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'系统对接密码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'DOCKPASS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'系统创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_SYSTEM', @level2type = N'COLUMN', @level2name = N'REMARK';

