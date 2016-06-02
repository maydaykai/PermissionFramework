CREATE TABLE [dbo].[SYS_ROLE] (
    [ID]          INT             IDENTITY (1, 1) NOT NULL,
    [ROLENAME]    NVARCHAR (50)   NULL,
    [ISCUSTOM]    INT             NOT NULL,
    [ROLEDESC]    NVARCHAR (1000) NULL,
    [CREATEPERID] NVARCHAR (36)   NOT NULL,
    [CREATEDATE]  DATETIME        NOT NULL,
    [UPDATEDATE]  DATETIME        NOT NULL,
    [UPDATEUSER]  NVARCHAR (36)   NULL,
    CONSTRAINT [PK_SYS_ROLE] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'ROLENAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否自定义（0否1是）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'ISCUSTOM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'角色说明', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'ROLEDESC';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者ID（关联SYS_USER的ID）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'CREATEPERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_ROLE', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';

