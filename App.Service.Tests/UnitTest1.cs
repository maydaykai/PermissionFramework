using System;
using App.Service.IService;
using App.Service.ServiceImp;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace App.Service.Tests
{
    [TestClass]
    public class UnitTest1
    {
        //[TestMethod]
        //public void TestMethod1()
        //{
        //    var IUserManage = new UserManage();
        //    var name = "管理员";
        //    var password = new Common.CryptHelper.AESCrypt().Encrypt("123456");
        //    var result = IUserManage.Add(new Domain.SYS_USER
        //    {
        //        NAME = name,
        //        ACCOUNT = "admin",
        //        PASSWORD = password,
        //        ISCANLOGIN = 0,
        //        SHOWORDER1 = 1,
        //        SHOWORDER2 = 1,
        //        PINYIN1 = Common.Utils.GetPinYin(name),
        //        PINYIN2 = Common.Utils.GetFirst(name),
        //        FACE_IMG = "",
        //        LEVELS = "",
        //        DPTID = "",
        //        CREATEPER = "",
        //        CREATEDATE = DateTime.Now,
        //        UPDATEUSER = "",
        //        UPDATEDATE = DateTime.Now,
        //        LastLoginIP = ""
        //    });
        //    Assert.Equals(result, true);
        //}

        [TestMethod]
        public void LoginTest()
        {
            var manage = new UserManage();
            var password = "123456";
            var result = manage.UserLogin("admin",password);
            Assert.AreEqual(result.ID, 1);
        }
    }
}
