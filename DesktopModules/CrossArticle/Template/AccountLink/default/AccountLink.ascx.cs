using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Services.Localization;
using System;
using System.Web;
namespace Cross.Modules.Article.View
{
    public partial class AccountLink : ArticleModuleBase
    {
        public Setting_AccountLink Settings_AccountLink;

        override protected void OnInit(EventArgs e)
        {
            Settings_AccountLink = new Setting_AccountLink(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            base.OnInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LocalResourceFile = Localization.GetResourceFile(this, "AccountLink.ascx");

            if (!IsPostBack)
            {

                if (UserId == -1)
                {
                    string returnUrl = HttpContext.Current.Request.RawUrl;
                    if (returnUrl.IndexOf("?returnurl=") != -1)
                    {
                        returnUrl = returnUrl.Substring(0, returnUrl.IndexOf("?returnurl="));
                    }
                    returnUrl = HttpUtility.UrlEncode(returnUrl);
                    string loginUrl = DotNetNuke.Common.Globals.LoginURL(returnUrl, Request.QueryString["override"] != null);

                    hlArticle.NavigateUrl = loginUrl;
                    hlAccount.NavigateUrl = loginUrl;

                    hlAccount.Target = "_self";
                    hlArticle.Target = "_self";

                }
                else
                {

                    hlArticle.NavigateUrl = Globals.NavigateURL(GetSubModulePageId_Admin(), "", "mid=" + GetSubModuleId_Admin(),
              "ctl=Author_Article");

                    hlAccount.NavigateUrl = Globals.NavigateURL(GetSubModulePageId_Admin());


                    hlArticle.Target = Settings_AccountLink.General.Target;
                    hlAccount.Target = Settings_AccountLink.General.Target;

                }

                hlHelp.NavigateUrl = Globals.NavigateURL(Settings_Portal.Help.ArticleHelpTab);
                DataBind();
            }
        }
    }

}

