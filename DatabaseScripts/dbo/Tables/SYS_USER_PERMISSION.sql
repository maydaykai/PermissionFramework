CREATE TABLE [dbo].[SYS_USER_PERMISSION] (
    [ID]              INT IDENTITY (1, 1) NOT NULL,
    [FK_USERID]       INT NOT NULL,
    [FK_PERMISSIONID] INT NOT NULL,
    CONSTRAINT [PK_SYS_USER_PERMISSION] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_USER_PERMISSION_PERID] FOREIGN KEY ([FK_PERMISSIONID]) REFERENCES [dbo].[SYS_PERMISSION] ([ID]),
    CONSTRAINT [FK_SYS_USER_PERMISSION_USERID] FOREIGN KEY ([FK_USERID]) REFERENCES [dbo].[SYS_USER] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_PERMISSION', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_PERMISSION', @level2type = N'COLUMN', @level2name = N'FK_USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'授权ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_PERMISSION', @level2type = N'COLUMN', @level2name = N'FK_PERMISSIONID';

