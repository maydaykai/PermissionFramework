﻿using App.Common;
using App.Service.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace App.WebUI.Areas.SysManage.Controllers
{
    public class AccountController : Controller
    {
        #region 声明容器
        /// <summary>
        /// 用户管理
        /// add by 2016-05-16
        /// </summary>
        IUserManage UserManage { get; set; }
        /// <summary>
        /// 日志记录
        /// </summary>
        log4net.Ext.IExtLog log = log4net.Ext.ExtLogManager.GetLogger("dblog");
        #endregion

        #region 基本视图
        public ActionResult Index()
        {
            return View();
        }
        /// <summary>
        /// 登录验证
        /// add by 2016-05-16
        /// </summary>
        [ValidateAntiForgeryToken]
        public ActionResult Login(Domain.SYS_USER item)
        {
            var json = new JsonHelper() { Msg = "登录成功", Status = "n" };
            try
            {
                //调用登录验证接口 返回用户实体类
                var users = UserManage.UserLogin(item.ACCOUNT.Trim(), item.PASSWORD.Trim());
                if (users != null)
                {
                    //是否锁定
                    if (users.ISCANLOGIN == 1)
                    {
                        json.Msg = "用户已锁定，禁止登录，请联系管理员进行解锁";
                        log.Warn(Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录，登录结果：" + json.Msg);
                        return Json(json);
                    }
                    var account = UserManage.GetAccountByUser(users);
                    //写入Session 当前登录用户
                    SessionHelper.SetSession("CurrentUser", account);
                    //记录用户信息到Cookies
                    string cookievalue = "{\"id\":\"" + account.Id + "\",\"username\":\"" + account.LogName +
                                                                    "\",\"password\":\"" + account.PassWord + "\",\"ToKen\":\"" +
                                                                    Session.SessionID + "\"}";
                    CookieHelper.SetCookie("cookie_rememberme", new Common.CryptHelper.AESCrypt().Encrypt(cookievalue), null);
                    //更新用户本次登录IP
                    users.LastLoginIP = Utils.GetIP();
                    UserManage.Update(users);

                    json.Status = "y";
                    json.ReUrl = "/Sys/Home/Index";
                    log.Info(Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录，登录结果：" + json.Msg);

                }
                else
                {
                    json.Msg = "用户名或密码不正确";
                    log.Error(Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录，登录结果：" + json.Msg);
                }

            }
            catch (Exception e)
            {
                json.Msg = e.Message;
                log.Error(Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录，登录结果：" + json.Msg);
            }
            return Json(json, JsonRequestBehavior.AllowGet);
        }
        #endregion

        #region 帮助方法
        #endregion
    }
}