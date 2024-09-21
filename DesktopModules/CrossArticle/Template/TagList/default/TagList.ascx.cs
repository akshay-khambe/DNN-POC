using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Cross.Modules.Article.View
{

    public partial class TagList : ArticleModuleBase
    {

        public Setting_TagList Settings_TagList;

        override protected void OnInit(EventArgs e)
        {
            Settings_TagList = new Setting_TagList(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_TagList.General.TypeId == -1)
            {
                Settings_TagList = new Setting_TagList(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.LocalResourceFile = Localization.GetResourceFile(this, "TagList.ascx");
                List<TagInfo> list = TagController.GetByType(Settings_TagList.General.TypeId, GetCurrentCultureCode());

                int tagListCount = list.Count > Settings_TagList.General.RowCount ? Settings_TagList.General.RowCount : list.Count;
                List<TagInfo> authorList = new List<TagInfo>();
                int tagLevel = 10;
                if (Settings_TagList.General.SortFiled.ToLower() == "tagname")
                {
                    if (Settings_TagList.General.SortMethod == "Asc")
                    {
                        //首先按名称筛选出数据
                        var tempList = (from p in list orderby p.Tag select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts升序排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }
                        //再次按名称排序
                        tempList = (from p in authorList orderby p.Tag select p);
                        dlTag.DataSource = tempList;
                    }
                    else
                    {
                        //首先按名称筛选出数据
                        var tempList = (from p in list orderby p.Tag descending select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts升序排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }
                        //再次按名称排序
                        tempList = (from p in authorList orderby p.Tag descending select p);
                        dlTag.DataSource = tempList;
                    }

                }

                if (Settings_TagList.General.SortFiled.ToLower() == "articlecounts")
                {
                    if (Settings_TagList.General.SortMethod == "Asc")
                    {
                        var tempList = (from p in list orderby p.ArticleCounts select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts升序排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }

                        tempList = (from p in authorList orderby p.ArticleCounts select p);
                        dlTag.DataSource = tempList;
                    }
                    else
                    {
                        var tempList = (from p in list orderby p.ArticleCounts descending select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts升序排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }

                        tempList = (from p in authorList orderby p.ArticleCounts descending select p);
                        dlTag.DataSource = tempList;
                    }
                }
                if (Settings_TagList.General.SortFiled.ToLower() == "createddate")
                {
                    if (Settings_TagList.General.SortMethod == "Asc")
                    {
                        var tempList = (from p in list orderby p.CreatedDate select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }
                        //再次按日期排序
                        tempList = (from p in authorList orderby p.CreatedDate select p);
                        dlTag.DataSource = tempList;
                    }
                    else
                    {
                        var tempList = (from p in list orderby p.CreatedDate descending select p).Take(Settings_TagList.General.RowCount);
                        //其次在筛选出来的数据中按 articlecounts排序
                        authorList = (from p in tempList orderby p.ArticleCounts select p).ToList<TagInfo>();
                        //依次设置其could css level
                        for (int i = 0; i < tagListCount; i++)
                        {
                            if (Settings_TagList.General.UseCloudStyle)
                            {
                                authorList[i].CloudCssLevel = "Tag" + GetTagLevel(tagLevel, i + 1, tagListCount).ToString();
                            }
                            else
                            {
                                authorList[i].CloudCssLevel = "Normal";
                            }
                        }
                        //再次按日期排序
                        tempList = (from p in authorList orderby p.CreatedDate descending select p);
                        dlTag.DataSource = tempList;

                    }
                }
                dlTag.DataBind();

            }

        }

        private int GetTagLevel(int levels, int index, int total)
        {
            int position = total;
            for (int i = levels; i >= 1; i--)
            {
                position = (int)Math.Round((double)(position * 0.66666666666666663));
                if (index >= position)
                {
                    return i;
                }
            }
            return 1;
        }


        protected string GetNavigate(string tagId)
        {
            int tab = GetSubModulePageId_List(Settings_TagList.General.ArticleListPage, Settings_TagList.General.TypeId);
            return Globals.NavigateURL(tab, "", "ArticleTagId=" + tagId + "&ArticleTypeId=" + Settings_TagList.General.TypeId.ToString());

        }
        protected string GetRssUrl(string tagId)
        {
            return FullDomainName + "/DesktopModules/CrossArticle/ArticleRss.aspx?ArticleTagId="
                + tagId + "&ArticleTypeId=" + Settings_TagList.General.TypeId.ToString()
                + "&TabId=" + TabId.ToString();
        }
    }

}

