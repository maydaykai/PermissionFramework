CREATE TABLE [dbo].[SYS_POST_DEPARTMENT] (
    [ID]               INT           IDENTITY (1, 1) NOT NULL,
    [FK_DEPARTMENT_ID] NVARCHAR (36) NOT NULL,
    [FK_POST_ID]       NVARCHAR (36) NOT NULL,
    CONSTRAINT [PK_SYS_POST_DEPARTMENT] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_POST_DEPARTMENT_DPTID] FOREIGN KEY ([FK_DEPARTMENT_ID]) REFERENCES [dbo].[SYS_DEPARTMENT] ([ID]),
    CONSTRAINT [FK_SYS_POST_DEPARTMENT_POSTID] FOREIGN KEY ([FK_POST_ID]) REFERENCES [dbo].[SYS_POST] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'FK_DEPARTMENT_ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'岗位ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST_DEPARTMENT', @level2type = N'COLUMN', @level2name = N'FK_POST_ID';

