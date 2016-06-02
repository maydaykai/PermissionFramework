CREATE TABLE [dbo].[SYS_LOG] (
    [ID]         INT             IDENTITY (1, 1) NOT NULL,
    [DATES]      DATETIME        NULL,
    [LEVELS]     NVARCHAR (20)   NULL,
    [LOGGER]     NVARCHAR (200)  NULL,
    [CLIENTUSER] NVARCHAR (100)  NULL,
    [CLIENTIP]   NVARCHAR (20)   NULL,
    [REQUESTURL] NVARCHAR (500)  NULL,
    [ACTION]     NVARCHAR (20)   NULL,
    [MESSAGE]    NVARCHAR (4000) NULL,
    [EXCEPTION]  NVARCHAR (4000) NULL,
    CONSTRAINT [PK_SYS_LOG] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'DATES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'日志等级', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'LEVELS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'日志调用', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'LOGGER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'使用用户', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'CLIENTUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'访问IP', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'CLIENTIP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'访问来源', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'REQUESTURL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'操作动作', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'ACTION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'消息', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'MESSAGE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'异常消息', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_LOG', @level2type = N'COLUMN', @level2name = N'EXCEPTION';

