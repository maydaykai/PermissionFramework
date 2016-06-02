CREATE TABLE [dbo].[SYS_POST_USER] (
    [ID]                   INT IDENTITY (1, 1) NOT NULL,
    [FK_USERID]            INT NOT NULL,
    [FK_POST_DEPARTMENTID] INT NOT NULL,
    CONSTRAINT [PK_SYS_POST_USER] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_POST_USER_POSTDPTID] FOREIGN KEY ([FK_POST_DEPARTMENTID]) REFERENCES [dbo].[SYS_POST_DEPARTMENT] ([ID]),
    CONSTRAINT [FK_SYS_POST_USER_USERID] FOREIGN KEY ([FK_USERID]) REFERENCES [dbo].[SYS_USER] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_USER', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_USER', @level2type = N'COLUMN', @level2name = N'FK_USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'岗位部门ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_USER', @level2type = N'COLUMN', @level2name = N'FK_POST_DEPARTMENTID';

