﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Assignment
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            var identityDBContext = new IdentityDbContext("IdentityConnectionString");
            var roleStore = new RoleStore<IdentityRole>(identityDBContext);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>(identityDBContext);
            var manager = new UserManager<IdentityUser>(userStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            roleManager.Create(adminRole);
            var user = new IdentityUser()
            {
                UserName = txtregEmail.Text,
                Email = txtregEmail.Text
            };

            IdentityResult result = manager.Create(user, TxtRegPassword.Text);
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "RegisteredUser");
                manager.Update(user);   
                litRegisterError.Text = "Registration Successful";
            }
            else
            {
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }
        }
    }
}