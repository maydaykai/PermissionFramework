CREATE TABLE [dbo].[SYS_POST] (
    [ID]           NVARCHAR (36)  NOT NULL,
    [POSTNAME]     NVARCHAR (100) NULL,
    [POSTTYPE]     NVARCHAR (36)  NOT NULL,
    [REMARK]       NVARCHAR (500) NULL,
    [SHOWORDER]    INT            NULL,
    [CREATEUSERID] INT            NULL,
    [CREATEDATE]   DATETIME       NOT NULL,
    [UPDATEDATE]   DATETIME       NULL,
    [UPDATEUSER]   NVARCHAR (36)  NULL,
    CONSTRAINT [PK_SYS_POST] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'岗位名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'POSTNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'岗位类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'POSTTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'岗位备注', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'REMARK';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'SHOWORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'CREATEUSERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_POST', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';

