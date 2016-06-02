CREATE TABLE [dbo].[SYS_USERINFO] (
    [ID]               INT            NOT NULL,
    [USERID]           INT            NOT NULL,
    [POSTCODE]         INT            NULL,
    [PHONE]            NVARCHAR (200) NULL,
    [OFFICEPHONE]      NVARCHAR (200) NULL,
    [EMAILADDRESS]     NVARCHAR (200) NULL,
    [SECONDPHONE]      NVARCHAR (200) NULL,
    [WORKCODE]         INT            NULL,
    [SEXCODE]          INT            NULL,
    [BIRTHDAY]         DATETIME       NULL,
    [NATIONCODE]       INT            NULL,
    [IDNUMBER]         NVARCHAR (18)  NULL,
    [MARRYCODE]        INT            NULL,
    [IDENTITYCODE]     INT            NULL,
    [HomeTown]         NVARCHAR (200) NULL,
    [ACCOUNTLOCATION]  NVARCHAR (200) NULL,
    [XUELI]            INT            NULL,
    [ZHICHENG]         INT            NULL,
    [GRADUATIONSCHOOL] NVARCHAR (200) NULL,
    [SPECIALTY]        NVARCHAR (200) NULL,
    [PHOTOOLDNAME]     NVARCHAR (200) NULL,
    [PHOTONEWNAME]     NVARCHAR (200) NULL,
    [PHOTOTYPE]        NVARCHAR (200) NULL,
    [RESUMEOLDNAME]    NVARCHAR (200) NULL,
    [RESUMENEWNAME]    NVARCHAR (200) NULL,
    [RESUMETYPE]       NVARCHAR (200) NULL,
    [HuJiSuoZaiDi]     NVARCHAR (200) NULL,
    [HUJIPAICHUSUO]    NVARCHAR (200) NULL,
    [WORKDATE]         DATETIME       NULL,
    [JINRUDATE]        DATETIME       NULL,
    [CARNUMBER]        NVARCHAR (200) NULL,
    [QQ]               NVARCHAR (15)  NULL,
    [WEBCHATOPENID]    NVARCHAR (200) NULL,
    [CREATEDATE]       DATETIME       NULL,
    [CREATEUSER]       NVARCHAR (36)  NULL,
    [UPDATEDATE]       DATETIME       NULL,
    [UPDATEUSER]       NVARCHAR (36)  NULL,
    CONSTRAINT [PK_SYS_USERINFO] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_SYS_USERINFO_SYSUSERID] FOREIGN KEY ([USERID]) REFERENCES [dbo].[SYS_USER] ([ID])
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'主键ID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID，外键', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'USERID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职务，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'POSTCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'PHONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'办公电话', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'OFFICEPHONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Email', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'EMAILADDRESS';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'第二手机号码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'SECONDPHONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'在岗状态，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'WORKCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'性别，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'SEXCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'出生日期', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'BIRTHDAY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'民族，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'NATIONCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'身份证号码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'IDNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'婚姻状况，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'MARRYCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'政治面貌，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'IDENTITYCODE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'籍贯，编码（关联至TBCode_Area的CodeValue）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'HomeTown';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'户籍所在地', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'ACCOUNTLOCATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'学历，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'XUELI';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'职称，编码', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'ZHICHENG';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'毕业院校', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'GRADUATIONSCHOOL';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'专业', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'SPECIALTY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'照片原文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'PHOTOOLDNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'照片新文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'PHOTONEWNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'照片格式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'PHOTOTYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'简历原文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'RESUMEOLDNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'简历新文件名', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'RESUMENEWNAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'简历格式', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'RESUMETYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'户籍所在地，编码（关联至TBCode_Area的CodeValue）', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'HuJiSuoZaiDi';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'户籍所在派出所', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'HUJIPAICHUSUO';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'工作时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'WORKDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'加入公司时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'JINRUDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'车牌号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'CARNUMBER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'QQ号', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'QQ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'微信公众账号对应的OpenID', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'WEBCHATOPENID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'CREATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'创建者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'CREATEUSER';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改时间', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'UPDATEDATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'修改者', @level0type = N'SCHEMA', @level0name = N'dbo', @level1type = N'TABLE', @level1name = N'SYS_USERINFO', @level2type = N'COLUMN', @level2name = N'UPDATEUSER';

