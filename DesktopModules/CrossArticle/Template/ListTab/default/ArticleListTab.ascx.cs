using Cross.DNN.Common.UserDefinedTable;
using Cross.DNN.Common.Utility;
using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;


namespace Cross.Modules.Article.View
{

    public partial class ArticleListTab : ArticleModuleBase
    {
        public List<DotNetNuke.Common.FileItem> Tabs;
        public TypeInfo CurrentType
        {
            get
            {
                return TypeController.Get(Settings_ListTab.General.TypeId);
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
                            where p.TypeId == Settings_ListTab.General.TypeId
                            select p).ToList();
                    foreach (var item in list)
                    {
                        LocalizeObject_UDField(item);
                    }
                }
                else
                {
                    list = (from p in Cache_UdtList where p.TypeId == Settings_ListTab.General.TypeId select p).ToList();
                }
                return list;

            }
        }

       

        public Setting_ListTab Settings_ListTab;

        override protected void OnInit(EventArgs e)
        {
            Settings_ListTab = new Setting_ListTab(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_ListTab.General.TypeId == -1)
            {
                Settings_ListTab = new Setting_ListTab(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        /// <summary>
        /// Init the tab data
        /// </summary>
        private void InitTabData()
        {
            Tabs = new List<DotNetNuke.Common.FileItem>();
            DotNetNuke.Common.FileItem objFileItem;
            CategoryInfo objCategory = new CategoryInfo();
            if (Settings_ListTab.Category.TabCategory1 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory1);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory1Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory1Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory2 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory2);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory2Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory2Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory3 != -1)
            {
                LocalizeObject_Category(objCategory);
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory3);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory3Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory3Title);
                    Tabs.Add(objFileItem);
                }
            }

            if (Settings_ListTab.Category.TabCategory4 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory4);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory4Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory4Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory5 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory5);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory5Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory5Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory6 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory6);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                        string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory6Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory6Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory7 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory7);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                         string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory7Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory7Title);
                    Tabs.Add(objFileItem);
                }
            }
            if (Settings_ListTab.Category.TabCategory8 != -1)
            {
                objCategory = CategoryController.Get(Settings_ListTab.Category.TabCategory8);
                if (objCategory != null && objCategory.TypeId == Settings_ListTab.General.TypeId)
                {
                    LocalizeObject_Category(objCategory);
                    objFileItem = new FileItem(objCategory.Id.ToString(),
                          string.IsNullOrEmpty(Settings_ListTab.Category.TabCategory8Title) ? objCategory.Name : Settings_ListTab.Category.TabCategory8Title);
                    Tabs.Add(objFileItem);
                }
            }
        }
        #region eventhandler
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Cache_TypeList.Count < 1 || Settings_ListTab.General.TypeId == -1)
            {
                return;
            } 
            InitTabData();
            LocalResourceFile = Localization.GetResourceFile(this, "ArticleListTab.ascx");
          
            if (!IsPostBack)
            {
                if (Tabs.Count > 0)
                {
                    BindArticle();
                    RegisterScript();
                }
            

                DataBind();
            }

        }
        private void RegisterScript()
        {
            DotNetNuke.Framework.jQuery.RequestUIRegistration();
            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //Jquery ui
            sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/desktopmodules/crossArticle/css/jquery-ui-themes-1.11.4/Themes/{1}/jquery-ui.css\" type=\"text/css\"/>",
                FullDomainName, Settings_ListTab.JqueryTab.CssStyle);
            litTabCss.Text = sb.ToString();
        }
 
        #endregion


        #region methods



        /// <summary>
        /// return article list when current search status = "none"
        /// </summary>
        /// <param name="pageIndex"></param>
        /// <param name="totalRecords"></param>
        /// <returns></returns>
        private List<ArticleInfo> GetArticles(int categoryId)
        {
            int pageSize = Settings_ListTab.General.RowCount * Settings_ListTab.General.ColCount;

            List<ArticleInfo> list = new List<ArticleInfo>();
            int totalRecords = 0;
            list = ArticleController.GetByModuleSettings(Settings_ListTab.General.TypeId, GetUserId(), categoryId.ToString(),
                   "", Settings_ListTab.General.ShowFeaturedOnly, Settings_ListTab.Image.ShowImageOnly,
                   "", Settings_ListTab.General.IgnoreSortIndex,
             Settings_ListTab.General.SortField,
             Settings_ListTab.General.PublishDateType,
             pageSize, false,
             GetCurrentCultureCode(), pageSize, 0, ref totalRecords);
            foreach (var item in list)
            {
                LocalizeObject_Article(item);
            }
            return list;
        }

        private void BindArticle()
        {
            if (Tabs.Count > 0)
            {
                dlArticle1.DataSource = GetArticles(Convert.ToInt32(Tabs[0].Value));
                dlArticle1.DataBind();
            }

            if (Tabs.Count > 1)
            {
                dlArticle2.DataSource = GetArticles(Convert.ToInt32(Tabs[1].Value));
                dlArticle2.DataBind();
            }

            if (Tabs.Count > 2)
            {
                dlArticle3.DataSource = GetArticles(Convert.ToInt32(Tabs[2].Value));
                dlArticle3.DataBind();
            }

            if (Tabs.Count > 3)
            {
                dlArticle4.DataSource = GetArticles(Convert.ToInt32(Tabs[3].Value));
                dlArticle4.DataBind();
            }

            if (Tabs.Count > 4)
            {
                dlArticle5.DataSource = GetArticles(Convert.ToInt32(Tabs[4].Value));
                dlArticle5.DataBind();
            }

            if (Tabs.Count > 5)
            {
                dlArticle6.DataSource = GetArticles(Convert.ToInt32(Tabs[5].Value));
                dlArticle6.DataBind();
            }

            if (Tabs.Count > 6)
            {
                dlArticle7.DataSource = GetArticles(Convert.ToInt32(Tabs[6].Value));
                dlArticle7.DataBind();
            }

            if (Tabs.Count > 7)
            {
                dlArticle8.DataSource = GetArticles(Convert.ToInt32(Tabs[7].Value));
                dlArticle8.DataBind();
            }


        }

    
        protected string GetAuthorCompany(string userId)
        {
            Cross.Modules.Article.Business.AuthorInfo objAuthor = Cross.Modules.Article.Business.AuthorController.Get(Convert.ToInt32(userId));
            return objAuthor == null ? "" : objAuthor.Company;
        }

        protected string GetRatingImage(string articleId)
        {
            ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
            string imgRating = Settings_ListTab.Content.RatingImage;
            return LocalUtils.ModuleRootPath + "images/ratings/" + imgRating + "/" + imgRating + objArticle.RatingAverage.ToString() + ".gif";
        }
        protected string GetShortenTitle(string title)
        {
            return Settings_ListTab.Content.TitleLength > 0 ? DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_ListTab.Content.TitleLength, "..") : title;
        }
        protected string GetShortenSummary(string articleId, string summary)
        {
            int length = Settings_ListTab.Content.SummaryLength;
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
            return "~/DesktopModules/CrossArticle/" + LocalUtils.ImagePath_Prefix + "/" + Settings_ListTab.Image.PrefixImage;
        }

        protected string GetNavigate(string articleId, string title)
        {
          
            int detailTabId = GetSubModulePageId_Detail(Settings_ListTab.General.DetailTab, Settings_ListTab.General.TypeId);

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

            userTab = GetSubModulePageId_List(Settings_ListTab.General.TypeId);

            return Globals.NavigateURL(userTab, "",
                "ArticleUserId=" + userId + "&ArticleTypeId=" + Settings_ListTab.General.TypeId.ToString());
        }
        protected void dlArticle1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }

        protected void dlArticle2_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle3_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle4_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle5_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle6_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle7_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
                        objCell.Controls.Add(lblControl);

                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, articleId));
                        objRow.Cells.Add(objCell);
                        tblUDT.Rows.Add(objRow);
                    }
                }
            }
        }
        protected void dlArticle8_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            if (UDFieldList.Count > 0
                && Settings_ListTab.UDField.UseBuiltInTemplate
                && !string.IsNullOrEmpty(Settings_ListTab.UDField.UDFieldList))
            {
                System.Web.UI.HtmlControls.HtmlTable tblUDT = (System.Web.UI.HtmlControls.HtmlTable)e.Item.FindControl("tblUserDefinedField");
                int articleId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
                string[] displayList = Settings_ListTab.UDField.UDFieldList.Split(',');
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
                        lblControl.Text = string.IsNullOrEmpty(objUDField.FieldTitle) ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        lblControl.CssClass = "Normal";
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
                ctlControl.Width = Settings_ListTab.UDField.UDField_ImageWidth;
                ctlControl.Height = Settings_ListTab.UDField.UDField_ImageHeight;
                ctlControl.NormalizeFlag = objUDField.NormalizeFlag;
                ctlControl.OutputSettings = objUDField.OutputSettings;
                ctlControl.Target = Settings_ListTab.General.LinkTarget;

                ctlControl.InputSettings = objUDField.InputSettings;
                ctlControl.CheckBoxList_Enabled = Settings_ListTab.UDField.UDField_CheckBoxList_Enabled;
                ctlControl.CheckBoxList_RepeatColumns = Settings_ListTab.UDField.UDField_CheckBoxList_RepeatColumns;
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
        
        #endregion
    }
}
   
   

