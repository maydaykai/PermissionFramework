CREATE TABLE [dbo].[SYS_MODULE] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [FK_BELONGSYSTEM] NVARCHAR (36)  NOT NULL,
    [PARENTID]        INT            NOT NULL,
    [NAME]            NVARCHAR (50)  NULL,
    [ALIAS]           NVARCHAR (50)  NULL,
    [MODULETYPE]      INT            NOT NULL,
    [ICON]            NVARCHAR (200) NULL,
    [MODULEPATH]      NVARCHAR (500) NULL,
    [ISSHOW]          INT            NOT NULL,
    [SHOWORDER]       INT            NOT NULL,
    [LEVELS]          INT            NOT NULL,
    [IsVillage]       BIT            NOT NULL,
    [CREATEUSER]      NVARCHAR (50)  NULL,
    [CREATEDATE]      DATETIME       NULL,
    [UPDATEUSER]      NVARCHAR (36)  NULL,
    [UPDATEDATE]      DATETIME       NULL,
    CONSTRAINT [PK_SYS_MODULE] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_MODULE_SYSTEMID] FOREIGN KEY ([FK_BELONGSYSTEM]) REFERENCES [dbo].[SYS_SYSTEM] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'所属系统', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'FK_BELONGSYSTEM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'父ID，级联', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'PARENTID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'显示名称', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'别名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'ALIAS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'模块类型', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'MODULETYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'自定义图标', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'ICON';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'连接路径', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'MODULEPATH';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'是否展示（0否1是）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'ISSHOW';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'排序值', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'SHOWORDER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'级别', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'LEVELS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'CREATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_MODULE', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';

