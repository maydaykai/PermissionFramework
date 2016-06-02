CREATE TABLE [dbo].[SYS_USER_DEPARTMENT] (
    [ID]            INT           IDENTITY (1, 1) NOT NULL,
    [USER_ID]       INT           NOT NULL,
    [DEPARTMENT_ID] NVARCHAR (36) NOT NULL,
    CONSTRAINT [PK_SYS_USER_DEPARTMENT] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_USER_DEPARTMENT_DPTID] FOREIGN KEY ([DEPARTMENT_ID]) REFERENCES [dbo].[SYS_DEPARTMENT] ([ID]),
    CONSTRAINT [FK_SYS_USER_DEPARTMENT_USERID] FOREIGN KEY ([USER_ID]) REFERENCES [dbo].[SYS_USER] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'USER_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'DEPARTMENT_ID';

