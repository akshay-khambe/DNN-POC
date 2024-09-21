using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Cross.Modules.Article.View
{
    public partial class Author : ArticleModuleBase
    {
        public Setting_Author Settings_Author;

        override protected void OnInit(EventArgs e)
        {
            Settings_Author = new Setting_Author(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_Author.General.TypeId == -1)
            {
                Settings_Author = new Setting_Author(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LocalResourceFile = Localization.GetResourceFile(this, "Author.ascx");
                List<AuthorInfo> list = AuthorController.GetByType(Settings_Author.General.TypeId);
                //process localization
                foreach (var item in list)
                {
                    LocalizeObject_User(item);
                }

                if (Settings_Author.General.SortFiled.ToLower() == "authorname")
                {
                    var authorList = from p in list orderby p.DisplayName select p;
                    dlAuthor.DataSource = authorList;
                }
                if (Settings_Author.General.SortFiled.ToLower() == "articlecounts")
                {
                    var authorList = from p in list orderby p.ArticleCounts descending select p;
                    dlAuthor.DataSource = authorList;
                }

                dlAuthor.DataBind();

            }

        }

        protected string GetAuthorAvatar(string userId, string avartarEmail)
        {
            //first we take site avartar
            DotNetNuke.Entities.Users.UserInfo objUser = DotNetNuke.Entities.Users.UserController.GetUserById(PortalId, Convert.ToInt32(userId));
            if (objUser != null)
            {
                if (!string.IsNullOrEmpty(objUser.Profile.PhotoURL))
                {
                    return objUser.Profile.PhotoURL;
                }
            }
            return GetGravatarUrl(avartarEmail, "32");
        }

        protected string GetNavigate(string userId)
        {
            int tab = GetSubModulePageId_List(Settings_Author.General.ArticleListPage, Settings_Author.General.TypeId);


            return Globals.NavigateURL(tab, "", "ArticleUserId=" + userId + "&ArticleTypeId=" + Settings_Author.General.TypeId.ToString());

        }
        protected string GetRssUrl(string userId)
        {
            return FullDomainName + "/DesktopModules/CrossArticle/ArticleRss.aspx?ArticleUserId="
                + userId + "&ArticleTypeId=" + Settings_Author.General.TypeId.ToString()
                 + "&TabId=" + TabId.ToString();
        }
    }

}

