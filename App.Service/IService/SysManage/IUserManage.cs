﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App.Service.IService
{
    /// <summary>
    /// Service层基本用户信息接口
    /// add yuangang by 2016-05-12
    /// </summary>
    public interface IUserManage : IRepository<Domain.SYS_USER>
    {
        /// <summary>
        /// 管理用户登录验证,并返回用户信息与权限集合
        /// </summary>
        /// <param name="username">用户账号</param>
        /// <param name="password">用户密码</param>
        /// <returns></returns>
        Domain.SYS_USER UserLogin(string useraccount, string password);
        /// <summary>
        /// 是否超级管理员
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <returns></returns>
        bool IsAdmin(int userId);
        /// <summary>
        /// 根据用户ID获取用户名，不存在返回空
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <returns></returns>
        string GetUserName(int userId);
    }
}