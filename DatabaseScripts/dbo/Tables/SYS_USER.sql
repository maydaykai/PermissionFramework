CREATE TABLE [dbo].[SYS_USER] (
    [ID]          INT             IDENTITY (1, 1) NOT NULL,
    [NAME]        NVARCHAR (50)   NULL,
    [ACCOUNT]     NVARCHAR (20)   NULL,
    [PASSWORD]    NVARCHAR (1000) NULL,
    [ISCANLOGIN]  INT             NULL,
    [SHOWORDER1]  INT             NULL,
    [SHOWORDER2]  INT             NULL,
    [PINYIN1]     NVARCHAR (50)   NULL,
    [PINYIN2]     NVARCHAR (50)   NULL,
    [FACE_IMG]    NVARCHAR (200)  NULL,
    [LEVELS]      NVARCHAR (36)   NULL,
    [DPTID]       NVARCHAR (36)   NULL,
    [CREATEPER]   NVARCHAR (36)   NULL,
    [CREATEDATE]  DATETIME        NULL,
    [UPDATEUSER]  NVARCHAR (36)   NULL,
    [UPDATEDATE]  DATETIME        NULL,
    [LastLoginIP] NVARCHAR (50)   NULL,
    CONSTRAINT [PK_SYS_USER] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'真实姓名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户帐号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'ACCOUNT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户密码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'PASSWORD';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否锁定（0否1是）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'ISCANLOGIN';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'部门内的排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'SHOWORDER1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'公司内的排序', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'SHOWORDER2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'姓名全拼', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'PINYIN1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'姓名首字符', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'PINYIN2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户头像', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'FACE_IMG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'级别（对接SYS_CODE）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'LEVELS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主部门ID，用户所在的部门', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'DPTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'CREATEPER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'最后一次登录IP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USER', @level2type = N'COLUMN', @level2name = N'LastLoginIP';

