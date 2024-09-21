using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;

namespace Cross.Modules.Article.View
{
    public partial class Archive : ArticleModuleBase
    {
        public DateTime ArticleDate
        {
            get
            {
                if (ViewState["ArticleDate"] == null)
                {
                    return DateTime.UtcNow;
                }
                else
                {
                    return (DateTime)ViewState["ArticleDate"];
                }
            }
            set
            {
                ViewState["ArticleDate"] = value;
            }
        }
        public Setting_Archive Settings_Archive;

        override protected void OnInit(EventArgs e)
        {
            Settings_Archive = new Setting_Archive(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_Archive.General.TypeId == -1)
            {
                Settings_Archive = new Setting_Archive(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LocalResourceFile = Localization.GetResourceFile(this, "Archive.ascx");

            if (!IsPostBack)
            {
                BindCalendar();
                dlArchiveMonths.DataSource = ArchiveMonthsController.GetArticleMonths(Settings_Archive.General.TypeId);
                dlArchiveMonths.DataBind();

            }

        }



        private void BindCalendar()
        {
            calMonth.SelectedDates.Clear();

            List<ArchiveDaysInfo> listDays = ArchiveDaysController.GetArticleDaysForMonth(Settings_Archive.General.TypeId, ArticleDate, GetUserId());

            foreach (ArchiveDaysInfo day in listDays)
            {
                //  string strDate = LocalUtils.FormatDate(day.AddedDate, BasePage.PageCulture.Name, "g", PortalSettings.TimeZoneOffset, false);
                //  DateTime dt = LocalUtils.ParseDate(strDate, BasePage.PageCulture.Name);
                calMonth.SelectedDates.Add(day.AddedDate);
            }
            calMonth.VisibleDate = ArticleDate;
        }

        protected void dlArchiveMonths_ItemDataBound(object sender, System.Web.UI.WebControls.DataListItemEventArgs e)
        {
            System.Web.UI.WebControls.HyperLink lnkMonthYear;
            System.Web.UI.WebControls.HyperLink lnkArticleRSS;
            lnkMonthYear = ((System.Web.UI.WebControls.HyperLink)(e.Item.FindControl("lnkMonthYear")));
            lnkArticleRSS = ((System.Web.UI.WebControls.HyperLink)(e.Item.FindControl("lnkArticleRSS")));

            lnkArticleRSS.Visible = Settings_Archive.General.DisplayRss;

            ArchiveMonthsInfo objMonth = (ArchiveMonthsInfo)e.Item.DataItem;

            lnkMonthYear.Text = LocalUtils.FormatDate(objMonth.AddedDate, BasePage.PageCulture.Name, "y", 0, false);
            lnkMonthYear.Target = Settings_Archive.General.Target;

            int tab = GetSubModulePageId_List(Settings_Archive.General.ArticleListPage, Settings_Archive.General.TypeId);


            string parm = "ArticleDate=" + objMonth.AddedDate.ToString("yyyy-MM-dd")
                + "&DateType=month&ArticleTypeId=" + Settings_Archive.General.TypeId.ToString()
                + "&TabId=" + TabId.ToString();
            lnkMonthYear.NavigateUrl = Globals.NavigateURL(tab, "", parm);

            lnkArticleRSS.NavigateUrl = FullDomainName + "/DesktopModules/CrossArticle/ArticleRss.aspx?" + parm;

        }
        protected void calMonth_VisibleMonthChanged(object sender, System.Web.UI.WebControls.MonthChangedEventArgs e)
        {

            ArticleDate = e.NewDate;
            BindCalendar();

        }
        protected void calMonth_SelectionChanged(object sender, EventArgs e)
        {
            string newDate = calMonth.SelectedDate.ToString("yyyy-MM-dd");
            int tab = GetSubModulePageId_List(Settings_Archive.General.ArticleListPage, Settings_Archive.General.TypeId);

            string url = Globals.NavigateURL(tab, "", "ArticleDate=" + newDate + "&DateType=day&ArticleTypeId=" + Settings_Archive.General.TypeId.ToString());
            if (Settings_Archive.General.Target == "_self")//设置为本窗口打开
            {
                Response.Redirect(url, true);
            }
            else
            {
                Response.Write("<script>window.open('" + url + "','_blank')</script>");//设置为新窗口打开
            }
        }
    }

}

