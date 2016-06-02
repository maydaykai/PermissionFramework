CREATE TABLE [dbo].[SYS_ROLE_PERMISSION] (
    [ID]           INT IDENTITY (1, 1) NOT NULL,
    [ROLEID]       INT NOT NULL,
    [PERMISSIONID] INT NOT NULL,
    CONSTRAINT [PK_SYS_ROLE_PERMISSION] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_ROLE_PERMISSION_PERID] FOREIGN KEY ([PERMISSIONID]) REFERENCES [dbo].[SYS_PERMISSION] ([ID]),
    CONSTRAINT [FK_SYS_ROLE_PERMISSION_ROLEID] FOREIGN KEY ([ROLEID]) REFERENCES [dbo].[SYS_ROLE] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE_PERMISSION', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE_PERMISSION', @level2type = N'COLUMN', @level2name = N'ROLEID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'授权ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE_PERMISSION', @level2type = N'COLUMN', @level2name = N'PERMISSIONID';

