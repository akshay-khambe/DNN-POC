using Cross.DNN.Common.UserDefinedTable;
using Cross.DNN.Common.Utility;
using Cross.DNN.Common.Utility.TreeHelper;
using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Security;
using DotNetNuke.Services.Localization;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace Cross.Modules.Article.View
{

    public partial class ArticleList : ArticleModuleBase
    {
        public Cross.Modules.Article.Business.TypeInfo CurrentType
        {
            get
            {
                return Cross.Modules.Article.Business.TypeController.Get(Settings_List.General.TypeId);
            }
        }
        /// <summary>
        /// maintain current status, can be 
        /// none/localsearch_basic/localsearch_advanced/externalsearch_basic/externalsearch_advanced
        /// </summary>
        private string CurrentSearchStatus
        {
            get
            {
                if (ViewState["CurrentSearchStatus"] != null)
                {
                    return Convert.ToString(ViewState["CurrentSearchStatus"]);
                }
                else
                {
                    if (InExternalSearch_Basic)
                    {
                        return "externalsearch_basic";
                    }
                    if (InExternalSearch_Advanced)
                    {
                        return "externalsearch_advanced";
                    }
                }
                return "none";
            }
            set
            {
                ViewState["CurrentSearchStatus"] = value;
            }
        }
        /// <summary>
        /// currently in basic search mode
        /// </summary>
        private bool InExternalSearch_Basic
        {
            get
            {
                if (!Settings_List.General.AcceptSearchParm) return false;

                //first we check if UserIdMapping is provided
                if (!string.IsNullOrEmpty(Settings_List.General.UserIdMapping)
                    && (Request.QueryString[Settings_List.General.UserIdMapping] != null)
               && (Utils.IsNumber(Request.QueryString[Settings_List.General.UserIdMapping].ToString())))
                {
                    return true;
                }

                if (!string.IsNullOrEmpty(Settings_List.General.GroupIdMapping)
                   && (Request.QueryString[Settings_List.General.GroupIdMapping] != null)
              && (Utils.IsNumber(Request.QueryString[Settings_List.General.GroupIdMapping].ToString())))
                {
                    return true;
                }

                //仅接受和typeid 一样的查询
                if (Request.QueryString["ArticleTypeId"] == null || !Utils.IsNumber(Request.QueryString["ArticleTypeId"].ToString()))
                {
                    return false;
                }
                if (Convert.ToString(Request.QueryString["ArticleTypeId"]) != Settings_List.General.TypeId.ToString())
                {
                    return false;
                }

                string[] searchParm = { "ArticleCategoryId", "ArticleTagId", "ArticleUserId", "ArticleSearchTerm", "ArticleDate" };
                foreach (string parm in searchParm)
                {
                    if (Request.QueryString[parm] != null)
                    {
                        return true;
                    }
                }
                return false;
            }
        }
        /// <summary>
        /// currently in advanced search mode,
        /// note, we have to use post method to do the advanced search
        /// </summary>
        private bool InExternalSearch_Advanced
        {
            get
            {
                if (!Settings_List.General.AcceptSearchParm) return false;

                //仅接受和typeid 一样的查询
                if (Request.Form["ArticleTypeId"] == null || !Utils.IsNumber(Request.Form["ArticleTypeId"].ToString()))
                {
                    return false;
                }
                if (Convert.ToString(Request.Form["ArticleTypeId"]) != Settings_List.General.TypeId.ToString())
                {
                    return false;
                }
                if (Request.Form["S_Mode"] != null && Request.Form["S_Mode"].ToString().ToLower() == "adv")
                {
                    return true;
                }
                return false;
            }
        }
        public bool PopupImages
        {
            get
            {
                if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)
                {
                    return true;
                }
                return false;
            }
        }
        private List<UDFieldInfo> UDFieldList
        {
            get
            {
                List<Cross.Modules.Article.Business.UDFieldInfo> list = new List<Cross.Modules.Article.Business.UDFieldInfo>();

                if (SupportsContentLocalization)
                {
                    list = (from p in Cross.Modules.Article.Business.UDFieldController.GetByPortals(PortalId)
                            where p.TypeId == Settings_List.General.TypeId
                            select p).ToList();
                    foreach (var item in list)
                    {
                        LocalizeObject_UDField(item);
                    }
                }
                else
                {
                    list = (from p in Cache_UdtList where p.TypeId == Settings_List.General.TypeId select p).ToList();
                }
                return list;

            }
        }

        #region variables to save the advanced search value
        //private string S_Title, S_Title_Oper, S_Category, S_Category_Oper, S_Author, S_Author_Oper,
        //    S_CreatedDate, S_CreatedDate_Oper, S_PublishDate, S_PublishDate_Oper, S_ExpireDate, S_ExpireDate_Oper,
        //    S_Views, S_Views_Oper, S_RatingAverage, S_RatingAverage_Oper;
        //private string  
        #endregion

        #region advanced search fields
        /// <summary>
        /// edit controls which used to present data
        /// </summary>
        private EditControls ListEditControls;

        /// <summary>
        /// udfield info list which used to search
        /// </summary>
        private List<UDFieldInfo> Udt_SearchList;


        private void Init_Udt_SearchList()
        {
            Udt_SearchList = new List<UDFieldInfo>();
            List<int> idList = new List<int>();
            int id = -1;
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_1)
                && Settings_List.Search_Advanced.UDT_1 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_1);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_2)
                && Settings_List.Search_Advanced.UDT_2 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_2);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_3)
              && Settings_List.Search_Advanced.UDT_3 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_3);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_4)
             && Settings_List.Search_Advanced.UDT_4 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_4);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_5)
             && Settings_List.Search_Advanced.UDT_5 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_5);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_6)
             && Settings_List.Search_Advanced.UDT_6 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_6);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_7)
             && Settings_List.Search_Advanced.UDT_7 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_7);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_8)
             && Settings_List.Search_Advanced.UDT_8 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_8);
                idList.Add(id);
            }
            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_9)
             && Settings_List.Search_Advanced.UDT_9 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_9);
                idList.Add(id);
            }

            if (!string.IsNullOrEmpty(Settings_List.Search_Advanced.UDT_10)
             && Settings_List.Search_Advanced.UDT_10 != "-1")
            {
                id = Convert.ToInt32(Settings_List.Search_Advanced.UDT_10);
                idList.Add(id);
            }
            List<UDFieldInfo> list = new List<UDFieldInfo>();
            //find out the repeated id
            List<int> validIdList = (from p in idList select p).Distinct().ToList();

            foreach (var item in validIdList)
            {
                if (UDFieldController.Get(item) != null)
                {
                    Udt_SearchList.Add(UDFieldController.Get(item));
                }
            }
            foreach (var item in Udt_SearchList)
            {
                LocalizeObject_UDField(item);
            }
        }
        /// <summary>
        /// operator for udfield info
        /// </summary>
        private List<DropDownList> Udt_SearchOperList;

        private void Init_Udt_SearchOperList()
        {
            Udt_SearchOperList = new List<DropDownList>();
            for (int i = 0; i < Udt_SearchList.Count; i++)
            {
                DropDownList ddlItem = new DropDownList();
                ddlItem.Width = Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator);
                //user defined data which have list of values specified
                if (!string.IsNullOrEmpty(Udt_SearchList[i].InputSettings) &&
                    Udt_SearchList[i].InputSettings.IndexOf(';') > 0)
                {
                    //for check box list values, we should provide contain / not contain search feature.
                    if (Udt_SearchList[i].InputSettings.EndsWith(Cross.DNN.Common.UserDefinedTable.Definition.verticalCheckBoxListEnabledToken)
                        || Udt_SearchList[i].InputSettings.EndsWith(Cross.DNN.Common.UserDefinedTable.Definition.horizontalCheckBoxListEnabledToken))
                    {
                        ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_contain", LocalResourceFile), "contain"));
                        ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_notcontain", LocalResourceFile), "notcontain"));
                    }
                    else
                    {
                        ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_equal", LocalResourceFile), "equal"));
                        ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_unequal", LocalResourceFile), "unequal"));
                    }
                }
                else
                {
                    switch (Udt_SearchList[i].FieldType.ToLower())
                    {
                        case "int32":
                        case "decimal":
                        case "datetime":
                        case "date":
                        case "time":
                        case "currency": //< = >
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_lessthan", LocalResourceFile), "lessthan"));
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_equal", LocalResourceFile), "equal"));
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_greaterthan", LocalResourceFile), "greaterthan"));
                            break;
                        case "string":
                        case "email":
                        case "url":
                        case "image":
                        case "texthtml"://like, unlike
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_like", LocalResourceFile), "like"));
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_unlike", LocalResourceFile), "unlike"));
                            break;
                        case "boolean":// = <>
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_equal", LocalResourceFile), "equal"));
                            ddlItem.Items.Add(new ListItem(Localization.GetString("li_Oper_unequal", LocalResourceFile), "unequal"));
                            break;
                        default:
                            break;
                    }
                }
                Udt_SearchOperList.Add(ddlItem);
            }
        }

        #endregion
        #region advanced search  conditions

        private void BuildUDFieldForm()
        {
            Init_Udt_SearchList();
            if (Udt_SearchList.Count < 1)
            {
                return;
            }
            Init_Udt_SearchOperList();
            List<FormColumnInfo> listEditFrom = new List<FormColumnInfo>();
            FormColumnInfo objColumn;
            ListEditControls = new EditControls(ModuleContext);

            //edit style will use the input width settings
            string editStyle = string.Format("width:{0}px", Settings_List.Search_Advanced.Width_Input);

            for (int i = 0; i < Udt_SearchList.Count; i++)
            {
                objColumn = new FormColumnInfo();
                objColumn.Name = Udt_SearchList[i].FieldName;
                objColumn.IsUserDefinedField = true;
                objColumn.Help = Udt_SearchList[i].HelpText;
                objColumn.Title = string.IsNullOrEmpty(Udt_SearchList[i].FieldTitle) ? Udt_SearchList[i].FieldName : Udt_SearchList[i].FieldTitle;
                //add : to make it looks better
                if (objColumn.Title.EndsWith(":") == false)
                {
                    objColumn.Title += ":";
                }
                objColumn.Required = false;
                objColumn.Visible = true;
                objColumn.EditControl = ListEditControls.Add(objColumn.Name, objColumn.Title, Udt_SearchList[i].FieldType, Udt_SearchList[i].Id,
                    objColumn.Help, Udt_SearchList[i].DefaultValue, objColumn.Required,
                    Udt_SearchList[i].ValidationRule, Udt_SearchList[i].ValidationMessage, editStyle, Udt_SearchList[i].InputSettings,
                    Udt_SearchList[i].OutputSettings, Udt_SearchList[i].NormalizeFlag, Settings_List.Search_Advanced.RepeatColumns);

                listEditFrom.Add(objColumn);
            }
            BuildFormAsTable(listEditFrom);
        }

        public Control CreateTitleControl(string title)
        {
            Label lblControl = new Label();
            lblControl.Text = title;
            lblControl.Width = int.Parse(Settings_List.Search_Advanced.Width_Label);
            return lblControl;
        }

        private void BuildFormAsTable(List<FormColumnInfo> listEditFrom)
        {
            for (int i = 0; i < listEditFrom.Count; i++)
            {
                TableRow objRow = new TableRow();
                //1st column: Caption for the field
                TableCell objCell = new TableCell();

                //objCell.VerticalAlign = VerticalAlign.Top;
                objCell.HorizontalAlign = HorizontalAlign.Right;
                objCell.Controls.Add(CreateTitleControl(listEditFrom[i].Title));
                objCell.Wrap = false;
                if (listEditFrom[i].EditControl == null)
                {
                    objCell.ColumnSpan = 2;
                    objRow.Cells.Add(objCell);
                }
                else
                {
                    // objCell.CssClass = "Normal";
                    objCell.Controls.Add(Udt_SearchOperList[i]);
                    objCell.Width = Unit.Pixel(Convert.ToInt32(Settings_List.Search_Advanced.Width_Label)
                        + Convert.ToInt32(Settings_List.Search_Advanced.Width_Operator));
                    objRow.Cells.Add(objCell);



                    //3rd column: Dynamic control
                    objCell = new TableCell();
                    //  objCell.VerticalAlign = VerticalAlign.Top;
                    //operator

                    //edit control
                    objCell.Controls.Add(listEditFrom[i].EditControl);
                    objCell.Width = Unit.Percentage(100);
                    //row visibility:
                    objRow.Cells.Add(objCell);
                    objRow.Visible = true;
                }
                tblAdvancedSearchCondition.Rows.Add(objRow);
            }
        }


        public void BindAuthorList()
        {
            if (Settings_List.General.SearchMode != LocalUtils.SearchMode_Advanced
                || Settings_List.Search_Advanced.BuiltInField_Author == false)
            {
                return;
            }

            List<AuthorInfo> listAuthor = AuthorController.GetByType(Settings_List.General.TypeId);
            AuthorInfo ai = new AuthorInfo();
            ai.UserName = "< " + Localization.GetString("SelectAuthor", LocalResourceFile) + " >";
            ai.UserId = -1;

            listAuthor.Add(ai);

            ddlBuiltInField_Author.DataSource = listAuthor;
            ddlBuiltInField_Author.DataBind();
            ddlBuiltInField_Author.SelectedValue = "-1";
        }
        private void BindCategories()
        {

            if (Settings_List.General.SearchMode != LocalUtils.SearchMode_Advanced
                || Settings_List.Search_Advanced.BuiltInField_Category == false)
            {
                return;
            }

            //v6.9 let administrator specify category which will be searched
            if (string.IsNullOrEmpty(Settings_List.General.CategoryList))
            {
                BindCategoryAsTree();
            }
            else
            {
                BindCategoryAsList();
            }
        }
        private void BindCategoryAsTree()
        {
            List<CategoryInfo> list = CategoryController.GetByType(Settings_List.General.TypeId);

            foreach (var item in list)
            {
                LocalizeObject_Category(item);
            }

            for (int i = 0; i < list.Count; i++)
            {
                list[i].Name = Utils.FormatLevelName(list[i].Name, list[i].Level, "..");
            }
            List<RecursiveCategoryData> listRecursiveData = new List<RecursiveCategoryData>();
            listRecursiveData = LocalUtils.ConvertCategoryListToRecursiveList(list);


            RecursiveCategoryItem orderedItems = RecursiveHelper.ConvertListToRecursiveItem(listRecursiveData);

            ArrayList listCategory = orderedItems.GetListOrdered();
            RecursiveCategoryItem a = new RecursiveCategoryItem();
            a.Id = -1;
            a.Name = "< " + Localization.GetString("SelectCategory", LocalResourceFile) + " >";
            listCategory.Add(a);

            ddlBuiltInField_Category.DataSource = listCategory;
            ddlBuiltInField_Category.DataBind();
            ddlBuiltInField_Category.SelectedValue = "-1";

        }

        private void BindCategoryAsList()
        {
            List<CategoryInfo> list = CategoryController.GetModuleCategories(Settings_List.General.CategoryList);

            foreach (var item in list)
            {
                LocalizeObject_Category(item);
            }

            CategoryInfo a = new CategoryInfo();
            a.Id = -1;
            a.Name = "< " + Localization.GetString("SelectCategory", LocalResourceFile) + " >";
            list.Add(a);

            ddlBuiltInField_Category.DataSource = list;
            ddlBuiltInField_Category.DataBind();
            ddlBuiltInField_Category.SelectedValue = "-1";

        }

        protected void btnAdvancedSearch_Click(object sender, EventArgs e)
        {
            CurrentSearchStatus = "localsearch_advanced";
            BindArticle(0);
        }
        #endregion

        public Setting_List Settings_List;

        override protected void OnInit(EventArgs e)
        {
            Settings_List = new Setting_List(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_List.General.TypeId == -1)
            {
                Settings_List = new Setting_List(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        #region eventhandler
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_Grid)
                {
                    GenerateUDFieldToGrid();
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache_TypeList.Count < 1 || Settings_List.General.TypeId == -1)
            {
                return;
            }
            LocalResourceFile = Localization.GetResourceFile(this, "ArticleList.ascx");
            ctlPagingControl.ResourceFile = LocalUtils.ResourcesFile_Shared;
            if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)//注册图片直接弹出效果
            {
                RegisterFancyBoxScript();
                //  RegisterLightBoxScript();
            }
            if (!IsPostBack)
            {
                CurrentSearchStatus = "none";
                if (InExternalSearch_Basic)
                {
                    CurrentSearchStatus = "externalsearch_basic";
                }
                if (InExternalSearch_Advanced)
                {
                    CurrentSearchStatus = "externalsearch_advanced";
                }

                tblBasicSearch.Visible = Settings_List.General.SearchMode == LocalUtils.SearchMode_Basic;
                tblAdvancedSearchCondition.Visible = Settings_List.General.SearchMode == LocalUtils.SearchMode_Advanced;
                tblAdvancedSearchButton.Visible = Settings_List.General.SearchMode == LocalUtils.SearchMode_Advanced;

                if (Settings_List.General.SearchMode == LocalUtils.SearchMode_Advanced)
                {
                    BindCategories();
                    BindAuthorList();
                    if (CurrentType.AllowLocation && Settings_List.Search_Advanced.BuiltInField_Country)
                    {
                        BindLocationCountry();
                        OnLocationCountry_SelectedIndexChanged();
                    }
                }

                //init the sort and paging
                if (ddlSortField.Items.FindByValue(Settings_List.General.SortField) != null)
                {
                    ddlSortField.SelectedIndex = -1;
                    ddlSortField.Items.FindByValue(Settings_List.General.SortField).Selected = true;
                }

                if (ddlBuiltInField_Sort.Items.FindByValue(Settings_List.General.SortField) != null)
                {
                    ddlBuiltInField_Sort.SelectedIndex = -1;
                    ddlBuiltInField_Sort.Items.FindByValue(Settings_List.General.SortField).Selected = true;
                }

                //init the paging select
                int pageSize = 10;

                if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
                {
                    pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
                }
                else
                {
                    pageSize = Settings_List.Paging.RowCount;
                }
                List<int> pagingList = new List<int> { 5, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 200, 500 };
                if (!pagingList.Contains(pageSize))
                {
                    pagingList.Add(pageSize);
                }
                foreach (var item in (from p in pagingList orderby p select p).ToList())
                {
                    ddlPage.Items.Add(new ListItem(item.ToString(), item.ToString()));
                    ddlBuiltInField_Paging.Items.Add(new ListItem(item.ToString(), item.ToString()));
                }

                ddlPage.Items.FindByValue(pageSize.ToString()).Selected = true;
                ddlBuiltInField_Paging.Items.FindByValue(pageSize.ToString()).Selected = true;

                BindArticle(0);
                if (Settings_List.MoreArticle.ShowMoreArticles && Settings_List.MoreArticle.MoreArticlesLink != -1)
                {
                    hlMoreArticles.Visible = true;
                    if (string.IsNullOrEmpty(Settings_List.MoreArticle.MoreArticlesText))
                    {
                        hlMoreArticles.Text = "More Articles..";
                    }
                    else
                    {
                        hlMoreArticles.Text = Settings_List.MoreArticle.MoreArticlesText;
                    }
                    hlMoreArticles.NavigateUrl = DotNetNuke.Common.Globals.NavigateURL(Settings_List.MoreArticle.MoreArticlesLink);
                }
                //Rss
                hlRss.NavigateUrl = FullDomainName + "/DesktopModules/CrossArticle/ArticleRss.aspx?ArticleTypeId="
                    + Settings_List.General.TypeId.ToString() + "&ArticleModuleId=" + ModuleId.ToString()
                    + "&TabId=" + TabId.ToString();
                DataBind();
            }

            if (Settings_List.General.SearchMode == LocalUtils.SearchMode_Advanced)
            {
                BuildUDFieldForm();
            }
        }
        #region location
        private void BindLocationCountry()
        {
            List<CountryInfo> list = CountryController.GetByPortal(PortalId).ToList();
            foreach (var item in list)
            {
                LocalizeObject_Country(item);
            }
            if (list.Count == 0)
            {
                return;
            }
            if (list.Count == 1)
            {
                trBuiltInField_Country.Visible = false;
                ddlBuiltInField_Country.DataSource = list;
                ddlBuiltInField_Country.DataBind();
            }
            else
            {
                trBuiltInField_Country.Visible = true;
                CountryInfo objNone = new CountryInfo();
                objNone.Name = "< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >";
                objNone.Id = -1;
                list.Insert(0, objNone);
                ddlBuiltInField_Country.DataSource = list;
                ddlBuiltInField_Country.DataBind();
                if (ddlBuiltInField_Country.Items.FindByValue("-1") != null)
                {
                    ddlBuiltInField_Country.SelectedIndex = -1;
                    ddlBuiltInField_Country.Items.FindByValue("-1").Selected = true;
                }
            }
        }
        protected void ddlBuiltInField_Country_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationCountry_SelectedIndexChanged();
        }
        private void OnLocationCountry_SelectedIndexChanged()
        {
            if (CurrentType.AllowLocation && Settings_List.Search_Advanced.BuiltInField_Country && Settings_List.Search_Advanced.BuiltInField_State)
            {
                trBuiltInField_State.Visible = true;
                ddlBuiltInField_State.Items.Clear();

                foreach (var item in StateController.GetByCountry(Convert.ToInt32(ddlBuiltInField_Country.SelectedValue)))
                {
                    LocalizeObject_State(item);
                    ddlBuiltInField_State.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                }

                ddlBuiltInField_State.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));

                ddlBuiltInField_State.DataBind();
                ddlBuiltInField_State.SelectedIndex = -1;
                ddlBuiltInField_State.Items.FindByValue("-1").Selected = true;

                OnLocationState_SelectedIndexChanged();
            }
        }

        protected void ddlBuiltInField_State_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationState_SelectedIndexChanged();
        }
        private void OnLocationState_SelectedIndexChanged()
        {
            if (CurrentType.AllowLocation
                && Settings_List.Search_Advanced.BuiltInField_Country
                && Settings_List.Search_Advanced.BuiltInField_State
                && Settings_List.Search_Advanced.BuiltInField_City)
            {
                trBuiltInField_City.Visible = true;
                ddlBuiltInField_City.Items.Clear();

                foreach (var item in CityController.GetByState(Convert.ToInt32(ddlBuiltInField_State.SelectedValue)))
                {
                    LocalizeObject_City(item);
                    ddlBuiltInField_City.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                }

                ddlBuiltInField_City.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));

                ddlBuiltInField_City.DataBind();
                ddlBuiltInField_City.SelectedIndex = -1;
                ddlBuiltInField_City.Items.FindByValue("-1").Selected = true;
                OnLocationCity_SelectedIndexChanged();
            }
        }

        protected void ddlBuiltInField_City_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationCity_SelectedIndexChanged();
        }

        private void OnLocationCity_SelectedIndexChanged()
        {
            if (CurrentType.AllowLocation
                && Settings_List.Search_Advanced.BuiltInField_Country
                && Settings_List.Search_Advanced.BuiltInField_State
                && Settings_List.Search_Advanced.BuiltInField_City
                && Settings_List.Search_Advanced.BuiltInField_Town)
            {
                trBuiltInField_Town.Visible = true;
                ddlBuiltInField_Town.Items.Clear();

                foreach (var item in TownController.GetByCity(Convert.ToInt32(ddlBuiltInField_City.SelectedValue)))
                {
                    LocalizeObject_Town(item);
                    ddlBuiltInField_Town.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                }

                ddlBuiltInField_Town.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));

                ddlBuiltInField_Town.DataBind();

                ddlBuiltInField_Town.SelectedIndex = -1;
                ddlBuiltInField_Town.Items.FindByValue("-1").Selected = true;
            }
        }
        #endregion
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            CurrentSearchStatus = "localsearch_basic";
            BindArticle(0);
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtSearch.Text = "";
            CurrentSearchStatus = "localsearch_basic";
            BindArticle(0);
        }
        protected void btnAdvancedClear_Click(object sender, EventArgs e)
        {
            CurrentSearchStatus = "none";
            BindArticle(0);
        }
        protected void ctlPagingControl_PageChanged(object sender, EventArgs e)
        {
            BindArticle(ctlPagingControl.CurrentPage);
        }
        #endregion


        #region methods


        ///// <summary>
        ///// 注册fancy box 脚本以弹出图片
        ///// </summary>
        private void RegisterFancyBoxScript()
        {
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQuery);

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered("FancyBoxScript"))
            {

                //v8.7 introduces fancybox 2.1.5, to replace the old version
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                //  < !--Add mousewheel plugin (this is optional)-- >
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/fancyapps-fancyBox-v2.1.5/lib/jquery.mousewheel-3.0.6.pack.js\"></script>{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                //<!-- Add fancyBox main JS and CSS files -->
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/fancyapps-fancyBox-v2.1.5/source/jquery.fancybox.js?v=2.1.5\"></script>{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/js/fancyapps-fancyBox-v2.1.5/source/jquery.fancybox.css?v=2.1.5\" type=\"text/css\" media=\"screen\" />{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");

                // < !--Add Button helper (this is optional)-- >
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/js/fancyapps-fancyBox-v2.1.5/source/helpers/jquery.fancybox-buttons.css?v=1.0.5\" type=\"text/css\" media=\"screen\" />{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");

                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/fancyapps-fancyBox-v2.1.5/source/helpers/jquery.fancybox-buttons.js?v=1.0.5\"></script>{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "FancyBoxScript", sb.ToString(), false);
            }
        }
    
        protected string GetFancyBoxClass()
        {
            if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)
            {
                return "fancybox-buttons" + ModuleId.ToString();
            }
            else
            {
                return "";
            }
        }
        protected string GetFancyBoxGroup()
        {
            if (Settings_List.Image.UseLightBoxEffect && Settings_List.Image.ShowImage)
            {
                return "button" + ModuleId.ToString();
            }
            else
            {
                return "";
            }
        }

        public string GetMarqueeBegin()
        {
            string marqueeBegin = "";
            if (Settings_List.Roll.Roll)
            {
                marqueeBegin = "<marquee style='BOTTOM: 0px; FONT-WEIGHT: 100px; HEIGHT:" + Settings_List.Roll.MarHeight + "px;" + " TEXT-ALIGN: left; TOP: 0px'  scrollamount=" + Settings_List.Roll.ScrollAmount + " scrolldelay='10' behavior='loop' direction='" + Settings_List.Roll.Direction + "' border='0' onmouseover='this.stop()' onmouseout='this.start()'>";
            }
            return marqueeBegin;
        }
        public string GetMarqueeEnd()
        {
            if (Settings_List.Roll.Roll) return "</marquee>";
            else return "";
        }
        public string GetHeight()
        {
            if (Settings_List.Roll.Roll) return Settings_List.Roll.MarHeight;
            else return "100%";
        }

        /// <summary>
        /// return article list when current search status = "none"
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticleList_None(int pageIndex, ref int pageSize, ref int totalRecords)
        {
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
            {
                pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
            }
            else
            {
                pageSize = Settings_List.Paging.RowCount;
            }

            List<ArticleInfo> list = new List<ArticleInfo>();

            list = ArticleController.GetByModuleSettings(Settings_List.General.TypeId, GetUserId(), Settings_List.General.CategoryList,
                   Settings_List.General.AuthorList, Settings_List.General.ShowFeaturedOnly, Settings_List.Image.ShowImageOnly,
                   "", Settings_List.General.IgnoreSortIndex,
             Settings_List.General.SortField,
             Settings_List.General.PublishDateType,
             pageSize, Settings_List.Paging.ShowPage,
             GetCurrentCultureCode(), pageSize, pageIndex, ref totalRecords);
            return list;
        }
        /// <summary>
        /// return article list when current search = localsearch_basic
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticleList_LocalSearch_Basic(int pageIndex, ref int pageSize, ref int totalRecords)
        {
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
            {
                pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
            }
            else
            {
                pageSize = Settings_List.Paging.RowCount;
            }

            //if we allow user to choose paging
            if (Settings_List.Search_Basic.ShowPageInSearch)
            {
                pageSize = Convert.ToInt32(ddlPage.SelectedValue);
            }

            List<ArticleInfo> list = new List<ArticleInfo>();
            PortalSecurity ps = new PortalSecurity();
            list = ArticleController.GetByModuleSettings(Settings_List.General.TypeId, GetUserId(), Settings_List.General.CategoryList,
                   Settings_List.General.AuthorList, Settings_List.General.ShowFeaturedOnly, Settings_List.Image.ShowImageOnly,
                   ps.InputFilter(txtSearch.Text.Trim(), PortalSecurity.FilterFlag.NoSQL), Settings_List.General.IgnoreSortIndex,
             Settings_List.Search_Basic.ShowSortInSearch ? ddlSortField.SelectedValue : Settings_List.General.SortField,
             Settings_List.General.PublishDateType,
             pageSize, Settings_List.Paging.ShowPage,
             GetCurrentCultureCode(), pageSize, pageIndex, ref totalRecords);
            return list;
        }


        /// <summary>
        /// return data source when in local advanced search
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticleList_LocalSearch_Advanced(int pageIndex, ref int pageSize, ref int totalRecords)
        {
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
            {
                pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
            }
            else
            {
                pageSize = Settings_List.Paging.RowCount;
            }

            if (Settings_List.Search_Advanced.BuiltInField_Paging)
            {
                pageSize = Convert.ToInt32(ddlBuiltInField_Paging.SelectedValue);
            }
            string sort = Settings_List.Search_Advanced.BuiltInField_Sort ? ddlBuiltInField_Sort.SelectedValue : Settings_List.General.SortField;

            List<string> idList = new List<string>();
            List<string> valueList = new List<string>();
            List<string> operList = new List<string>();

            if (ListEditControls != null
                && Udt_SearchList != null
                && Udt_SearchList.Count > 0)
            {
                int i = 0;

                foreach (EditControl item in ListEditControls.Values)
                {
                    if (!string.IsNullOrEmpty(item.Value)
                        && !string.IsNullOrEmpty(Udt_SearchOperList[i].SelectedValue))
                    {
                        idList.Add(item.FieldID.ToString());
                        valueList.Add(item.Value.Trim());
                        operList.Add(Udt_SearchOperList[i].SelectedValue);
                    }
                    i += 1;
                }
            }


            List<ArticleInfo> wholeList = ArticleController.GetByDnnSearch(Settings_List.General.TypeId);

            List<ArticleInfo> validList = new List<ArticleInfo>();
            string value, oper;
            DateTime searchDate;
            foreach (var item in wholeList)
            {
                ArticleInfo objArticle = ArticleController.Get(item.Id);
                LocalizeObject_Article(objArticle);

                //first check article title
                if (Settings_List.Search_Advanced.BuiltInField_Title
                    && !string.IsNullOrEmpty(txtBuiltInField_Title.Text.Trim()))
                {
                    value = txtBuiltInField_Title.Text.Trim();
                    oper = ddlOper_Title.SelectedValue;
                    switch (oper.ToLower())
                    {
                        //if like, check unlike
                        case "like":
                            if (objArticle.Title.ToLower().Contains(value.ToLower()) == false)
                            {
                                continue;
                            }
                            break;
                        case "unlike"://if unlike, check like
                            if (objArticle.Title.ToLower().Contains(value.ToLower()) == true)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_Category && ddlBuiltInField_Category.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_Category.SelectedValue;
                    oper = ddlOper_Category.SelectedValue;
                    string[] categoryList = objArticle.Categories.Split(',');
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (categoryList.Contains(value) == false)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (categoryList.Contains(value) == true)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_Author && ddlBuiltInField_Author.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_Author.SelectedValue;
                    oper = ddlOper_Author.SelectedValue;

                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.UserId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.UserId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_CreatedDate
                && ddpCreatedDate.SelectedDate != null
                && !string.IsNullOrEmpty(ddpCreatedDate.SelectedDate.Value.ToString())
                    && LocalUtils.IsDate(ddpCreatedDate.SelectedDate.Value.ToString()))
                {
                    searchDate = ddpCreatedDate.SelectedDate.Value;
                    oper = ddlOper_CreatedDate.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.CreatedDate >= searchDate)
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            //if create in same day
                            if (objArticle.CreatedDate.ToShortDateString() != searchDate.ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.CreatedDate <= searchDate)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_PublishDate
              && ddpPublishDate.SelectedDate != null
              && !string.IsNullOrEmpty(ddpPublishDate.SelectedDate.Value.ToString())
                    && LocalUtils.IsDate(ddpPublishDate.SelectedDate.Value.ToString()))
                {
                    searchDate = ddpPublishDate.SelectedDate.Value;
                    oper = ddlOper_PublishDate.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.PublishDate >= searchDate)
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            //if create in same day
                            if (objArticle.PublishDate.ToShortDateString() != searchDate.ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.PublishDate <= searchDate)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_ExpireDate
            && ddpExpireDate.SelectedDate != null
            && !string.IsNullOrEmpty(ddpExpireDate.SelectedDate.Value.ToString())
                    && LocalUtils.IsDate(ddpExpireDate.SelectedDate.Value.ToString()))
                {
                    searchDate = ddpExpireDate.SelectedDate.Value;
                    oper = ddlOper_ExpireDate.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.ExpireDate != null
                                && Null.IsNull(objArticle.ExpireDate) == false
                                && objArticle.ExpireDate >= searchDate)
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.ExpireDate == null
                                || Null.IsNull(objArticle.ExpireDate) == true
                                || objArticle.ExpireDate.ToShortDateString() != searchDate.ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.ExpireDate == null
                                || Null.IsNull(objArticle.ExpireDate) == true
                                || objArticle.ExpireDate <= searchDate)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                //event start
                if (Settings_List.Search_Advanced.BuiltInField_EventStart
          && ddpEventStart.SelectedDate != null
          && !string.IsNullOrEmpty(ddpEventStart.SelectedDate.Value.ToString())
                  && LocalUtils.IsDate(ddpEventStart.SelectedDate.Value.ToString()))
                {
                    searchDate = ddpEventStart.SelectedDate.Value;
                    oper = ddlOper_EventStart.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.EventStart != null
                                && Null.IsNull(objArticle.EventStart) == false
                                && objArticle.EventStart >= searchDate)
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.EventStart == null
                                || Null.IsNull(objArticle.EventStart) == true
                                || objArticle.EventStart.ToShortDateString() != searchDate.ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.EventStart == null
                                || Null.IsNull(objArticle.EventStart) == true
                                || objArticle.EventStart <= searchDate)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }

                //event end
                if (Settings_List.Search_Advanced.BuiltInField_EventEnd
          && ddpEventEnd.SelectedDate != null
          && !string.IsNullOrEmpty(ddpEventEnd.SelectedDate.Value.ToString())
                  && LocalUtils.IsDate(ddpEventEnd.SelectedDate.Value.ToString()))
                {
                    searchDate = ddpEventEnd.SelectedDate.Value;
                    oper = ddlOper_EventEnd.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.EventEnd != null
                                && Null.IsNull(objArticle.EventEnd) == false
                                && objArticle.EventEnd >= searchDate)
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.EventEnd == null
                                || Null.IsNull(objArticle.EventEnd) == true
                                || objArticle.EventEnd.ToShortDateString() != searchDate.ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.EventEnd == null
                                || Null.IsNull(objArticle.EventEnd) == true
                                || objArticle.EventEnd <= searchDate)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }


                if (Settings_List.Search_Advanced.BuiltInField_Views &&
                !string.IsNullOrEmpty(txtBuiltInField_Views.Text)
                    && Utils.IsNumber(txtBuiltInField_Views.Text)
                    && txtBuiltInField_Views.Text != "0")
                {
                    value = txtBuiltInField_Views.Text.Trim();
                    oper = ddlOper_Views.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.Views >= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.Views != int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.Views <= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Settings_List.Search_Advanced.BuiltInField_RatingAverage
                && ddlBuiltInField_RatingAverage.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_RatingAverage.SelectedValue;
                    oper = ddlOper_RatingAverage.SelectedValue;

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.RatingAverage >= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.RatingAverage != int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.RatingAverage <= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                //Country
                if (CurrentType.AllowLocation
              && Settings_List.Search_Advanced.BuiltInField_Country
            && ddlBuiltInField_Country.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_Country.SelectedValue;
                    oper = ddlOper_Country.SelectedValue;
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.CountryId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.CountryId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //State
                if (CurrentType.AllowLocation
                    && Settings_List.Search_Advanced.BuiltInField_Country
              && Settings_List.Search_Advanced.BuiltInField_State
            && ddlBuiltInField_State.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_State.SelectedValue;
                    oper = ddlOper_State.SelectedValue;
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.StateId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.StateId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //City
                if (CurrentType.AllowLocation
                         && Settings_List.Search_Advanced.BuiltInField_Country
              && Settings_List.Search_Advanced.BuiltInField_State
              && Settings_List.Search_Advanced.BuiltInField_City
            && ddlBuiltInField_City.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_City.SelectedValue;
                    oper = ddlOper_City.SelectedValue;
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.CityId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.CityId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //Town
                if (CurrentType.AllowLocation
                      && Settings_List.Search_Advanced.BuiltInField_Country
              && Settings_List.Search_Advanced.BuiltInField_State
              && Settings_List.Search_Advanced.BuiltInField_City
              && Settings_List.Search_Advanced.BuiltInField_Town
            && ddlBuiltInField_Town.SelectedValue != "-1")
                {
                    value = ddlBuiltInField_Town.SelectedValue;
                    oper = ddlOper_Town.SelectedValue;
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.TownId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.TownId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }

                //在单独的函数中检查是否满足udt search
                if (MeetUDTSearch(objArticle.Id, idList, valueList, operList) == false)
                {
                    continue;
                }
                validList.Add(objArticle);
            }

            List<ArticleInfo> sortedList = new List<ArticleInfo>();
            sortedList = GetSortedList(validList, Settings_List.General.IgnoreSortIndex, sort);

            //now we get sorted list
            totalRecords = sortedList.Count;
            return sortedList.Skip(pageSize * (pageIndex)).Take(pageSize).ToList();
        }
        /// <summary>
        /// this code piece exists in both GetArticleList_LocalSearch_Advanced and GetArticleList_ExternalSearch_Advanced,
        /// so we need to abstrace it as a single method
        /// </summary>
        /// <param name="validList"></param>
        /// <param name="ignoreSortIndex"></param>
        /// <param name="sortField"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetSortedList(List<ArticleInfo> validList, bool ignoreSortIndex, string sortField)
        {
            List<ArticleInfo> sortedList = new List<ArticleInfo>();
            if (ignoreSortIndex == true)
            {
                switch (sortField)
                {
                    case "CreationDateDesc":
                        sortedList = (from p in validList orderby p.CreatedDate descending select p).ToList();
                        break;
                    case "CreationDateAsc":
                        sortedList = (from p in validList orderby p.CreatedDate ascending select p).ToList();
                        break;
                    case "PublishDateDesc":
                        sortedList = (from p in validList orderby p.PublishDate descending select p).ToList();
                        break;
                    case "PublishDateAsc":
                        sortedList = (from p in validList orderby p.PublishDate ascending select p).ToList();
                        break;
                    case "LastModifiedDateDesc":
                        sortedList = (from p in validList orderby p.LastModifiedDate descending select p).ToList();
                        break;
                    case "LastModifiedDateAsc":
                        sortedList = (from p in validList orderby p.LastModifiedDate ascending select p).ToList();
                        break;
                    case "ViewsDesc":
                        sortedList = (from p in validList orderby p.Views descending select p).ToList();
                        break;
                    case "ViewsAsc":
                        sortedList = (from p in validList orderby p.Views ascending select p).ToList();
                        break;
                    case "TitleDesc":
                        sortedList = (from p in validList orderby p.Title descending select p).ToList();
                        break;
                    case "TitleAsc":
                        sortedList = (from p in validList orderby p.Title ascending select p).ToList();
                        break;
                    default:
                        sortedList = (from p in validList orderby p.CreatedDate descending select p).ToList();
                        break;
                }
            }
            else
            {
                switch (sortField)
                {
                    case "CreationDateDesc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.CreatedDate descending select p).ToList();
                        break;
                    case "CreationDateAsc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.CreatedDate ascending select p).ToList();
                        break;
                    case "PublishDateDesc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.PublishDate descending select p).ToList();
                        break;
                    case "PublishDateAsc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.PublishDate ascending select p).ToList();
                        break;
                    case "LastModifiedDateDesc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.LastModifiedDate descending select p).ToList();
                        break;
                    case "LastModifiedDateAsc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.LastModifiedDate ascending select p).ToList();
                        break;
                    case "ViewsDesc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.Views descending select p).ToList();
                        break;
                    case "ViewsAsc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.Views ascending select p).ToList();
                        break;
                    case "TitleDesc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.Title descending select p).ToList();
                        break;
                    case "TitleAsc":
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.Title ascending select p).ToList();
                        break;
                    default:
                        sortedList = (from p in validList orderby p.PinOrder ascending, p.CreatedDate descending select p).ToList();
                        break;
                }
            }
            return sortedList;

        }
        private void BindArticle(int pageIndex)
        {
            int totalRecords = 0;
            int pageSize = 10;

            List<ArticleInfo> list = new List<ArticleInfo>();

            switch (CurrentSearchStatus.ToLower())
            {
                case "none":
                    list = GetArticleList_None(pageIndex, ref pageSize, ref totalRecords);
                    break;
                case "localsearch_basic":
                    list = GetArticleList_LocalSearch_Basic(pageIndex, ref pageSize, ref totalRecords);
                    break;
                case "localsearch_advanced":
                    list = GetArticleList_LocalSearch_Advanced(pageIndex, ref pageSize, ref totalRecords);
                    break;
                case "externalsearch_basic":
                    list = GetArticleList_ExternalSearch_Basic(pageIndex, ref pageSize, ref totalRecords);
                    break;
                case "externalsearch_advanced":
                    list = GetArticleList_ExternalSearch_Advanced(pageIndex, ref pageSize, ref totalRecords);
                    break;
                default:
                    list = GetArticleList_None(pageIndex, ref pageSize, ref totalRecords);
                    break;
            }

            foreach (var item in list)
            {
                LocalizeObject_Article(item);
            }

            //开始绑定数据
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)
            {
                dlArticle.Visible = true;
                dlArticle.DataSource = list;
                dlArticle.DataBind();
            }

            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_Grid)
            {
                grArticle.Visible = true;
                //仅在需要的时候才绑定自定义数据
                if (UDFieldList.Count > 0 && Settings_List.UDField.UseBuiltInTemplate && Settings_List.UDField.UDFieldList.Trim() != "")
                {
                    grArticle.DataSource = CreateCustomizeDataTable(list);
                }
                else
                {
                    grArticle.DataSource = list;
                }
                grArticle.DataBind();
            }

            if (Settings_List.Paging.ShowPage)
            {
                tblPaging.Visible = true;
                ctlPagingControl.Span = Settings_List.Paging.PageSpan;
                ctlPagingControl.ShowPageInfo = Settings_List.Paging.ShowPageInfo;
                ctlPagingControl.CurrentPage = pageIndex;
                ctlPagingControl.PageSize = pageSize;
                ctlPagingControl.RecordCount = totalRecords;
            }
        }
        /// <summary>
        /// get article search when currentsearchmode="externalsearch_basic"
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticleList_ExternalSearch_Basic(int pageIndex, ref int pageSize, ref int totalRecords)
        {
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
            {
                pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
            }
            else
            {
                pageSize = Settings_List.Paging.RowCount;
            }

            PortalSecurity ps = new PortalSecurity();
            List<ArticleInfo> list = new List<ArticleInfo>();
            if (Request.Params["ArticleDate"] != null) // 查询模式的日期查询
            {
                DateTime articleDate = new DateTime();
                articleDate = Convert.ToDateTime(Request.Params["ArticleDate"]);
                string dateType = "month";
                if (Request.Params["DateType"] != null)
                {
                    dateType = Convert.ToString(Request.Params["DateType"]);
                }
                if (dateType == "month")
                {
                    list = ArticleController.GetByMonth(Settings_List.General.TypeId, GetUserId(), articleDate, Settings_List.General.SortField, pageSize,
                        Settings_List.Paging.ShowPage, pageSize, pageIndex, ref totalRecords);
                }
                else
                {
                    list = ArticleController.GetByDate(Settings_List.General.TypeId, GetUserId(), articleDate, Settings_List.General.SortField, pageSize,
                       Settings_List.Paging.ShowPage, pageSize, pageIndex, ref totalRecords);
                }
            }
            else //查询模式的其他查询
            {
                string searchTerm = "";
                int categoryId = -1;
                int tagId = -1;
                int userId = -1;

                //if (txtSearch.Text.Trim() != "")//首先检查查询输入框
                //{
                //    searchTerm = txtSearch.Text.Trim();
                //}
                //else
                //{
                if ((Request.Params["ArticleSearchTerm"] != null) && (Request.Params["ArticleSearchTerm"] != ""))
                {
                    searchTerm = Server.UrlDecode(Request.Params["ArticleSearchTerm"]);
                }
                //}
                if (searchTerm != "")
                {
                    searchTerm = ps.InputFilter(searchTerm.Trim(), PortalSecurity.FilterFlag.NoSQL);//防止sql 注入
                }


                if ((Request.Params["ArticleCategoryId"] != null) && (Request.Params["ArticleCategoryId"] != "") && (Utils.IsNumber(Request.Params["ArticleCategoryId"].ToString())))
                {
                    categoryId = Convert.ToInt32(Request.Params["ArticleCategoryId"]);
                }
                if ((Request.Params["ArticleTagId"] != null) && (Request.Params["ArticleTagId"] != "") && (Utils.IsNumber(Request.Params["ArticleTagId"].ToString())))
                {
                    tagId = Convert.ToInt32(Request.Params["ArticleTagId"]);
                }
                if ((Request.Params["ArticleUserId"] != null) && (Request.Params["ArticleUserId"] != "") && (Utils.IsNumber(Request.Params["ArticleUserId"].ToString())))
                {
                    userId = Convert.ToInt32(Request.Params["ArticleUserId"]);
                }

                //v8.5 allows to define a custom userid parameter
                if (!string.IsNullOrEmpty(Settings_List.General.UserIdMapping) && (Request.QueryString[Settings_List.General.UserIdMapping] != null)
                    && (Utils.IsNumber(Request.QueryString[Settings_List.General.UserIdMapping].ToString())))
                {
                    userId = Convert.ToInt32(Request.QueryString[Settings_List.General.UserIdMapping]);
                }

                int groupId = -1;

                //v8.6 allows to define a custom Groupid parameter
                if (!string.IsNullOrEmpty(Settings_List.General.GroupIdMapping) && (Request.QueryString[Settings_List.General.GroupIdMapping] != null)
                    && (Utils.IsNumber(Request.QueryString[Settings_List.General.GroupIdMapping].ToString())))
                {
                    groupId = Convert.ToInt32(Request.QueryString[Settings_List.General.GroupIdMapping]);
                }

                list = ArticleController.GetByParm(Settings_List.General.TypeId, GetUserId(), categoryId, tagId, userId, groupId, searchTerm,
                        Settings_List.General.IgnoreSortIndex, Settings_List.General.SortField, Settings_List.General.PublishDateType, pageSize,
                        Settings_List.Paging.ShowPage, GetCurrentCultureCode(), pageSize, pageIndex, ref totalRecords);
            }
            return list;
        }

        /// <summary>
        /// return data source when in external advanced search
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticleList_ExternalSearch_Advanced(int pageIndex, ref int pageSize, ref int totalRecords)
        {
            if (Settings_List.General.ListStyle == LocalUtils.ArticleListStyle_List)//List 支持多列绑定 
            {
                pageSize = Settings_List.Paging.RowCount * Settings_List.Paging.ColCount;
            }
            else
            {
                pageSize = Settings_List.Paging.RowCount;
            }

            List<ArticleInfo> wholeList = ArticleController.GetByDnnSearch(Settings_List.General.TypeId);

            List<ArticleInfo> validList = new List<ArticleInfo>();
            string value, oper;

            List<string> idList = new List<string>();
            List<string> valueList = new List<string>();
            List<string> operList = new List<string>();
            for (int i = 0; i < 10; i++)
            {
                if (Request.Form["S_UDT" + i.ToString() + "_ID"] != null
   && Request.Form["S_UDT" + i.ToString() + "_Value"] != null
    && Request.Form["S_UDT" + i.ToString() + "_Oper"] != null
     && Utils.IsNumber(Request.Form["S_UDT" + i.ToString() + "_ID"]))
                {
                    idList.Add(Request.Form["S_UDT" + i.ToString() + "_ID"]);
                    valueList.Add(Request.Form["S_UDT" + i.ToString() + "_Value"]);
                    operList.Add(Request.Form["S_UDT" + i.ToString() + "_Oper"]);
                }
            }


            foreach (var item in wholeList)
            {
                ArticleInfo objArticle = ArticleController.Get(item.Id);
                LocalizeObject_Article(objArticle);

                //first check article title
                if (Request.Form["S_Title"] != null && Request.Form["S_Title_Oper"] != null)
                {
                    value = Request.Form["S_Title"];
                    oper = Request.Form["S_Title_Oper"];
                    switch (oper.ToLower())
                    {
                        //if like, check unlike
                        case "like":
                            if (objArticle.Title.ToLower().Contains(value.ToLower()) == false)
                            {
                                continue;
                            }
                            break;
                        case "unlike"://if unlike, check like
                            if (objArticle.Title.ToLower().Contains(value.ToLower()) == true)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Request.Form["S_Category"] != null && Request.Form["S_Category_Oper"] != null)
                {
                    value = Request.Form["S_Category"];
                    oper = Request.Form["S_Category_Oper"];
                    string[] categoryList = objArticle.Categories.Split(',');
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (categoryList.Contains(value) == false)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (categoryList.Contains(value) == true)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Request.Form["S_Author"] != null && Request.Form["S_Author_Oper"] != null)
                {
                    value = Request.Form["S_Author"];
                    oper = Request.Form["S_Author_Oper"];

                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.UserId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.UserId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                if (Request.Form["S_CreatedDate"] != null
                    && Request.Form["S_CreatedDate_Oper"] != null
                    && LocalUtils.IsDate(Request.Form["S_CreatedDate"]))
                {
                    value = Request.Form["S_CreatedDate"];
                    oper = Request.Form["S_CreatedDate_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.CreatedDate >= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            //if create in same day
                            if (objArticle.CreatedDate.ToShortDateString() != DateTime.Parse(value).ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.CreatedDate <= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Request.Form["S_PublishDate"] != null
                   && Request.Form["S_PublishDate_Oper"] != null
                   && LocalUtils.IsDate(Request.Form["S_PublishDate"]))
                {
                    value = Request.Form["S_PublishDate"];
                    oper = Request.Form["S_PublishDate_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.PublishDate >= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            //if create in same day
                            if (objArticle.PublishDate.ToShortDateString() != DateTime.Parse(value).ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.PublishDate <= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Request.Form["S_ExpireDate"] != null
                   && Request.Form["S_ExpireDate_Oper"] != null
                   && LocalUtils.IsDate(Request.Form["S_ExpireDate"]))
                {
                    value = Request.Form["S_ExpireDate"];
                    oper = Request.Form["S_ExpireDate_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.ExpireDate != null
                                && Null.IsNull(objArticle.ExpireDate) == false
                                && objArticle.ExpireDate >= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.ExpireDate == null
                                || Null.IsNull(objArticle.ExpireDate) == true
                                || objArticle.ExpireDate.ToShortDateString() != DateTime.Parse(value).ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.ExpireDate == null
                                || Null.IsNull(objArticle.ExpireDate) == true
                                || objArticle.ExpireDate <= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                //event start
                if (Request.Form["S_EventStart"] != null
                   && Request.Form["S_EventStart_Oper"] != null
                   && LocalUtils.IsDate(Request.Form["S_EventStart"]))
                {
                    value = Request.Form["S_EventStart"];
                    oper = Request.Form["S_EventStart_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.EventStart != null
                                && Null.IsNull(objArticle.EventStart) == false
                                && objArticle.EventStart >= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.EventStart == null
                                || Null.IsNull(objArticle.EventStart) == true
                                || objArticle.EventStart.ToShortDateString() != DateTime.Parse(value).ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.EventStart == null
                                || Null.IsNull(objArticle.EventStart) == true
                                || objArticle.EventStart <= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }

                //event end
                if (Request.Form["S_EventEnd"] != null
                  && Request.Form["S_EventEnd_Oper"] != null
                  && LocalUtils.IsDate(Request.Form["S_EventEnd"]))
                {
                    value = Request.Form["S_EventEnd"];
                    oper = Request.Form["S_EventEnd_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.EventEnd != null
                                && Null.IsNull(objArticle.EventEnd) == false
                                && objArticle.EventEnd >= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.EventEnd == null
                                || Null.IsNull(objArticle.EventEnd) == true
                                || objArticle.EventEnd.ToShortDateString() != DateTime.Parse(value).ToShortDateString())
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.EventEnd == null
                                || Null.IsNull(objArticle.EventEnd) == true
                                || objArticle.EventEnd <= DateTime.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }

                if (Request.Form["S_Views"] != null
                 && Request.Form["S_Views_Oper"] != null
                 && Utils.IsNumber(Request.Form["S_Views"]))
                {
                    value = Request.Form["S_Views"];
                    oper = Request.Form["S_Views_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.Views >= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.Views != int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.Views <= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                if (Request.Form["S_RatingAverage"] != null
                 && Request.Form["S_RatingAverage_Oper"] != null
                 && Utils.IsNumber(Request.Form["S_RatingAverage"]))
                {
                    value = Request.Form["S_RatingAverage"];
                    oper = Request.Form["S_RatingAverage_Oper"];

                    switch (oper.ToLower())
                    {
                        case "lessthan":
                            if (objArticle.RatingAverage >= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "equal":
                            if (objArticle.RatingAverage != int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        case "greaterthan":
                            if (objArticle.RatingAverage <= int.Parse(value))
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                    }
                }
                //country
                if (CurrentType.AllowLocation &&
                    Request.Form["S_Country"] != null && Request.Form["S_Country_Oper"] != null)
                {
                    value = Request.Form["S_Country"];
                    oper = Request.Form["S_Country_Oper"];
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.CountryId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.CountryId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //State
                if (CurrentType.AllowLocation &&
                    Request.Form["S_State"] != null && Request.Form["S_State_Oper"] != null)
                {
                    value = Request.Form["S_State"];
                    oper = Request.Form["S_State_Oper"];
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.StateId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.StateId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //City
                if (CurrentType.AllowLocation &&
                    Request.Form["S_City"] != null && Request.Form["S_City_Oper"] != null)
                {
                    value = Request.Form["S_City"];
                    oper = Request.Form["S_City_Oper"];
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.CityId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.CityId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }
                //Town
                if (CurrentType.AllowLocation &&
                    Request.Form["S_Town"] != null && Request.Form["S_Town_Oper"] != null)
                {
                    value = Request.Form["S_Town"];
                    oper = Request.Form["S_Town_Oper"];
                    switch (oper.ToLower())
                    {
                        //if equal
                        case "equal":
                            if (objArticle.TownId.ToString() != value)
                            {
                                continue;
                            }
                            break;
                        case "unequal"://if unequal
                            if (objArticle.TownId.ToString() == value)
                            {
                                continue;
                            }
                            break;
                        default:
                            continue;
                            break;
                    }
                }

                //在单独的函数中检查是否满足udt search
                if (MeetUDTSearch(objArticle.Id, idList, valueList, operList) == false)
                {
                    continue;
                }
                validList.Add(objArticle);
            }
            List<ArticleInfo> sortedList = new List<ArticleInfo>();
            sortedList = GetSortedList(validList, Settings_List.General.IgnoreSortIndex, Settings_List.General.SortField);

            //now we get sorted list
            totalRecords = sortedList.Count;
            return sortedList.Skip(pageSize * (pageIndex - 1)).Take(pageSize).ToList();
        }

        /// <summary>
        /// whether current article pass the udt search
        /// </summary>
        /// <param name="articleId"></param>
        /// <returns></returns>
        private bool MeetUDTSearch(int articleId, List<string> idList, List<string> valueList, List<string> operList)
        {
            string id, value, oper;

            for (int i = 0; i < idList.Count; i++)
            {
                id = idList[i];
                value = valueList[i];
                oper = operList[i];

                UDFieldInfo objUDField = UDFieldController.Get(int.Parse(id));
                if (objUDField == null || objUDField.TypeId != Settings_List.General.TypeId)
                {
                    return false;
                }
                LocalizeObject_UDField(objUDField);

                UDDataInfo objUDData = UDDataController.GetByCulture(int.Parse(id), articleId, GetCurrentCultureCode());
                //when objUDData is null, get its udt field default value
                string articleValue = objUDData == null ? objUDField.DefaultValue : objUDData.FieldValue;
                if (string.IsNullOrEmpty(articleValue))
                {
                    return false;
                }

                //now compare values
                switch (oper.ToLower())
                {
                    case "equal":
                        if (value.ToLower() != articleValue.ToLower())
                        {
                            return false;
                        }
                        break;
                    case "unequal":
                        if (value.ToLower() == articleValue.ToLower())
                        {
                            return false;
                        }
                        break;
                    case "like":
                        if (articleValue.ToLower().Contains(value.ToLower()) == false)
                        {
                            return false;
                        }

                        break;
                    case "unlike":
                        if (articleValue.ToLower().Contains(value.ToLower()) == true)
                        {
                            return false;
                        }
                        break;
                    case "contain":
                    case "notcontain":
                        string[] existingValues = articleValue.Split(';');
                        if (oper.ToLower() == "contain")
                        {
                            foreach (var item in value.Split(';'))
                            {
                                if (!existingValues.Contains(item))
                                {
                                    return false;
                                }
                            }
                        }
                        if (oper.ToLower() == "notcontain")
                        {
                            foreach (var item in value.Split(';'))
                            {
                                if (existingValues.Contains(item))
                                {
                                    return false;
                                }
                            }
                        }

                        break;
                    case "lessthan":

                        if (objUDField.FieldType.ToLower() == "int32")
                        {
                            if (Utils.IsNumber(value) == false || Utils.IsNumber(articleValue) == false)
                            {
                                return false;
                            }
                            if (int.Parse(articleValue) >= int.Parse(value))
                            {
                                return false;
                            }
                        }

                        if (objUDField.FieldType.ToLower() == "decimal"
                            || objUDField.FieldType.ToLower() == "currency")
                        {
                            if (Microsoft.VisualBasic.Information.IsNumeric(value) == false
                                || Microsoft.VisualBasic.Information.IsNumeric(articleValue) == false)
                            {
                                return false;
                            }
                            if (Decimal.Parse(articleValue) >= Decimal.Parse(value))
                            {
                                return false;
                            }
                        }

                        if (objUDField.FieldType.ToLower() == "datetime"
                            || objUDField.FieldType.ToLower() == "date"
                            || objUDField.FieldType.ToLower() == "time")
                        {
                            if (LocalUtils.IsDate(value) == false || LocalUtils.IsDate(articleValue) == false)
                            {
                                return false;
                            }
                            if (DateTime.Parse(articleValue) >= DateTime.Parse(value))
                            {
                                return false;
                            }
                        }
                        break;

                    case "greaterthan":

                        if (objUDField.FieldType.ToLower() == "int32")
                        {
                            if (Utils.IsNumber(value) == false || Utils.IsNumber(articleValue) == false)
                            {
                                return false;
                            }
                            if (int.Parse(articleValue) <= int.Parse(value))
                            {
                                return false;
                            }
                        }

                        if (objUDField.FieldType.ToLower() == "decimal"
                            || objUDField.FieldType.ToLower() == "currency")
                        {
                            if (Microsoft.VisualBasic.Information.IsNumeric(value) == false
                                || Microsoft.VisualBasic.Information.IsNumeric(articleValue) == false)
                            {
                                return false;
                            }
                            if (Decimal.Parse(articleValue) <= Decimal.Parse(value))
                            {
                                return false;
                            }
                        }

                        if (objUDField.FieldType.ToLower() == "datetime"
                            || objUDField.FieldType.ToLower() == "date"
                            || objUDField.FieldType.ToLower() == "time")
                        {
                            if (LocalUtils.IsDate(value) == false || LocalUtils.IsDate(articleValue) == false)
                            {
                                return false;
                            }
                            if (DateTime.Parse(articleValue) <= DateTime.Parse(value))
                            {
                                return false;
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
            return true;
        }
        private void GenerateUDFieldToGrid()
        {
            //仅在需要的时候才加入自定义数据的template field
            if (UDFieldList.Count > 0 && Settings_List.UDField.UseBuiltInTemplate && Settings_List.UDField.UDFieldList.Trim() != "")
            {
                string[] listDisplay = Settings_List.UDField.UDFieldList.Split(',');
                List<UDFieldInfo> listUDField = new List<UDFieldInfo>();
                foreach (UDFieldInfo item in UDFieldList)
                {
                    foreach (string id in listDisplay)
                    {
                        if (item.Id.ToString() == id)
                        {
                            listUDField.Add(item);
                            break;
                        }
                    }
                }
                foreach (UDFieldInfo item in listUDField)
                {
                    DisplayControl ctlControl = DataType.get_ByName(item.FieldType).DisplayControl;
                    ctlControl.FieldName = item.FieldName;
                    ctlControl.FieldTitle = item.FieldTitle;
                    ctlControl.FieldType = item.FieldType;
                    ctlControl.Width = Settings_List.UDField.UDField_ImageWidth;
                    ctlControl.Height = Settings_List.UDField.UDField_ImageHeight;
                    ctlControl.Target = Settings_List.General.LinkTarget;
                    DataControlField bound = ctlControl.BoundField;
                    grArticle.Columns.Add(bound);
                }
            }
        }
        private System.Data.DataTable CreateCustomizeDataTable(List<ArticleInfo> list)
        {
            DataTable dt = new DataTable();

            //First we need select out udfields which will display 
            string[] listDisplay = Settings_List.UDField.UDFieldList.Split(',');
            List<UDFieldInfo> listUDField = new List<UDFieldInfo>();
            foreach (UDFieldInfo item in UDFieldList)
            {
                foreach (string id in listDisplay)
                {
                    if (item.Id.ToString() == id)
                    {
                        listUDField.Add(item);
                        break;
                    }
                }
            }

            foreach (PropertyInfo info in typeof(ArticleInfo).GetProperties())
            {
                dt.Columns.Add(new DataColumn(info.Name, info.PropertyType));
            }
            foreach (UDFieldInfo item in listUDField)
            {
                DataColumn objColumn = new DataColumn();
                objColumn.ColumnName = item.FieldName;
                objColumn.DataType = typeof(string);
                dt.Columns.Add(objColumn);
            }
            foreach (ArticleInfo item in list)
            {
                DataRow row = dt.NewRow();
                foreach (PropertyInfo info in typeof(ArticleInfo).GetProperties())
                {
                    row[info.Name] = info.GetValue(item, null);
                }
                foreach (UDFieldInfo objField in listUDField)
                {
                    string value = string.Empty;
                    //first, take default value
                    if (!string.IsNullOrEmpty(objField.DefaultValue))
                    {
                        value = objField.DefaultValue;
                    }
                    UDDataInfo objData = UDDataController.GetByCulture(objField.Id, item.Id, GetCurrentCultureCode());

                    if (objData != null)
                    {
                        value = objData.FieldValue;
                    }
                    if (!string.IsNullOrEmpty(value))
                    {
                        if (value.StartsWith("FileID=") && (objField.FieldType.ToLower() == "url"
                            || objField.FieldType.ToLower() == "image"))
                        {
                            value = GetRelativeUrlByFileId_Local(value);//user defined field 只能retrieve 本地文件
                        }
                        if (objField.FieldType.ToLower() == "url" && Utils.IsNumber(value))
                        {
                            value = Globals.NavigateURL(Convert.ToInt32(value));
                        }
                    }

                    row[objField.FieldName] = string.IsNullOrEmpty(value) ? "" : value;
                }
                dt.Rows.Add(row);
            }
            return dt;
        }

        protected string GetAuthorCompany(string userId)
        {
            Cross.Modules.Article.Business.AuthorInfo objAuthor = Cross.Modules.Article.Business.AuthorController.Get(Convert.ToInt32(userId));
            return objAuthor == null ? "" : objAuthor.Company;
        }

        protected string GetRatingImage(string articleId)
        {
            ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
            string imgRating = Settings_List.Content.RatingImage;
            return LocalUtils.ModuleRootPath + "images/ratings/" + imgRating + "/" + imgRating + objArticle.RatingAverage.ToString() + ".gif";
        }
        protected string GetShortenTitle(string title)
        {
            return Settings_List.Content.TitleLength > 0 ? DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_List.Content.TitleLength, "..") : title;
        }
        protected string GetShortenSummary(string articleId, string summary)
        {
            int length = Settings_List.Content.SummaryLength;
            if (summary == "")
            {
                ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
                LocalizeObject_Article(objArticle);
                summary = HtmlUtils.Shorten(Utils.RemoveAllHtmlTags(objArticle.Article), length > 200 ? length : 200, "..");
            }
            return length > 0 ? DotNetNuke.Common.Utilities.HtmlUtils.Shorten(summary, length, "..").Replace(Microsoft.VisualBasic.Constants.vbCrLf, "<br/>") : summary.Replace(Microsoft.VisualBasic.Constants.vbCrLf, "<br/>");
        }

        protected string GetPrefixImage()
        {
            return "~/DesktopModules/CrossArticle/" + LocalUtils.ImagePath_Prefix + "/" + Settings_List.Image.PrefixImage;
        }

        protected string GetNavigate(string articleId, string title)
        {
            if (Settings_List.Image.UseLightBoxEffect)//如果当前设置为点击小图打开大图
            {
                ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));

                return string.IsNullOrEmpty(GetRelativeUrlByFileId(objArticle.Image)) ?
                    objArticle.Thumbnail : GetRelativeUrlByFileId(objArticle.Image);
            }
            int detailTabId = GetSubModulePageId_Detail(Settings_List.General.DetailTab, Settings_List.General.TypeId);

            if (Settings_Portal.General.SpecifyDetailPageForArticle)//允许为每个article 指定详细页面，为某客户特别定制,覆盖前面的detail page
            {
                ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
                if (objArticle.DetailPage != -1)
                {
                    detailTabId = objArticle.DetailPage;
                }
            }
            return GenerateArticleDetailUrl(detailTabId, articleId, title);
        }
        protected string GetUserNavigate(string userId)
        {
            int userTab = TabId;

            userTab = GetSubModulePageId_List(Settings_List.General.TypeId);

            return Globals.NavigateURL(userTab, "",
                "ArticleUserId=" + userId + "&ArticleTypeId=" + Settings_List.General.TypeId.ToString());
        }
        protected void dlArticle_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_List.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_List.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_List.UDField.UDFieldList.Split(',');
                foreach (string fieldId in displayList)
                {
                    UDFieldInfo objUDField = UDFieldController.Get(Convert.ToInt32(fieldId));
                    if (objUDField != null)
                    {
                        LocalizeObject_UDField(objUDField);
                        HtmlTableRow objRow = new HtmlTableRow();
                        objRow.VAlign = "Top";
                        // Caption for the field
                        HtmlTableCell objCell = new HtmlTableCell();
                        objCell.VAlign = "Top";
                        Label lblControl = new Label();
                        string title = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle;
                        if (!title.EndsWith(":"))
                        {
                            title += ": ";
                        }
                        lblControl.Text = title;

                        //  lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                       // lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        private Control GetUDFieldValueControl(int udFieldId, int articleId)
        {
            Label lblDefault = new Label();
            lblDefault.Text = "";

            UDFieldInfo objUDField = UDFieldController.Get(udFieldId);
            LocalizeObject_UDField(objUDField);

            UDDataInfo objData = UDDataController.GetByCulture(udFieldId, articleId, GetCurrentCultureCode());

            string value = string.Empty;

            if (!string.IsNullOrEmpty(objUDField.DefaultValue))//first, we take objUDField.DefaultValue
            {
                value = objUDField.DefaultValue;
            }
            //then take objData.FieldValue
            if (objData != null)
            {
                value = objData.FieldValue;
            }

            if (string.IsNullOrEmpty(value))
            {
                return lblDefault;
            }
            else
            {
                DataType udType = DataType.get_ByName(objUDField.FieldType);
                DisplayControl ctlControl = udType.DisplayControl;
                ctlControl.FieldName = objUDField.FieldName;
                ctlControl.FieldTitle = objUDField.FieldTitle;
                ctlControl.FieldType = objUDField.FieldType;
                ctlControl.FieldID = objUDField.Id;
                ctlControl.ExistingValue = value.Trim();
                ctlControl.Width = Settings_List.UDField.UDField_ImageWidth;
                ctlControl.Height = Settings_List.UDField.UDField_ImageHeight;
                ctlControl.NormalizeFlag = objUDField.NormalizeFlag;
                ctlControl.OutputSettings = objUDField.OutputSettings;
                ctlControl.Target = Settings_List.General.LinkTarget;

                ctlControl.InputSettings = objUDField.InputSettings;
                ctlControl.CheckBoxList_Enabled = Settings_List.UDField.UDField_CheckBoxList_Enabled;
                ctlControl.CheckBoxList_RepeatColumns = Settings_List.UDField.UDField_CheckBoxList_RepeatColumns;
                return ctlControl;
            }
        }
        protected string GetUDFieldValue(string fieldName, string articleId)
        {
            UDFieldInfo objUDField = UDFieldController.GetByName(fieldName, CurrentType.Id);
            if (objUDField == null)
            {
                return "Unknow field name, please check it";
            }
            LocalizeObject_UDField(objUDField);

            UDDataInfo objData = UDDataController.GetByCulture(objUDField.Id, Convert.ToInt32(articleId), GetCurrentCultureCode());

            string value = string.Empty;

            if (!string.IsNullOrEmpty(objUDField.DefaultValue))//first, we take objUDField.DefaultValue
            {
                value = objUDField.DefaultValue;
            }
            //then take objData.FieldValue
            if (objData != null)
            {
                value = objData.FieldValue;
            }

            if (string.IsNullOrEmpty(value.Trim()))
            {
                return "";
            }
            else
            {
                if (value.StartsWith("FileID="))
                {
                    if (objUDField.FieldType.ToLower() == "image" || objUDField.FieldType.ToLower() == "url")
                    {
                        return GetRelativeUrlByFileId_Local(value);//user defined field 只能retrieve 本地文件
                    }

                }
                if (objUDField.FieldType.ToLower() == "url" && Utils.IsNumber(value))
                {
                    return Globals.NavigateURL(Convert.ToInt32(value));
                }
                return value;
            }
        }
        protected void grArticle_DataBinding(object sender, EventArgs e)
        {
            if (grArticle.Columns[0] != null)//image
            {
                grArticle.Columns[0].Visible = Settings_List.Image.ShowImage && CurrentType.FieldEnable_Image;
            }
            if (grArticle.Columns[1] != null)//up down ovotes
            {
                grArticle.Columns[1].Visible = Settings_List.Content.ShowRecommend;
            }
            if (grArticle.Columns[2] != null)//title
            {
                grArticle.Columns[2].Visible = Settings_List.Content.ShowTitle;
            }
            if (grArticle.Columns[3] != null)//UserName
            {
                grArticle.Columns[3].Visible = Settings_List.Content.ShowUserName;
            }
            if (grArticle.Columns[4] != null)//author company
            {
                grArticle.Columns[4].Visible = Settings_List.Content.ShowAuthorCompany;
            }

            if (grArticle.Columns[5] != null)//Author
            {
                grArticle.Columns[5].Visible = Settings_List.Content.ShowAuthor && CurrentType.FieldEnable_Author;
            }
            if (grArticle.Columns[6] != null)//Source
            {
                grArticle.Columns[6].Visible = Settings_List.Content.ShowSource && CurrentType.FieldEnable_Source;
            }
            if (grArticle.Columns[7] != null)//Rating
            {
                grArticle.Columns[7].Visible = Settings_List.Content.ShowRating;
            }
            if (grArticle.Columns[8] != null)//Views
            {
                grArticle.Columns[8].Visible = Settings_List.Content.ShowViews;
            }
            if (grArticle.Columns[9] != null)//country
            {
                grArticle.Columns[9].Visible = Settings_List.Content.ShowLocation_Country && CurrentType.AllowLocation;
            }
            if (grArticle.Columns[10] != null)//state
            {
                grArticle.Columns[10].Visible = Settings_List.Content.ShowLocation_State && CurrentType.AllowLocation;
            }
            if (grArticle.Columns[11] != null)//city
            {
                grArticle.Columns[11].Visible = Settings_List.Content.ShowLocation_City && CurrentType.AllowLocation;
            }
            if (grArticle.Columns[12] != null)//town
            {
                grArticle.Columns[12].Visible = Settings_List.Content.ShowLocation_Town && CurrentType.AllowLocation;
            }

            if (grArticle.Columns[13] != null)//Featured
            {
                grArticle.Columns[13].Visible = Settings_List.Content.ShowFeaturedField;
            }
            if (grArticle.Columns[14] != null)//Summary
            {
                grArticle.Columns[14].Visible = Settings_List.Content.ShowSummary && CurrentType.FieldEnable_Summary;
            }


            if (grArticle.Columns[15] != null)//PublishDate
            {
                grArticle.Columns[15].Visible = Settings_List.Content.ShowPublishDate;
            }

            if (grArticle.Columns[16] != null)//Event Start
            {
                grArticle.Columns[16].Visible = Settings_List.Content.ShowEventStart;
            }

            if (grArticle.Columns[17] != null)//Event End
            {
                grArticle.Columns[17].Visible = Settings_List.Content.ShowEventEnd;
            }
        }
        #endregion
    }
}
   
   

