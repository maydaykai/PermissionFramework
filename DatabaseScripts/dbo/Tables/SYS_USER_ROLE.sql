CREATE TABLE [dbo].[SYS_USER_ROLE] (
    [ID]        INT IDENTITY (1, 1) NOT NULL,
    [FK_USERID] INT NOT NULL,
    [FK_ROLEID] INT NOT NULL,
    CONSTRAINT [PK_SYS_USER_ROLE] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_USER_ROLE_ROLEID] FOREIGN KEY ([FK_ROLEID]) REFERENCES [dbo].[SYS_ROLE] ([ID]),
    CONSTRAINT [FK_SYS_USER_ROLE_USERID] FOREIGN KEY ([FK_USERID]) REFERENCES [dbo].[SYS_USER] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_ROLE', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_ROLE', @level2type = N'COLUMN', @level2name = N'FK_USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_ROLE', @level2type = N'COLUMN', @level2name = N'FK_ROLEID';

