using Cross.DNN.Common.A3;
using Cross.DNN.Common.UserDefinedTable;
using Cross.DNN.Common.Utility;
using Cross.DNN.Common.Utility.TreeHelper;
using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Common.Utilities;
using DotNetNuke.Services.FileSystem;
using DotNetNuke.Services.Localization;
using DotNetNuke.UI.Skins.Controls;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Cross.Modules.Article.View
{
    public partial class Author_Article : ArticleModuleBase
    {
        #region private fields
        private EditControls ListEditControls;
        private List<UDFieldInfo> TypeUdtList
        {
            get
            {
                List<UDFieldInfo> list = (from p in Cache_UdtList where p.TypeId == TypeId select p).ToList();
                return list;
            }
        }
        private int TypeId
        {
            get
            {
                if (ViewState["TypeId"] != null)
                {
                    return Convert.ToInt32(ViewState["TypeId"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["TypeId"] = value;
            }
        }

        private int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] != null)
                {
                    return Convert.ToInt32(ViewState["CurrentPage"]);
                }
                else
                {
                    return 0;
                }
            }
            set
            {
                ViewState["CurrentPage"] = value;
            }
        }
        private string CurrentTarget
        {
            get
            {
                if (ViewState["CurrentTarget"] != null)
                {
                    return Convert.ToString(ViewState["CurrentTarget"]);
                }
                else
                {
                    return "Article";
                }
            }
            set
            {
                ViewState["CurrentTarget"] = value;
            }
        }
        private int ArticleId
        {
            get
            {
                if (ViewState["ArticleId"] != null)
                {
                    return Convert.ToInt32(ViewState["ArticleId"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["ArticleId"] = value;
            }
        }
        private int VideoId
        {
            get
            {
                if (ViewState["VideoId"] != null)
                {
                    return Convert.ToInt32(ViewState["VideoId"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["VideoId"] = value;
            }
        }
        private int AudioId
        {
            get
            {
                if (ViewState["AudioId"] != null)
                {
                    return Convert.ToInt32(ViewState["AudioId"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["AudioId"] = value;
            }
        }
        private int ImageId
        {
            get
            {
                if (ViewState["ImageId"] != null)
                {
                    return Convert.ToInt32(ViewState["ImageId"]);
                }
                else
                {
                    return -1;
                }
            }
            set
            {
                ViewState["ImageId"] = value;
            }
        }
        #endregion
        #region public properties
        public bool HasManagePermission
        {
            get
            {
                return UserInfo.IsInRole(PortalSettings.AdministratorRoleName) 
                    || Cross.DNN.Common.Utility.Utils.HasRolePermission(Settings_Portal.General.ArticleManageRoles)
                    || Cross.DNN.Common.Utility.Utils.HasRolePermission(Settings_Portal.General.ArticleEditorRoles);
            }
        }
        public  TypeInfo CurrentType
        {
            get
            {
                if (TypeId!=-1)
                {
                    return TypeController.Get(TypeId);
                }
                else
                {
                    return new TypeInfo();
                }
            }
        }
#endregion
        #region user defined fields
        private void BuildUDFieldForm()
        {
            List<UDFieldInfo> list = (from p in Cache_UdtList where p.TypeId == TypeId select p).ToList();
            if (list.Count < 1)
            {
                if (tblUserDefinedField.Visible == true)
                {
                    tblUserDefinedField.Rows.Clear();
                    tblUserDefinedField.Visible = false;
                }
                return;
            }
            List<FormColumnInfo> listEditFrom = new List<FormColumnInfo>();
            FormColumnInfo objColumn;
            ListEditControls = new EditControls(ModuleContext);

            foreach (UDFieldInfo objUDField in list)
            {
                objColumn = new FormColumnInfo();
                objColumn.Name = objUDField.FieldName;
                objColumn.IsUserDefinedField = true;
                objColumn.Help = objUDField.HelpText;
                objColumn.Title = (objUDField.FieldTitle == null || objUDField.FieldTitle.Trim() == "") ? objUDField.FieldName : objUDField.FieldTitle;
                objColumn.Required = objUDField.Required;
                objColumn.Visible = true;
                objColumn.EditControl = ListEditControls.Add(objColumn.Name, objColumn.Title, objUDField.FieldType, objUDField.Id, objColumn.Help, objUDField.DefaultValue, objColumn.Required,
                    objUDField.ValidationRule, objUDField.ValidationMessage, objUDField.EditStyle, objUDField.InputSettings, objUDField.OutputSettings, objUDField.NormalizeFlag);
                listEditFrom.Add(objColumn);
            }
            BuildFormAsTable(listEditFrom);
        }
        private void BuildFormAsTable(List<FormColumnInfo> listEditFrom)
        {
            tblUserDefinedField.Visible = true;
            tblUserDefinedField.Rows.Clear();
            foreach (FormColumnInfo objColumn in listEditFrom)
            {
                TableRow objRow = new TableRow();
                //1st column: Caption for the field
                TableCell objCell = new TableCell();
               // objCell.VerticalAlign = VerticalAlign.Top;
                objCell.HorizontalAlign = HorizontalAlign.Right;
                objCell.Controls.Add(GetTitleControl(objColumn.Title, objColumn.Help, objColumn.Required));
                if (objColumn.EditControl == null)
                {
                    objCell.ColumnSpan = 2;
                    objRow.Cells.Add(objCell);
                }
                else
                {
                   // objCell.CssClass = "Normal";
                    objCell.Width = Unit.Pixel(150);
                    objRow.Cells.Add(objCell);


                    //3rd column: Dynamic control
                    objCell = new TableCell();
                   // objCell.VerticalAlign = VerticalAlign.Top;
                    objCell.Controls.Add(objColumn.EditControl);
                    objCell.Width = Unit.Percentage(80);
                    //row visibility:
                    objRow.Cells.Add(objCell);
                    objRow.Visible = true;
                }
                tblUserDefinedField.Rows.Add(objRow);
            }
        }
       
        private void UpdateUserDefinedData(int articleId)
        {
            if (TypeUdtList.Count > 0)
            {
                UDDataInfo objUDData = new UDDataInfo();
                objUDData.ArticleId = articleId;
                foreach (EditControl item in ListEditControls.Values)
                {
                    objUDData.FieldId = item.FieldID;
                    objUDData.FieldValue = item.Value;
                    UDDataController.Update(objUDData);
                }
            }
        }
        private void CopyUserDefinedData(int originalArticleId, int newArticleId)
        {
            if (TypeUdtList.Count > 0)
            {
                UDDataController.CopyUserDefinedData(originalArticleId, newArticleId);
            }
        }
        private void BindUserDefinedData(int articleId)
        {
            if (TypeUdtList.Count > 0)
            {
                List<UDDataInfo> listUDData = UDDataController.GetByArticle(articleId);

                foreach (UDDataInfo objData in listUDData)
                {
                    UDFieldInfo objField = UDFieldController.Get(objData.FieldId);
                    if (objField != null && objData.FieldValue != null && ListEditControls[objField.FieldName] != null)
                    {
                        ListEditControls[objField.FieldName].Value = objData.FieldValue;
                    }

                }
            }
        }
        #endregion

        #region event handler
        protected void Page_Load(object sender, EventArgs e)
        {
           
            RegisterScriptAndCss();

            hlCreatedDate.NavigateUrl = DotNetNuke.Common.Utilities.Calendar.InvokePopupCal(txtCreatedDate);
            lbtnCalendar.NavigateUrl = DotNetNuke.Common.Utilities.Calendar.InvokePopupCal(txtPublishDate);
            lbtnCalendarExpire.NavigateUrl = DotNetNuke.Common.Utilities.Calendar.InvokePopupCal(txtExpireDate);
            hlVoteExpireDate.NavigateUrl = DotNetNuke.Common.Utilities.Calendar.InvokePopupCal(txtVoteExpireDate);

            if (!IsPostBack)
            {
                CheckSecurity();
                //v7.6 limite the department which user can post articles to
                ddlType.DataSource = GetUserDepartments(UserId);
                ddlType.DataBind();
                TypeId = Convert.ToInt32(ddlType.SelectedValue);
                ArticleId = -1;
                BindControl();             
                LoadCategories();
                BindTag();
                BindArticleList();
                BindLocationCountry();
                OnLocationCountry_SelectedIndexChanged();
                CurrentTarget = "Article";
                SetLayout("ViewArticleList");
                DataBind();
            }
            BuildUDFieldForm();
        }

        private void RegisterScriptAndCss()
        {
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQueryUI);
            StringBuilder sb = new StringBuilder();
            //Jquery ui
            sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/desktopmodules/CrossArticle/css/jquery-ui-themes-1.11.4/themes/flick/jquery-ui.css\" type=\"text/css\"  />{1}", FullDomainName, "\r\n");
           
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Cp_Detail_Script", sb.ToString());
        }
        //设定控件的初始状态
        private void BindControl()
        {
            lblArticleQuota.Text =
              string.Format(Localization.GetString("lblArticleQuota", LocalResourceFile),
              ArticleCount == LocalUtils.ItemCount_Unlimited ?
              Localization.GetString("Unlimited", LocalUtils.ResourcesFile_Shared) : ArticleCount.ToString(),
              ArticleController.GetItemCount(PortalId, UserId).ToString());

            lbl_Tip_SelectCategory.Text = string.Format(Localization.GetString("Tip_SelectCategory", LocalResourceFile),
                   Settings_Portal.General.CategorySelectCount.ToString());

            ctlPagingControl.ResourceFile = LocalUtils.ResourcesFile_Shared;//绑定资源文件

            string fileStorage = Settings_Portal.General.FileStorage;
            string uploadUrl = Settings_Portal.General.FileStorage == LocalUtils.FileStorage_A3 ? EditUrl("Author_A3File") : EditUrl("Author_LocalFileUpload2");

            ctlImage.ShowControlBar = InFileManageRoles;
            ctlImage.ShowFile = InFileManageRoles;
            ctlImage.ShowEmbed = false;
            ctlImage.ShowUrl = true;
            ctlImage.ShowThumbnailImage = false;
            ctlImage.StorageMode = fileStorage;
            ctlImage.UploadUrl = uploadUrl;
            ctlImage.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

            ctlAttachment.ShowControlBar = InFileManageRoles;
            ctlAttachment.ShowFile = InFileManageRoles;
            ctlAttachment.ShowEmbed = false;
            ctlAttachment.ShowUrl = true;
            ctlAttachment.ShowThumbnailImage = true;
            ctlAttachment.StorageMode = fileStorage;
            ctlAttachment.UploadUrl = uploadUrl;
            ctlAttachment.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

            ctlVideoFile.ShowControlBar = true;
            ctlVideoFile.ShowFile = InFileManageRoles;
            ctlVideoFile.ShowEmbed = true;
            ctlVideoFile.ShowUrl = true;
            ctlVideoFile.ShowThumbnailImage = true;
            ctlVideoFile.StorageMode = fileStorage;
            ctlVideoFile.UploadUrl = uploadUrl;
            ctlVideoFile.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;


            ctlAudioFile.ShowControlBar = InFileManageRoles;
            ctlAudioFile.ShowFile = InFileManageRoles;
            ctlAudioFile.ShowEmbed = false;
            ctlAudioFile.ShowUrl = true;
            ctlAudioFile.ShowThumbnailImage = true;
            ctlAudioFile.StorageMode = fileStorage;
            ctlAudioFile.UploadUrl = uploadUrl;
            ctlAudioFile.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

            ctlImageFile.ShowControlBar = InFileManageRoles;
            ctlImageFile.ShowFile = InFileManageRoles;
            ctlImageFile.ShowEmbed = false;
            ctlImageFile.ShowUrl = true;
            ctlImageFile.ShowThumbnailImage = false;
            ctlImageFile.StorageMode = fileStorage;
            ctlImageFile.UploadUrl = uploadUrl;
            ctlImageFile.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

            if (InFileManageRoles)
            {
                ctlVideoFolder.ShowFolderListOnly = true;
                ctlVideoFolder.StorageMode = fileStorage;
                ctlVideoFolder.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

                ctlAudioFolder.ShowFolderListOnly = true;
                ctlAudioFolder.StorageMode = fileStorage;
                ctlAudioFolder.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;

                ctlImageFolder.ShowFolderListOnly = true;
                ctlImageFolder.StorageMode = fileStorage;
                ctlImageFolder.Local_FolderRootPrefix = Settings_Portal.Local.UserFolderRoot;
                ctlImageFolder.ShowThumbnailImage = false;

            }


            lblPortalDisableComment.Visible = !Settings_Portal.Comment.AllowComment;
            lblPortalDisableRating.Visible = !Settings_Portal.Rating.AllowRating;
            lblPortalDisableRecommend.Visible = !Settings_Portal.Recommend.AllowRecommend;

            txtPinOrder.Text = "10000";

            txtCreatedDate.Text = DateTime.Now.ToShortDateString();
            txtPublishDate.Text = DateTime.Now.ToShortDateString();
            ddlDetailPage.DataSource = DotNetNuke.Entities.Tabs.TabController.GetPortalTabs(PortalId,
                DotNetNuke.Common.Utilities.Null.NullInteger, true, true);
            ddlDetailPage.DataBind();
            //article detail page 仅对管理员有效
            if (Settings_Portal.General.SpecifyDetailPageForArticle && HasManagePermission)
            {
                trDetailPageTip.Visible = true;
                trDetailPage.Visible = true;
            }
            chkAuthed.Checked = !Settings_Portal.General.ArticleRequireApproval;

            //ViewRoles
            cblViewRoles = Utils.FillRolesCheckBox(cblViewRoles, Settings_Portal.General.ArticleViewRoles, PortalSettings.AdministratorRoleId, PortalId);

            //Rating value
            chkAllowRating.Checked = Settings_Portal.Rating.AllowRating;
            cblRatingRoles = Utils.FillRolesCheckBox(cblRatingRoles, Settings_Portal.Rating.RatingRoles, PortalSettings.AdministratorRoleId, PortalId);

            //Recommend
            chkAllowRecommend.Checked = Settings_Portal.Recommend.AllowRecommend;
            cblRecommendRoles = Utils.FillRolesCheckBox(cblRecommendRoles, Settings_Portal.Recommend.RecommendRoles, PortalSettings.AdministratorRoleId, PortalId);
            //Comment value
            chkAllowComment.Checked = Settings_Portal.Comment.AllowComment;
            chkAutoAuthComment.Checked = Settings_Portal.Comment.AutoAuthComment;
            cblCommentRoles = Utils.FillRolesCheckBox(cblCommentRoles, Settings_Portal.Comment.CommentRoles, PortalSettings.AdministratorRoleId, PortalId);
            //attachment download roles
            cblDownloadRoles = Utils.FillRolesCheckBox(cblDownloadRoles, Settings_Portal.Download.DownloadRoles, PortalSettings.AdministratorRoleId, PortalId);

            cblVoteRoles = Utils.FillRolesCheckBox(cblVoteRoles, Settings_Portal.Vote.VoteRoles, PortalSettings.AdministratorRoleId, PortalId);

            if (Settings_Portal.General.EnableSocialShare)
            {
                BindUserGroups();
            }
            eventStartDatePicker.SelectedDate = DateTime.Now;
            eventEndDatePicker.SelectedDate = DateTime.Now;
        }
        private void BindUserGroups()
        {
            //如果当前为super user,则只列出当前super user 所创建的group,其他用户则判断当前用户是否属于该group
            //这么做的原因是UserInfo.IsInRole(grp.RoleName) 这个判断当super user  时完全不起作用
            IList<DotNetNuke.Security.Roles.RoleInfo> roles = DotNetNuke.Security.Roles.RoleController.Instance.GetRoles(PortalId,
                                                (grp) => grp.SecurityMode != DotNetNuke.Security.Roles.SecurityMode.SecurityRole
                                                            && grp.Status == DotNetNuke.Security.Roles.RoleStatus.Approved
                                                            && (UserInfo.IsSuperUser ? grp.CreatedByUserID == UserId : UserInfo.IsInRole(grp.RoleName))
                                        );
            if (roles.Count > 0)
            {
                cblGroups.DataTextField = "RoleName";
                cblGroups.DataValueField = "RoleId";
                cblGroups.DataSource = roles;
                cblGroups.DataBind();
                lblNoGroup.Visible = false;
                cblGroups.Visible = true;
            }
            else
            {
                lblNoGroup.Visible = true;
                cblGroups.Visible = false;
            }
        }
        protected string GetArticleUrl(string articleId)
        {
            int tab = TabId;
            ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
            if (objArticle != null)
            {
                TypeInfo objType = TypeController.Get(objArticle.TypeId);
                if (objType.DetailPage != DotNetNuke.Common.Utilities.Null.NullInteger)
                {
                    tab = objType.DetailPage;
                }
            }
         
            return GenerateArticleDetailUrl(tab, articleId, objArticle.Title);
        }
        private void BindTag()
        {
            txtTag2.Visible = Settings_Portal.General.TagSelectCount > 1;
            txtTag3.Visible = Settings_Portal.General.TagSelectCount > 2;
            txtTag4.Visible = Settings_Portal.General.TagSelectCount > 3;
            txtTag5.Visible = Settings_Portal.General.TagSelectCount > 4;
            txtTag6.Visible = Settings_Portal.General.TagSelectCount > 5;
            txtTag7.Visible = Settings_Portal.General.TagSelectCount > 6;
            txtTag8.Visible = Settings_Portal.General.TagSelectCount > 7;
            txtTag9.Visible = Settings_Portal.General.TagSelectCount > 8;
            txtTag10.Visible = Settings_Portal.General.TagSelectCount > 9;

            List<TagInfo> tagList = TagController.GetByType(TypeId);
       
            //var popularList = from p in tagList orderby p.Tag ascending select new { Tag = p.Tag };
            //ddlPopularTag.DataSource = popularList.Take(300);

            var popularList = from p in tagList orderby p.ArticleCounts descending select new { Tag = p.Tag };
            ddlPopularTag.DataSource = popularList.Take(60);
            ddlPopularTag.DataBind();

        }

        private void CheckSecurity()
        {
            if (TrialExpired)
            {
                Response.Redirect(DotNetNuke.Common.Globals.NavigateURL(TabId), true);
            }
            if (Cache_TypeList.Count < 1)
            {
                Response.Redirect(DotNetNuke.Common.Globals.NavigateURL(TabId), true);
            }
            //检查是否为每个type 都设置了category
            foreach (TypeInfo item in Cache_TypeList)
            {
                if ((from p in Cache_CategoryList where p.TypeId == item.Id select p).ToList().Count < 1)
                {
                    Response.Redirect(DotNetNuke.Common.Globals.NavigateURL(TabId), true);
                }
            }
            //check to see if there is a valid country
            if (CountryController.GetByPortal(PortalId).Count() < 1)
            {
                Response.Redirect(DotNetNuke.Common.Globals.NavigateURL(TabId), true);
            }
            if (InEditRoles_CurrentUser_Article)
            {
                return;
            }
            Response.Redirect(DotNetNuke.Common.Globals.NavigateURL("Access Denied"), true);
        }
        #endregion
        #region TreeView

        private void LoadCategories()
        {
            List<CategoryInfo> validList = (from p in Cache_CategoryList where p.TypeId == TypeId select p).ToList();
            //转换目录信息列表至树形节点列表
            List<RecursiveCategoryData> listRecursive = LocalUtils.ConvertCategoryListToRecursiveList(validList);
            RecursiveCategoryItem m_recursiveCategoryRoot;
            m_recursiveCategoryRoot = RecursiveHelper.ConvertListToRecursiveItem(listRecursive);


            RecursiveHelper.ConvertRecursiveItemToAspNetTree(ref this.tvCategory, m_recursiveCategoryRoot);

            List<CategoryInfo> list = CategoryController.GetByType(TypeId);


            //if there is only 1 category, we should mark it as selected
            if (list.Count == 1)
            {
                foreach (TreeNode node in tvCategory.Nodes)
                {
                    node.Checked = true;
                }
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
            a.Name = "< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >";
            listCategory.Add(a);
            ddlCategory.DataSource = listCategory;
            ddlCategory.DataBind();
            ddlCategory.SelectedValue = "-1";
        }



        #endregion

        #region  helper method
        private void BindArticle(int articleId)
        {
            ArticleInfo objArticle =  ArticleController.Get(articleId);
            if (objArticle == null)
            {
                return;
            }

            txtTitle.Text = objArticle.Title;
            txtSubTitle.Text = objArticle.SubTitle;
            txtAuthor.Text = objArticle.Author;
            txtSource.Text = objArticle.Source;
            chkQuote.Checked = objArticle.Quote;
            txtPinOrder.Text = Convert.ToString(objArticle.PinOrder);
            chkDraft.Checked = objArticle.Draft;
            chkReadTrack.Checked = objArticle.ReadTrack;

            ctlLinkUrl.Url = objArticle.LinkUrl;
            chkFeatured.Checked = objArticle.Featured;
            chkAuthed.Checked = objArticle.Authed;
            chkActive.Checked = objArticle.Active;
            chkImportFromFeed.Checked = objArticle.ImportFromFeed;
            //Image

            ctlImage.Url = objArticle.Image;
            txtImageDescription.Text = objArticle.ImageDescription;
            RecursiveHelper.FillAspNetTreeCheckBox(ref tvCategory, objArticle.Categories, true);

            List<ArticleToTagInfo> tags = (from t in ArticleToTagController.GetByArticle(articleId) select t).ToList();

            txtTag1.Text = tags.Count > 0 ? tags[0].Tag : "";
            txtTag2.Text = tags.Count > 1 ? tags[1].Tag : "";
            txtTag3.Text = tags.Count > 2 ? tags[2].Tag : "";
            txtTag4.Text = tags.Count > 3 ? tags[3].Tag : "";
            txtTag5.Text = tags.Count > 4 ? tags[4].Tag : "";
            txtTag6.Text = tags.Count > 5 ? tags[5].Tag : "";
            txtTag7.Text = tags.Count > 6 ? tags[6].Tag : "";
            txtTag8.Text = tags.Count > 7 ? tags[7].Tag : "";
            txtTag9.Text = tags.Count > 8 ? tags[8].Tag : "";
            txtTag10.Text = tags.Count > 9 ? tags[9].Tag : "";

            //Date
            if (!Null.IsNull(objArticle.CreatedDate)) txtCreatedDate.Text = objArticle.CreatedDate.ToShortDateString();

            if (!Null.IsNull(objArticle.PublishDate)) txtPublishDate.Text = objArticle.PublishDate.ToShortDateString();
            if (!Null.IsNull(objArticle.ExpireDate)) txtExpireDate.Text = objArticle.ExpireDate.ToShortDateString();
            
            //detail page
            if (ddlDetailPage.Items.FindByValue(objArticle.DetailPage.ToString()) != null)
            {
                ddlDetailPage.SelectedIndex = -1;
                ddlDetailPage.SelectedValue = objArticle.DetailPage.ToString();
            }

            cblViewRoles = Utils.FillRolesCheckBox(cblViewRoles, objArticle.ViewRoles, PortalSettings.AdministratorRoleId, PortalId);

            //rating 
            chkAllowRating.Checked = objArticle.AllowRating;
            cblRatingRoles = Utils.FillRolesCheckBox(cblRatingRoles, objArticle.RatingRoles, PortalSettings.AdministratorRoleId, PortalId);

            //Comment value
            chkAllowComment.Checked = objArticle.AllowComment;
            chkAutoAuthComment.Checked = objArticle.AutoAuthComment;
            cblCommentRoles = Utils.FillRolesCheckBox(cblCommentRoles, objArticle.CommentRoles, PortalSettings.AdministratorRoleId, PortalId);

            //
            chkAllowRecommend.Checked = objArticle.AllowRecommend;
            cblRecommendRoles = Utils.FillRolesCheckBox(cblRecommendRoles, objArticle.RecommendRoles, PortalSettings.AdministratorRoleId, PortalId);

            cblDownloadRoles = Utils.FillRolesCheckBox(cblDownloadRoles, objArticle.DownloadRoles, PortalSettings.AdministratorRoleId, PortalId);


            if (!DotNetNuke.Common.Utilities.Null.IsNull(objArticle.EventStart) && CurrentType.FieldEnable_EventStart)
            {
                eventStartDatePicker.SelectedDate = objArticle.EventStart;
            }
            if (!DotNetNuke.Common.Utilities.Null.IsNull(objArticle.EventEnd) && CurrentType.FieldEnable_EventEnd)
            {
                eventEndDatePicker.SelectedDate = objArticle.EventEnd;
            }


            txtSummary.Text = objArticle.Summary;
            txtDetail.Text = string.IsNullOrEmpty(objArticle.Article)?"":Server.HtmlDecode(objArticle.Article);

            txtField1.Text = string.IsNullOrEmpty(objArticle.Field1) ? "" : Server.HtmlDecode(objArticle.Field1);
            txtField2.Text = string.IsNullOrEmpty(objArticle.Field2) ? "" : Server.HtmlDecode(objArticle.Field2);
            txtField3.Text = string.IsNullOrEmpty(objArticle.Field3) ? "" : Server.HtmlDecode(objArticle.Field3);
            txtField4.Text = string.IsNullOrEmpty(objArticle.Field4) ? "" : Server.HtmlDecode(objArticle.Field4);
            txtField5.Text = string.IsNullOrEmpty(objArticle.Field5) ? "" : Server.HtmlDecode(objArticle.Field5);

            //location and google map
            BindArticleLocation(objArticle);
            txtLatitude.Text = objArticle.Latitude;
            txtLongitude.Text = objArticle.Longitude;

            //vote
            txtVoteTitle.Text = objArticle.VoteTitle;
            txtVoteCookieDays.Text = objArticle.VoteCookieDays < 1 ? "1" : objArticle.VoteCookieDays.ToString();
            chkVoteMultipleChoice.Checked = objArticle.MultipleChoice;
            cblVoteRoles = Utils.FillRolesCheckBox(cblVoteRoles, objArticle.VoteRoles, PortalSettings.AdministratorRoleId, PortalId);

            if (!Null.IsNull(objArticle.VoteExpireDate))
            {
                txtVoteExpireDate.Text = objArticle.VoteExpireDate.ToShortDateString();
            }
            else
            {
                txtVoteExpireDate.Text = "";
            }

            List<VoteOptionInfo> options = VoteOptionController.GetByArticle(ArticleId).ToList();
            txtVote1.Text = options.Count>0?options[0].Title:"";
            txtVote2.Text = options.Count > 1 ? options[1].Title : "";
            txtVote3.Text = options.Count > 2 ? options[2].Title : "";
            txtVote4.Text = options.Count > 3 ? options[3].Title : "";
            txtVote5.Text = options.Count > 4 ? options[4].Title : "";
            txtVote6.Text = options.Count > 5 ? options[5].Title : "";
            txtVote7.Text = options.Count > 6 ? options[6].Title : "";
            txtVote8.Text = options.Count > 7 ? options[7].Title : "";
            txtVote9.Text = options.Count > 8 ? options[8].Title : "";
            txtVote10.Text = options.Count > 9 ? options[9].Title : "";
            txtVote11.Text = options.Count > 10 ? options[10].Title : "";
            txtVote12.Text = options.Count > 11 ? options[11].Title : "";
            txtVote13.Text = options.Count > 12 ? options[12].Title : "";
            txtVote14.Text = options.Count > 13 ? options[13].Title : "";
            txtVote15.Text = options.Count > 14 ? options[14].Title : "";
            txtVote16.Text = options.Count > 15 ? options[15].Title : "";
            txtVote17.Text = options.Count > 16 ? options[16].Title : "";
            txtVote18.Text = options.Count > 17 ? options[17].Title : "";
            txtVote19.Text = options.Count > 18 ? options[18].Title : "";
            txtVote20.Text = options.Count > 19 ? options[19].Title : "";
            
            BindUserDefinedData(articleId);

            if (Settings_Portal.General.EnableSocialShare)
            {
                txtProtectPassword.Text = objArticle.ProtectPassword;
                chkFriends.Checked = objArticle.Friends;
                chkFollowers.Checked = objArticle.Followers;
                if (rblShareType.Items.FindByValue(objArticle.ShareType.ToString()) != null)
                {
                    rblShareType.SelectedIndex = -1;
                    rblShareType.Items.FindByValue(objArticle.ShareType.ToString()).Selected = true;
                    OnShareType_SelectedIndexChanged(objArticle.ShareType.ToString());
                }
                //绑定groups items, first we need empty every item
                foreach (System.Web.UI.WebControls.ListItem item in cblGroups.Items)
                {
                    item.Selected = false;
                }
                if (!string.IsNullOrEmpty(objArticle.Groups))
                {
                    foreach (string group in objArticle.Groups.Split(','))
                    {
                        foreach (System.Web.UI.WebControls.ListItem item in cblGroups.Items)
                        {
                            if (item.Value == group)
                            {
                                item.Selected = true;
                                break;
                            }
                        }
                    }
                }
            }

        }

        protected void rblShareType_SelectedIndexChanged(object sender, EventArgs e)
        {
            OnShareType_SelectedIndexChanged(rblShareType.SelectedValue);
        }
        private void OnShareType_SelectedIndexChanged(string s)
        {
            trProtectPassword.Visible = s == "2";
            trFriends.Visible = s == "3";
            trFollowers.Visible = s == "3";
            trGroups.Visible = s == "3";
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            switch (CurrentTarget)
            {
                case "Article":
                    //Unregister standard version.
                    if ((CurrentEdition == Cross.DNN.Common.License.Edition.Standard) 
                        && (!Settings_Portal.General.Registered)
                         && !(Request.Url.ToString().ToLower().IndexOf("localhost") >= 0))
                    {
                        if (ArticleController.GetItemCount(PortalId,-1) > LocalUtils.ItemCount_UnregisterVersionLimit)
                        {
                            DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("RegModuleTip", LocalResourceFile),
                                ModuleMessage.ModuleMessageType.YellowWarning);
                            return;
                        }
                    }
                    //already reach articles quota, can't add new article anymore.
                    if (ArticleCount != Cross.Modules.Article.Business.LocalUtils.ItemCount_Unlimited
                        && ArticleController.GetItemCount(PortalId, UserId) >= ArticleCount)
                    {
                        DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("Warning_ExceedQuota", LocalResourceFile), 
                            ModuleMessage.ModuleMessageType.YellowWarning);
                        return;
                    }
                    txtField1.Text = Server.HtmlDecode(CurrentType.Field1Default);
                    txtField2.Text = Server.HtmlDecode(CurrentType.Field2Default);
                    txtField3.Text = Server.HtmlDecode(CurrentType.Field3Default);
                    txtField4.Text = Server.HtmlDecode(CurrentType.Field4Default);
                    txtField5.Text = Server.HtmlDecode(CurrentType.Field5Default);
                    ArticleId = -1;
                  
                    txtProtectPassword.Text = AuthorController.Get(UserId).ProtectPassword;

                    txtTitle.Text = "";
                    txtTitle.Focus();
                    break;
                default:
                    break;
            }
            SetLayout("Add" + CurrentTarget);
        }
        

        private void UpdateArticle()
        {
            ArticleInfo objArticle = new ArticleInfo();
            if (ArticleId!=-1)
            {
                objArticle = ArticleController.Get(ArticleId);
            }
            objArticle.Id = ArticleId;
            objArticle.PortalId = PortalId;
            objArticle.TypeId = TypeId;
            //Normal 
            objArticle.Title = txtTitle.Text;
            objArticle.SubTitle = txtSubTitle.Text;

            objArticle.Author = txtAuthor.Text;
            objArticle.Source = txtSource.Text;
            objArticle.Quote = chkQuote.Checked;
            objArticle.Draft = chkDraft.Checked;
            objArticle.ImportFromFeed = chkImportFromFeed.Checked;
            objArticle.LinkUrl = ctlLinkUrl.Url;

            //event start and event end
            if (CurrentType.FieldEnable_EventStart && eventStartDatePicker.SelectedDate!=null)
            {
                objArticle.EventStart = eventStartDatePicker.SelectedDate.Value;
            }
            else
            {
                objArticle.EventStart = DateTime.Now;
            }

            if (CurrentType.FieldEnable_EventEnd && eventEndDatePicker.SelectedDate != null)
            {
                objArticle.EventEnd = eventEndDatePicker.SelectedDate.Value;
            }
            else
            {
                objArticle.EventEnd = DateTime.Now;
            }

            if (HasManagePermission)
            {
                objArticle.PinOrder = Convert.ToInt32(txtPinOrder.Text);
                //other
                if (Settings_Portal.General.ArticleRequireApproval == true)
                {
                    objArticle.Authed = chkAuthed.Checked;
                }
                else
                {
                    objArticle.Authed = true;
                }
                objArticle.Featured = chkFeatured.Checked;
            }
            else
            {
                objArticle.PinOrder = 10000;
                objArticle.Authed = !Settings_Portal.General.ArticleRequireApproval;
                objArticle.Featured = false;
            }
            //read tracking
            if (HasManagePermission && Settings_Portal.ReadTrack.Enable)
            {
                 objArticle.ReadTrack=chkReadTrack.Checked;
            }
            else
            {
                objArticle.ReadTrack = Settings_Portal.ReadTrack.Enable;
            }
         
            objArticle.Active = chkActive.Checked;


            if (CurrentType.FieldEnable_Image)
            {
                //Image and thumbnail
                objArticle.ImageDescription = txtImageDescription.Text;
                objArticle.Image = ctlImage.Url;
                objArticle.Thumbnail = "";
            }
            else
            {
                objArticle.ImageDescription = string.Empty;
                objArticle.Image = string.Empty;
                objArticle.Thumbnail = string.Empty;
            }
            //File
            if (objArticle.Image.StartsWith("FileID="))
            {
                //local file
                if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_Local)
                {
                  
                    DotNetNuke.Services.FileSystem.IFileInfo fi = new DotNetNuke.Services.FileSystem.FileInfo();
                    DotNetNuke.Entities.Portals.PortalController ctlPortal = new DotNetNuke.Entities.Portals.PortalController();
                    DotNetNuke.Entities.Portals.PortalInfo pi = ctlPortal.GetPortal(PortalId);
                    fi = GetFileInfoById(objArticle.Image);
                    if (fi != null && System.IO.File.Exists(fi.PhysicalPath))
                    {
                        objArticle.Thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + fi.Folder + fi.FileName;
                        System.IO.FileInfo physicalFile = new System.IO.FileInfo(fi.PhysicalPath);

                        if (!fi.FileName.ToLower().StartsWith("thumb_"))//文件没有以"thumb_"开头，则先查找是否存在以thumb_ 开头的同名图片
                        {
                            if (System.IO.File.Exists(physicalFile.DirectoryName + "\\" + "thumb_" + physicalFile.Name))//存在该文件，则自动指向
                            {
                                objArticle.Thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + fi.Folder + "thumb_" + fi.FileName;
                            }
                            else//不存在，则生成该文件，然后指向,注意此处排除.gif 文件，以免一些人上传些gif 动画来害人
                            {
                                if (Settings_Portal.General.GenerateThumb&&!fi.FileName.ToLower().EndsWith(".gif"))
                                {
                                    Utils.ResizeImage(fi.PhysicalPath, Settings_Portal.General.ThumbnailSize, physicalFile.DirectoryName + "\\" + "thumb_" + physicalFile.Name);
                                    objArticle.Thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + fi.Folder + "thumb_" + fi.FileName;
                                }
                            }
                        }
                    }
                }
                //a3
                if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_A3)
                {
                    int a3FileId = Convert.ToInt32(objArticle.Image.Replace("FileID=", ""));
                    A3FileInfo objA3File = A3FileController.Get(a3FileId);
                    if (objA3File != null && A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName) != null)
                    {
                        objArticle.Thumbnail = A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName).A3Url;
                    }
                }
            }
            //External images
            if (objArticle.Image.ToLower().StartsWith("http"))
            {
                objArticle.Thumbnail = objArticle.Image;
            }
            //Add Categories
            objArticle.Categories = RecursiveHelper.GetAspNetTreeCheckList(tvCategory);
            objArticle.Field1 = GetHtmlEditorText(txtField1.Text);
            objArticle.Field2 = GetHtmlEditorText(txtField2.Text);
            objArticle.Field3 = GetHtmlEditorText(txtField3.Text);
            objArticle.Field4 = GetHtmlEditorText(txtField4.Text);
            objArticle.Field5 = GetHtmlEditorText(txtField5.Text);

            //location
            objArticle.CountryId = Convert.ToInt32(ddlLocationCountry.SelectedValue);
            objArticle.Country = ddlLocationCountry.SelectedValue == "-1" ? "" : ddlLocationCountry.SelectedItem.Text;

            objArticle.StateId = Convert.ToInt32(ddlLocationState.SelectedValue);
            objArticle.State = ddlLocationState.SelectedValue == "-1" ? "" : ddlLocationState.SelectedItem.Text;

            objArticle.CityId = Convert.ToInt32(ddlLocationCity.SelectedValue);
            objArticle.City = ddlLocationCity.SelectedValue == "-1" ? "" : ddlLocationCity.SelectedItem.Text;

            objArticle.TownId = Convert.ToInt32(ddlLocationTown.SelectedValue);
            objArticle.Town = ddlLocationTown.SelectedValue == "-1" ? "" : ddlLocationTown.SelectedItem.Text;

            //Google maps
            objArticle.Latitude=txtLatitude.Text;
            objArticle.Longitude=txtLongitude.Text;

            //vote
            objArticle.VoteTitle = txtVoteTitle.Text;
            objArticle.VoteCookieDays = Convert.ToInt16(txtVoteCookieDays.Text);
            objArticle.MultipleChoice = chkVoteMultipleChoice.Checked;
            objArticle.VoteRoles = Utils.GetCheckedItems(cblVoteRoles, PortalSettings.AdministratorRoleId);

            if (!string.IsNullOrEmpty(txtVoteExpireDate.Text))
            {
                objArticle.VoteExpireDate = Convert.ToDateTime(txtVoteExpireDate.Text);
            }
            else
            {
                objArticle.VoteExpireDate = Null.NullDate;
            }
            
            //Add Tags
            objArticle.Tags = "";
            TagInfo objTag = new TagInfo();
            List<int> tagList = new List<int>();
            if (txtTag1.Text.Trim() != "")
            {
                objTag = TagController.GetByTag(txtTag1.Text.Trim(),TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag1.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag2.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 1)
            {
                objTag = TagController.GetByTag(txtTag2.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag2.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag3.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 2)
            {
                objTag = TagController.GetByTag(txtTag3.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag3.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag4.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 3)
            {
                objTag = TagController.GetByTag(txtTag4.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag4.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag5.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 4)
            {
                objTag = TagController.GetByTag(txtTag5.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag5.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag6.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 5)
            {
                objTag = TagController.GetByTag(txtTag6.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag6.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag7.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 6)
            {
                objTag = TagController.GetByTag(txtTag7.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag7.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag8.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 7)
            {
                objTag = TagController.GetByTag(txtTag8.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag8.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag9.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 8)
            {
                objTag = TagController.GetByTag(txtTag9.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag9.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            if (txtTag10.Text.Trim() != "" && Settings_Portal.General.TagSelectCount > 9)
            {
                objTag = TagController.GetByTag(txtTag10.Text.Trim(), TypeId);
                if (objTag == null)
                {
                    objTag = new TagInfo();
                    objTag.TypeId = TypeId;
                    objTag.PortalId = PortalId;
                    objTag.UserId = UserId;
                    objTag.Tag = txtTag10.Text.Trim();
                    objTag.Id = TagController.Add(objTag);
                }
                tagList.Add(objTag.Id);
            }
            var newTaglist = (from p in tagList select p).Distinct();//remove the  repeated tag item.

            foreach (int item in newTaglist)
            {
                objArticle.Tags += item.ToString() + ",";
            }
            objArticle.Tags = Utils.RemoveSeperator(objArticle.Tags, ",");
            //Tags end

            //处理CreatedDate
            if (ArticleId == -1)//当前处于新增状态
            {
                objArticle.CreatedDate = DateTime.Now;//默认为当前日期
                if (Settings_Portal.General.SpecifyArticleCreatedDate &&
                    !string.IsNullOrEmpty(txtCreatedDate.Text))//允许更改created date
                {
                    if (txtCreatedDate.Text == DateTime.Now.ToShortDateString())//还是当前日期,则用当前的日期+时间
                    {
                        objArticle.CreatedDate = DateTime.Now;
                    }
                    else
                    {
                        objArticle.CreatedDate = Convert.ToDateTime(txtCreatedDate.Text);
                    }
                }
            }
            else//当前处于修改状态
            {
                if (Settings_Portal.General.SpecifyArticleCreatedDate &&
                   !string.IsNullOrEmpty(txtCreatedDate.Text))//允许更改created date
                {
                    if (txtCreatedDate.Text != objArticle.CreatedDate.ToShortDateString())//如果日期不变，则没必要更改，省得加上现有时间后又乱了
                    {
                        objArticle.CreatedDate = Convert.ToDateTime(txtCreatedDate.Text);
                    }
                }
            }
            //date
            objArticle.PublishDate = DateTime.Now;
     
            if (!string.IsNullOrEmpty(txtPublishDate.Text))
            {
                objArticle.PublishDate = Convert.ToDateTime(txtPublishDate.Text);
            }
           
            if (txtExpireDate.Text != "")
            {
                objArticle.ExpireDate = Convert.ToDateTime(txtExpireDate.Text);
            }
            //处理detail page
            objArticle.DetailPage = Convert.ToInt32(ddlDetailPage.SelectedValue);

            if (HasManagePermission)
            {
                objArticle.ViewRoles = Utils.GetCheckedItems(cblViewRoles, PortalSettings.AdministratorRoleId);
                //Rating
                objArticle.AllowRating = chkAllowRating.Checked;
                objArticle.RatingRoles = Utils.GetCheckedItems(cblRatingRoles, PortalSettings.AdministratorRoleId);

                //Recommend
                objArticle.AllowRecommend = chkAllowRecommend.Checked;
                objArticle.RecommendRoles = Utils.GetCheckedItems(cblRecommendRoles, PortalSettings.AdministratorRoleId);


                //Comment
                objArticle.AllowComment = chkAllowComment.Checked;
                objArticle.CommentRoles = Utils.GetCheckedItems(cblCommentRoles, PortalSettings.AdministratorRoleId);
                objArticle.AutoAuthComment = chkAutoAuthComment.Checked;
                //Download roles
                objArticle.DownloadRoles = Utils.GetCheckedItems(cblDownloadRoles, PortalSettings.AdministratorRoleId);
            }
            else
            {
                objArticle.ViewRoles = Settings_Portal.General.ArticleViewRoles;
                objArticle.AllowRating = Settings_Portal.Rating.AllowRating;
                objArticle.RatingRoles = Settings_Portal.Rating.RatingRoles;

                objArticle.AllowRecommend = Settings_Portal.Recommend.AllowRecommend;
                objArticle.RecommendRoles = Settings_Portal.Recommend.RecommendRoles;

                objArticle.AllowComment = Settings_Portal.Comment.AllowComment;
                objArticle.CommentRoles = Settings_Portal.Comment.CommentRoles;
                objArticle.AutoAuthComment = Settings_Portal.Comment.AutoAuthComment;

                objArticle.DownloadRoles = Settings_Portal.Download.DownloadRoles;
            }

            //social share
            if (Settings_Portal.General.EnableSocialShare)
            {
                objArticle.ShareType = Convert.ToInt16(rblShareType.SelectedValue);
                objArticle.Private = rblShareType.SelectedValue == "1";
                objArticle.Protected = rblShareType.SelectedValue == "2";
                objArticle.ProtectPassword = txtProtectPassword.Text;
                objArticle.Friends = chkFriends.Checked;
                objArticle.Followers = chkFollowers.Checked;
                if (cblGroups.Items.Count > 0)
                {
                    objArticle.Groups = Cross.DNN.Common.Utility.Utils.GetCheckedItems(cblGroups);
                }
                else
                {
                    objArticle.Groups = string.Empty;
                }
            }
            else
            {
                objArticle.ShareType = Convert.ToInt16(ShareType.Public);
                objArticle.Private = false;
                objArticle.Protected = false;
                objArticle.ProtectPassword = string.Empty;
                objArticle.Friends = false;
                objArticle.Followers = false;
                objArticle.Groups = string.Empty;
            }
          


            objArticle.Summary = Cross.DNN.Common.Utility.Utils.RemoveAllHtmlTags(txtSummary.Text);
            objArticle.Article = GetHtmlEditorText(txtDetail.Text);
            objArticle.UserId = UserId;
            //Now processing attachment
            int newArticleId = -1;
            if (ArticleId == -1)
            {
               newArticleId = ArticleController.Add(objArticle);
               AddNewOptions(newArticleId);
        //       AddArticleToActiveSocial(newArticleId);
               SendNotificationWhenNewArticleCreated(newArticleId);
            }
            else
            {
                ArticleController.Update(objArticle,true);
                UpdateVoteOptions(ArticleId);
                newArticleId = ArticleId;
            }
            UpdateUserDefinedData(newArticleId);
            //Reset all 
            ArticleId = -1;
        }
        private void AddNewOptions(int articleId)
        {
            VoteOptionInfo objVoteOption = new VoteOptionInfo();
            objVoteOption.ArticleId = articleId;
            if (!string.IsNullOrEmpty(txtVote1.Text))
            {
                objVoteOption.Title = txtVote1.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote2.Text))
            {
                objVoteOption.Title = txtVote2.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote3.Text))
            {
                objVoteOption.Title = txtVote3.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote4.Text))
            {
                objVoteOption.Title = txtVote4.Text;
                VoteOptionController.Add(objVoteOption);
            }

            if (!string.IsNullOrEmpty(txtVote5.Text))
            {
                objVoteOption.Title = txtVote5.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote6.Text))
            {
                objVoteOption.Title = txtVote6.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote7.Text))
            {
                objVoteOption.Title = txtVote7.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote8.Text))
            {
                objVoteOption.Title = txtVote8.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote9.Text))
            {
                objVoteOption.Title = txtVote9.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote10.Text))
            {
                objVoteOption.Title = txtVote10.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote11.Text))
            {
                objVoteOption.Title = txtVote11.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote12.Text))
            {
                objVoteOption.Title = txtVote12.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote13.Text))
            {
                objVoteOption.Title = txtVote13.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote14.Text))
            {
                objVoteOption.Title = txtVote14.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote15.Text))
            {
                objVoteOption.Title = txtVote15.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote16.Text))
            {
                objVoteOption.Title = txtVote16.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote17.Text))
            {
                objVoteOption.Title = txtVote17.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote18.Text))
            {
                objVoteOption.Title = txtVote18.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote19.Text))
            {
                objVoteOption.Title = txtVote19.Text;
                VoteOptionController.Add(objVoteOption);
            }
            if (!string.IsNullOrEmpty(txtVote20.Text))
            {
                objVoteOption.Title = txtVote20.Text;
                VoteOptionController.Add(objVoteOption);
            }
        }
        private void UpdateVoteOptions(int articleId)
        {
            List<VoteOptionInfo> oldOptions = VoteOptionController.GetByArticle(articleId).ToList();
            List<string> newOptions = new List<string>();
            if (!string.IsNullOrEmpty(txtVote1.Text))
            {
                newOptions.Add(txtVote1.Text);
            }
            if (!string.IsNullOrEmpty(txtVote2.Text))
            {
                newOptions.Add(txtVote2.Text);
            }
            if (!string.IsNullOrEmpty(txtVote3.Text))
            {
                newOptions.Add(txtVote3.Text);
            }
            if (!string.IsNullOrEmpty(txtVote4.Text))
            {
                newOptions.Add(txtVote4.Text);
            }
            if (!string.IsNullOrEmpty(txtVote5.Text))
            {
                newOptions.Add(txtVote5.Text);
            }
            if (!string.IsNullOrEmpty(txtVote6.Text))
            {
                newOptions.Add(txtVote6.Text);
            }
            if (!string.IsNullOrEmpty(txtVote7.Text))
            {
                newOptions.Add(txtVote7.Text);
            }
            if (!string.IsNullOrEmpty(txtVote8.Text))
            {
                newOptions.Add(txtVote8.Text);
            }
            if (!string.IsNullOrEmpty(txtVote9.Text))
            {
                newOptions.Add(txtVote9.Text);
            }
            if (!string.IsNullOrEmpty(txtVote10.Text))
            {
                newOptions.Add(txtVote10.Text);
            }
            if (!string.IsNullOrEmpty(txtVote11.Text))
            {
                newOptions.Add(txtVote11.Text);
            }
            if (!string.IsNullOrEmpty(txtVote12.Text))
            {
                newOptions.Add(txtVote12.Text);
            }
            if (!string.IsNullOrEmpty(txtVote13.Text))
            {
                newOptions.Add(txtVote13.Text);
            }
            if (!string.IsNullOrEmpty(txtVote14.Text))
            {
                newOptions.Add(txtVote14.Text);
            }
            if (!string.IsNullOrEmpty(txtVote15.Text))
            {
                newOptions.Add(txtVote15.Text);
            }
            if (!string.IsNullOrEmpty(txtVote16.Text))
            {
                newOptions.Add(txtVote16.Text);
            }
            if (!string.IsNullOrEmpty(txtVote17.Text))
            {
                newOptions.Add(txtVote17.Text);
            }
            if (!string.IsNullOrEmpty(txtVote18.Text))
            {
                newOptions.Add(txtVote18.Text);
            }
            if (!string.IsNullOrEmpty(txtVote19.Text))
            {
                newOptions.Add(txtVote19.Text);
            }
            if (!string.IsNullOrEmpty(txtVote20.Text))
            {
                newOptions.Add(txtVote20.Text);
            }
            //if there is no old options
            if (oldOptions.Count == 0)
            {
                foreach (var item in newOptions)
                {
                    VoteOptionInfo objVoteOption = new VoteOptionInfo();
                    objVoteOption.ArticleId = articleId;
                    objVoteOption.Title = item;
                    VoteOptionController.Add(objVoteOption);
                }
            }
            //if there is old options
            if (oldOptions.Count > 0)
            {
                //if old options is less than new options,e.g, oldoptions has 10 value, newoptions has 20 value
                if (oldOptions.Count < newOptions.Count)
                {
                    //update old options
                    for (int i = 0; i < oldOptions.Count; i++) //update 0 - 9
                    {
                        oldOptions[i].Title = newOptions[i];
                        VoteOptionController.Update(oldOptions[i]);
                    }
                    //add new options (e.g oldoptions=10, newoptions has 20, then we should add newoptions[10] to newoptions[19]
                    for (int i = oldOptions.Count; i < newOptions.Count; i++)
                    {
                        VoteOptionInfo objVoteOption = new VoteOptionInfo();
                        objVoteOption.ArticleId = articleId;
                        objVoteOption.Title = newOptions[i];
                        VoteOptionController.Add(objVoteOption);
                    }
                }
                //same options
                if (oldOptions.Count == newOptions.Count)
                {
                    //update old options
                    for (int i = 0; i < oldOptions.Count; i++) //update 0 - 9
                    {
                        oldOptions[i].Title = newOptions[i];
                        VoteOptionController.Update(oldOptions[i]);
                    }
                }
                if (oldOptions.Count > newOptions.Count)
                {
                    //update old options
                    for (int i = 0; i < newOptions.Count; i++)
                    {
                        oldOptions[i].Title = newOptions[i];
                        VoteOptionController.Update(oldOptions[i]);
                    }
                    //delete old options
                    for (int i = newOptions.Count; i < oldOptions.Count; i++)
                    {
                        VoteOptionController.Delete(oldOptions[i]);
                    }
                }
            }
        }
        /// <summary>
        /// send a mail to manager mail when new article is created
        /// </summary>
        private void SendNotificationWhenNewArticleCreated(int newArticleId)
        {
            if (Settings_Portal.General.EmailWhenNew &&
                !string.IsNullOrEmpty(Settings_Portal.General.ManagerEmail)
                && !string.IsNullOrEmpty(DotNetNuke.Entities.Host.Host.SMTPServer))
            {
                ArticleInfo objArticle = ArticleController.Get(newArticleId);

                string subject = string.Format(Localization.GetString("Mail_Article_Subject", this.LocalResourceFile),
                     FullDomainName);

                StringBuilder notification = new StringBuilder();
                notification.Append("\r\n");
                notification.Append("\r\n");

                notification.AppendFormat(Localization.GetString("Mail_Article_Tip", this.LocalResourceFile),
                    objArticle.UserName, objArticle.Title);
                notification.Append("\r\n");
                notification.Append("\r\n");


                notification.AppendFormat(Localization.GetString("Mail_Article_Thanks", this.LocalResourceFile), FullDomainName);
                notification.Append("\r\n");
                notification.Append("\r\n");
                notification.Append(FullDomainName);
                notification.Append("\r\n");

                DotNetNuke.Services.Mail.Mail.SendMail(Settings_Portal.General.ManagerEmail, Settings_Portal.General.ManagerEmail,
                    "", subject, notification.ToString(), "", "text", "", "", "", "");

            }
        }
      
     
        private void BindArticleList()
        {
            int totalRecords = 0;
            int pageSize = Convert.ToInt32(ddlPageSize.SelectedValue);
            DotNetNuke.Security.PortalSecurity ps = new DotNetNuke.Security.PortalSecurity();
            string search = ps.InputFilter(txtSearch.Text.Trim(), DotNetNuke.Security.PortalSecurity.FilterFlag.NoSQL);

            List<ArticleInfo> list = ArticleController.GetByType(TypeId, Convert.ToInt32(ddlCategory.SelectedValue), UserId,
                ddlArticleStatus.SelectedValue == "UnAuthed", ddlArticleStatus.SelectedValue == "Featured", 
                ddlArticleStatus.SelectedValue == "UnActive",ddlArticleStatus.SelectedValue == "Expired", 
                Convert.ToInt32(ddlSource.SelectedValue),
                search, pageSize, CurrentPage, ref totalRecords);

            gvList.DataSource = list;
            gvList.DataBind();

            ctlPagingControl.RecordCount = totalRecords;
            ctlPagingControl.PageSize = pageSize;
            ctlPagingControl.CurrentPage = CurrentPage;
            ctlPagingControl.Span = 5;

            divLegend.Visible = list.Count > 0;
        }




        protected void btnCancel_Click(object sender, EventArgs e)
        {
            switch (CurrentTarget)
            {
                case "Article":
                    ArticleId = -1;
                    hidLastTab.Value = "0";
                    SetLayout("ViewArticleList");
                    break;
                case "Video":
                    SetLayout("ViewVideoList");
                    break;
                case "Audio":
                    SetLayout("ViewAudioList");
                    break;
                case "Image":
                    SetLayout("ViewImageList");
                    break;
                default:
                    break;
            }

        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            switch (CurrentTarget)
            {
                case "Article":
        
                    ArticleController.Delete(ArticleId);
                    ArticleId = -1;
                    BindArticleList();
                    SetLayout("ViewArticleList");
                    break;
              
                case "Video":
                    Cross.Modules.Article.Business.VideoController.Delete(VideoId);
                    VideoId = -1;
                    BindVideoList();
                    SetLayout("ViewVideoList");
                    break;
                case "Audio":
                    AudioController.Delete(AudioId);
                    AudioId = -1;
                    BindAudioList();
                    SetLayout("ViewAudioList");
                    break;
                case "Image":
                    ImageController.Delete(ImageId);
                    ImageId = -1;
                    BindImageList();
                    SetLayout("ViewImageList");
                    break;
                default:
                    break;
            }
            DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("Tip_DeleteSuccess", LocalResourceFile), 
                DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.GreenSuccess);

        }
        private void BindVideoList()
        {
            gvVideoList.DataSource = Cross.Modules.Article.Business.VideoController.GetByArticle(ArticleId);
            gvVideoList.DataBind();
        }
        private void BindAudioList()
        {
            gvAudioList.DataSource = AudioController.GetByArticle(ArticleId);
            gvAudioList.DataBind();
        }
        private void BindImageList()
        {
            gvImageList.DataSource = ImageController.GetByArticle(ArticleId);
            gvImageList.DataBind();
        }

        private void SetLayout(string command)
        {
            tblButton.Visible = true;
            btnBackToList.Visible = false;
            btnDeleteSelected.Visible = false;

            tblArticleList.Visible = false;
            divArticleDetail.Visible = false;

          
            tblVideoList.Visible = false;
            tblVideoDetail.Visible = false;

            tblAudioList.Visible = false;
            tblAudioDetail.Visible = false;

            tblImageList.Visible = false;
            tblImageDetail.Visible = false;

            tblAttachment.Visible = false;
            ArticleInfo objArticle = new ArticleInfo();
            if (ArticleId != -1)
            {
                objArticle = ArticleController.Get(ArticleId);
            }
            switch (command)
            {
                case "ViewArticleList":
                    lblArticleQuota.Visible = true;
                    lblType.Visible = true;
                    ddlType.Visible = true;
                    btnAdd.Visible = true;
                    btnAdd.Text = Localization.GetString("btnAddArticle", LocalResourceFile);

                    btnDeleteSelected.Visible = true;

                    btnDelete.Visible = false;
                    btnDelete1.Visible = false;

                    btnUpdate.Visible = false;
                    btnUpdate1.Visible = false;

                    btnCancel.Visible = false;
                    btnCancel1.Visible = false;

                    tblArticleList.Visible = true;
                    CurrentTarget = "Article";
                    break;

                case "AddArticle":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;
                    txtTitle.Text = "";
                  
                    btnDelete.Visible = false;
                    btnDelete1.Visible = false;

                    btnUpdate.Visible = true;
                    btnUpdate1.Visible = true;
                    btnCancel.Visible = true;
                    btnCancel1.Visible = true;

                    divArticleDetail.Visible = true;
                    CurrentTarget = "Article";
                    break;
                case "SelectArticle":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;

                    btnDelete.Visible = true;
                    btnDelete1.Visible = true;

                    btnUpdate.Visible = true;
                    btnUpdate1.Visible = true;
                    btnCancel.Visible = true;
                    btnCancel1.Visible = true;

                    divArticleDetail.Visible = true;
                    CurrentTarget = "Article";
                    break;

                case "ViewAttachmentList":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;

                    btnDelete.Visible = false;
                    btnDeleteSelected.Visible = true;

                    btnUpdate.Visible = false;

                    btnCancel.Visible = false;


                    tblAttachment.Visible = true;
                    lblAttachmentList.Text = string.Format(Localization.GetString("lblAttachmentList", LocalResourceFile), objArticle.Title);
                    CurrentTarget = "Attachment";
                    break;

                case "ViewVideoList":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = true;
                    btnAdd.Text = Localization.GetString("btnAddVideo", LocalResourceFile);
                    btnDelete.Visible = false;
                    btnDeleteSelected.Visible = true;

                    btnUpdate.Visible = false;

                    btnCancel.Visible = false;


                    tblVideoList.Visible = true;
                    lblVideoList.Text = string.Format(Localization.GetString("lblVideoList", LocalResourceFile), objArticle.Title);
                    CurrentTarget = "Video";
                    break;

                case "AddVideo":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;
                    txtVideoTitle.Text = "";
                    btnDelete.Visible = false;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblVideoDetail.Visible = true;
                    CurrentTarget = "Video";
                    break;
                case "SelectVideo":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;

                    btnDelete.Visible = true;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblVideoDetail.Visible = true;
                    CurrentTarget = "Video";
                    break;
                case "ViewAudioList":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = true;
                    btnAdd.Text = Localization.GetString("btnAddAudio", LocalResourceFile);
                    btnDelete.Visible = false;

                    btnDeleteSelected.Visible = true;
                    btnUpdate.Visible = false;

                    btnCancel.Visible = false;


                    tblAudioList.Visible = true;
                    lblAudioList.Text = string.Format(Localization.GetString("lblAudioList", LocalResourceFile), objArticle.Title);
                    CurrentTarget = "Audio";
                    break;

                case "AddAudio":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;
                    txtAudioTitle.Text = "";
                    btnDelete.Visible = false;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblAudioDetail.Visible = true;
                    CurrentTarget = "Audio";
                    break;
                case "SelectAudio":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;

                    btnDelete.Visible = true;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblAudioDetail.Visible = true;
                    CurrentTarget = "Audio";
                    break;
                case "ViewImageList":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = true;
                    btnAdd.Text = Localization.GetString("btnAddImage", LocalResourceFile);
                    btnDelete.Visible = false;
                    btnDeleteSelected.Visible = true;

                    btnUpdate.Visible = false;

                    btnCancel.Visible = false;


                    tblImageList.Visible = true;
                    lblImageList.Text = string.Format(Localization.GetString("lblImageList", LocalResourceFile), objArticle.Title);
                    CurrentTarget = "Image";
                    break;

                case "AddImage":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;
                    txtImageTitle.Text = "";
                    btnDelete.Visible = false;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblImageDetail.Visible = true;
                    CurrentTarget = "Image";
                    break;
                case "SelectImage":
                    lblArticleQuota.Visible = false;
                    lblType.Visible = false;
                    ddlType.Visible = false;
                    btnAdd.Visible = false;

                    btnDelete.Visible = true;


                    btnUpdate.Visible = true;

                    btnCancel.Visible = true;


                    tblImageDetail.Visible = true;
                    CurrentTarget = "Image";
                    break;

            }
            if (CurrentTarget != "Article")
            {
                btnBackToList.Visible = true;
            }
        }

        protected void btnAddVideoFolder_Click(object sender, EventArgs e)
        {
            foreach (FileItem item in ctlVideoFolder.FileListInCurrentFolder)
            {
                int fileId = Convert.ToInt32(item.Value);
                Cross.Modules.Article.Business.VideoInfo objItem = new Cross.Modules.Article.Business.VideoInfo();
                objItem.Duration = GetVideoDuration(fileId);
                objItem.Thumbnail = GetVideoThumbnail(fileId);
                objItem.ArticleId = ArticleId;
                objItem.Title = item.Text;
                objItem.Description = "";
                objItem.Views = 1;
                objItem.VideoPath = GetFileFullUrl(fileId);
                objItem.VideoFile = "FileID=" + item.Value;
                Cross.Modules.Article.Business.VideoController.Add(objItem);
            }
            BindVideoList();
        }
        private string GetFileFullUrl(int fileId)
        {
            string url = "";

            if (Settings_Portal.General.FileStorage.ToLower() == "local")
            {
               
                DotNetNuke.Services.FileSystem.IFileInfo objFile = new DotNetNuke.Services.FileSystem.FileInfo();
                DotNetNuke.Entities.Portals.PortalController ctlPortal = new DotNetNuke.Entities.Portals.PortalController();
                DotNetNuke.Entities.Portals.PortalInfo pi = ctlPortal.GetPortal(PortalSettings.PortalId);

                objFile = DotNetNuke.Services.FileSystem.FileManager.Instance.GetFile(fileId);
                if (objFile != null)
                {
                    url = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + objFile.Folder + objFile.FileName;
                }

            }
            if (Settings_Portal.General.FileStorage.ToLower() == "a3")
            {
                if (A3FileController.Get(fileId) != null)
                {
                    url = A3FileController.Get(fileId).A3Url;
                }
            }
            return url;
        }
        protected void btnAddAudioFolder_Click(object sender, EventArgs e)
        {
            foreach (FileItem item in ctlAudioFolder.FileListInCurrentFolder)
            {
                AudioInfo objItem = new AudioInfo();
                objItem.ArticleId = ArticleId;
                objItem.Title = item.Text;
                objItem.Description = "";
                objItem.Views = 1;
                objItem.AudioPath = GetFileFullUrl(Convert.ToInt32(item.Value));
                objItem.AudioFile = "FileID=" + item.Value;
                AudioController.Add(objItem);
            }
            BindAudioList();
        }

        protected void btnAddImageFolder_Click(object sender, EventArgs e)
        {
            foreach (FileItem item in ctlImageFolder.FileListInCurrentFolder)
            {
                int fileId = Convert.ToInt32(item.Value);
                ImageInfo objItem = new ImageInfo();
                objItem.ImagePath = GetFileFullUrl(fileId);
                objItem.ImageFile = "FileID=" + item.Value;
                objItem.Thumbnail = objItem.ImagePath;
                string thumbnail = GetImageThumbnail(fileId);
                if (thumbnail != "")
                {
                    objItem.Thumbnail = thumbnail;
                }
                objItem.ArticleId = ArticleId;
                objItem.Title = item.Text;
                objItem.Description = "";
                objItem.Views = 1;

                ImageController.Add(objItem);
            }
            BindImageList();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            switch (CurrentTarget)
            {
                case "Article":
                    if (!IsArticleDataValid())
                    {
                        return;
                    }
                    UpdateArticle();
                    ArticleId = -1;
                    BindArticleList();
                    SetLayout("ViewArticleList");
                    break;
                

                case "Video":
                    if (!IsVideoDataValid())
                    {
                        return;
                    }
                    UpdateVideo();
                    BindVideoList();
                    SetLayout("ViewVideoList");
                    break;
                case "Audio":
                    if (!IsAudioDataValid())
                    {
                        return;
                    }
                    UpdateAudio();
                    BindAudioList();
                    SetLayout("ViewAudioList");
                    break;
                case "Image":
                    if (!IsImageDataValid())
                    {
                        return;
                    }
                    UpdateImage();
                    BindImageList();
                    SetLayout("ViewImageList");
                    break;
                default:
                    break;
            }
            DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("Tip_UpdateSuccess", LocalResourceFile), 
                DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.GreenSuccess);
        }
        private void UpdateVideo()
        {
            Cross.Modules.Article.Business.VideoInfo objItem = new Cross.Modules.Article.Business.VideoInfo();
            if (VideoId != -1)
            {
                objItem = Cross.Modules.Article.Business.VideoController.Get(VideoId);
            }
            objItem.Id = VideoId;
            objItem.Duration = txtVideoDuration.Text.Trim();
            objItem.Thumbnail = txtVideoThumbnail.Text.Trim();
            if (ctlVideoFile.Url.StartsWith("FileID="))// 当前选择为文件，因此试图获取其duration,thunmnail
            {
                int fileId = Convert.ToInt32(ctlVideoFile.Url.Replace("FileID=", ""));
                if (txtVideoDuration.Text.Trim() == "")
                {
                    objItem.Duration = GetVideoDuration(fileId);
                }
                if (txtVideoThumbnail.Text.Trim() == "")
                {
                    objItem.Thumbnail = GetVideoThumbnail(fileId);
                }
            }

            objItem.ArticleId = ArticleId;
            objItem.Title = txtVideoTitle.Text.Trim();
            objItem.Description = txtVideoDescription.Text;
            objItem.VideoFile = ctlVideoFile.Url;
            objItem.VideoPath = ctlVideoFile.FullUrl;
            objItem.Views = 1;
            if (VideoId == -1)
            {
                Cross.Modules.Article.Business.VideoController.Add(objItem);
            }
            else
            {
                Cross.Modules.Article.Business.VideoController.Update(objItem);
            }

        }
        private string GetVideoDuration(int fileId)
        {
            string duration = "";
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_Local)
            {
               
                DotNetNuke.Services.FileSystem.IFileInfo objFile = new DotNetNuke.Services.FileSystem.FileInfo();
                DotNetNuke.Entities.Portals.PortalController ctlPortal = new DotNetNuke.Entities.Portals.PortalController();
                DotNetNuke.Entities.Portals.PortalInfo pi = ctlPortal.GetPortal(PortalId);
                objFile = DotNetNuke.Services.FileSystem.FileManager.Instance.GetFile(fileId);

                if (objFile != null && System.IO.File.Exists(objFile.PhysicalPath))
                {
                    System.IO.FileInfo objPhysical = new System.IO.FileInfo(objFile.PhysicalPath);
                    if (Settings_Portal.Video.VideoConvert && Settings_Portal.Video.PassPermissionCheck)
                    {
                        Cross.DNN.Common.VideoManage.VideoManageOption option = new Cross.DNN.Common.VideoManage.VideoManageOption();
                        option.General.FFMPEGPath = VideoConvert_ExecuteFolder + "\\ffmpeg\\ffmpeg.exe";
                        option.General.FLVToolPath = VideoConvert_ExecuteFolder + "\\ffmpeg\\flvtool2.exe";
                        option.General.MencoderPath = VideoConvert_ExecuteFolder + "\\mencoder\\mencoder.exe";
                        option.General.MencoderDirectory = VideoConvert_ExecuteFolder + "\\mencoder";
                        option.General.InputPath = objPhysical.Directory.FullName;
                        option.General.OutputPath = objPhysical.Directory.FullName;
                        option.Video.ExitProcess = Settings_Portal.Video.ProcessExitTime;
                        option.General.FileName = objPhysical.Name;
                        Cross.DNN.Common.VideoManage.VideoController ctlVideo = new Cross.DNN.Common.VideoManage.VideoController(option);
                        duration = ctlVideo.Get_Info().Duration;

                    }
                }
            }
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_A3)
            {
                A3FileInfo objA3File = A3FileController.Get(fileId);
                if (objA3File != null)
                {
                    duration = objA3File.Duration;
                }
            }
            return duration.Trim();
        }
        private string GetVideoThumbnail(int fileId)
        {
            string thumbnail = "";
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_Local)
            {
               
                DotNetNuke.Services.FileSystem.IFileInfo objFile = new DotNetNuke.Services.FileSystem.FileInfo();
                DotNetNuke.Entities.Portals.PortalController ctlPortal = new DotNetNuke.Entities.Portals.PortalController();
                DotNetNuke.Entities.Portals.PortalInfo pi = ctlPortal.GetPortal(PortalId);
                objFile = DotNetNuke.Services.FileSystem.FileManager.Instance.GetFile(fileId);

                if (objFile != null && File.Exists(objFile.PhysicalPath))
                {
                    System.IO.FileInfo objPhysical = new System.IO.FileInfo(objFile.PhysicalPath);

                    if (File.Exists(objPhysical.DirectoryName + "\\" + "thumb_" + objPhysical.Name.Replace(objPhysical.Extension, ".jpg")))//Find if exist thumbnail image
                    {
                        thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + objFile.Folder + "thumb_" + objFile.FileName.Replace(objPhysical.Extension, ".jpg");
                    }
                    else
                    {
                        if (File.Exists(objPhysical.DirectoryName + "\\" + objPhysical.Name.Replace(objPhysical.Extension, ".jpg")))//Find if exist same name image
                        {
                            thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + objFile.Folder + objFile.FileName.Replace(objPhysical.Extension, ".jpg");
                        }
                    }
                }
            }
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_A3)
            {
                A3FileInfo objA3File = A3FileController.Get(fileId);
                if (objA3File != null)
                {
                    if (A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName.Replace(objA3File.Extension, ".jpg")) != null)
                    {
                        thumbnail = A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName.Replace(objA3File.Extension, ".jpg")).A3Url;
                    }
                    else
                    {
                        if (A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + objA3File.FileName.Replace(objA3File.Extension, ".jpg")) != null)
                        {
                            thumbnail = A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + objA3File.FileName.Replace(objA3File.Extension, ".jpg")).A3Url;
                        }
                    }
                }
            }
            return thumbnail;
        }

        private void UpdateAudio()
        {
            AudioInfo objItem = new AudioInfo();
            if (AudioId != -1)
            {
                objItem = AudioController.Get(AudioId);
            }
            objItem.Id = AudioId;
            objItem.ArticleId = ArticleId;
            objItem.Title = txtAudioTitle.Text.Trim();
            objItem.Description = txtAudioDescription.Text;
            objItem.AudioFile = ctlAudioFile.Url;
            objItem.AudioPath = ctlAudioFile.FullUrl;
            objItem.Views = 1;
            if (AudioId == -1)
            {
                AudioController.Add(objItem);
            }
            else
            {
                AudioController.Update(objItem);
            }
        }
        private string GetImageThumbnail(int fileId)
        {
            string thumbnail = "";
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_Local)
            {
              
                DotNetNuke.Services.FileSystem.IFileInfo objFile = new DotNetNuke.Services.FileSystem.FileInfo();
                DotNetNuke.Entities.Portals.PortalController ctlPortal = new DotNetNuke.Entities.Portals.PortalController();
                DotNetNuke.Entities.Portals.PortalInfo pi = ctlPortal.GetPortal(PortalId);
                objFile = DotNetNuke.Services.FileSystem.FileManager.Instance.GetFile(fileId);

                if (objFile != null && File.Exists(objFile.PhysicalPath))
                {
                    System.IO.FileInfo objPhysical = new System.IO.FileInfo(objFile.PhysicalPath);

                    if (File.Exists(objPhysical.DirectoryName + "\\" + "thumb_" + objPhysical.Name))//Find if exist thumbnail image
                    {
                        thumbnail = DotNetNuke.Common.Globals.ApplicationPath + "/" + pi.HomeDirectory + "/" + objFile.Folder + "thumb_" + objFile.FileName;
                    }
                }
            }
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_A3)
            {
                A3FileInfo objA3File = A3FileController.Get(fileId);
                if (objA3File != null)
                {
                    if (A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName) != null)
                    {
                        thumbnail = A3FileController.GetByA3Key(GetA3FilePrefix(objA3File.FolderId) + "thumb_" + objA3File.FileName).A3Url;
                    }
                }
            }
            return thumbnail;
        }
        private void UpdateImage()
        {
            ImageInfo objItem = new ImageInfo();
            if (ImageId != -1)//这个地方一定要改
            {
                objItem = ImageController.Get(ImageId);
            }
            objItem.Id = ImageId;
            objItem.Thumbnail = ctlImageFile.FullUrl;
            if (ctlImageFile.Url.StartsWith("FileID="))// 当前选择为文件，因此试图获取thunmnail
            {
                string thumbnail = GetImageThumbnail(Convert.ToInt32(ctlImageFile.Url.Replace("FileID=", "")));
                if (thumbnail != "")
                {
                    objItem.Thumbnail = thumbnail;
                }
            }

            objItem.ArticleId = ArticleId;
            objItem.Title = txtImageTitle.Text.Trim();
            objItem.Description = txtImageFileDescription.Text;
            objItem.ImageFile = ctlImageFile.Url;
            objItem.ImagePath = ctlImageFile.FullUrl;
            objItem.Views = 1;
            if (ImageId == -1)
            {
                ImageController.Add(objItem);
            }
            else
            {
                ImageController.Update(objItem);
            }
        }
        private Boolean IsArticleDataValid()
        {
            if (Page.IsValid == false)
            {
                return false;
            }
            hidLastTab.Value = "0";
            string warningMessage = string.Empty;
            string udtError = string.Empty;
            if (TypeUdtList.Count > 0)
            {
                foreach (EditControl item in ListEditControls.Values)
                {
                    if (!item.IsValid())
                    {
                        udtError = item.ValidationMessage;
                        if (udtError.EndsWith(".ErrorMessage"))
                        {
                            udtError = Localization.GetString(udtError, LocalUtils.ResourcesFile_Udt);
                        }
                        warningMessage += String.Format("<li><b>{0}</b><br />{1}</li>", item.FieldTitle, udtError);
                    }
                }
                if (warningMessage != string.Empty)
                {
                    DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, warningMessage, DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.RedError);
                    return false;
                }
            }
            string category = RecursiveHelper.GetAspNetTreeCheckList(tvCategory);

            if (string.IsNullOrEmpty(category) || category.Split(',').Length > Settings_Portal.General.CategorySelectCount)
            {
                hidLastTab.Value = "1";
                warningMessage = string.Format(Localization.GetString("Category.ErrorMessage", LocalResourceFile), Settings_Portal.General.CategorySelectCount.ToString());
                DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, warningMessage, DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.YellowWarning);
                return false;
            }
            return true;
        }

        private Boolean IsVideoDataValid()
        {
            if (Page.IsValid == false)
            {
                return false;
            }
            if (ctlVideoFile.Url.Trim() == "")
            {
                DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("SpecifyVideo", LocalResourceFile), DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.YellowWarning);
                return false;
            }
            return true;
        }
        private Boolean IsAudioDataValid()
        {
            if (Page.IsValid == false)
            {
                return false;
            }
            if (ctlAudioFile.Url.Trim() == "")
            {
                DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("SpecifyAudio", LocalResourceFile), DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.YellowWarning);
                return false;
            }
            return true;
        }
        private Boolean IsImageDataValid()
        {
            if (Page.IsValid == false)
            {
                return false;
            }
            if (ctlImageFile.Url.Trim() == "")
            {
                DotNetNuke.UI.Skins.Skin.AddModuleMessage(this, Localization.GetString("SpecifyImage", LocalResourceFile), DotNetNuke.UI.Skins.Controls.ModuleMessage.ModuleMessageType.YellowWarning);
                return false;
            }
            return true;
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            CurrentPage = 0;
            BindArticleList();
        }

        protected void btnDeleteSelected_Click(object sender, EventArgs e)
        {
            switch (CurrentTarget)
            {
                case "Article":
                    foreach (GridViewRow item in gvList.Rows)
                    {
                        CheckBox chkItem = (CheckBox)item.FindControl("chkItem_Article");
                        if (chkItem.Checked == true)
                        {
                            Label lblId = (Label)item.FindControl("lblId");
                          
                            ArticleController.Delete(Convert.ToInt32(lblId.Text));
                        }
                    }
                    BindArticleList();
                    break;
              
              
                case "Video":
                    foreach (GridViewRow item in gvVideoList.Rows)
                    {
                        CheckBox chkItem = (CheckBox)item.FindControl("chkItem_Video");
                        if (chkItem.Checked == true)
                        {
                            Label lblId = (Label)item.FindControl("lblId");
                            Cross.Modules.Article.Business.VideoController.Delete(Convert.ToInt32(lblId.Text));
                        }
                    }
                    BindVideoList();
                    break;
                case "Audio":
                    foreach (GridViewRow item in gvAudioList.Rows)
                    {
                        CheckBox chkItem = (CheckBox)item.FindControl("chkItem_Audio");
                        if (chkItem.Checked == true)
                        {
                            Label lblId = (Label)item.FindControl("lblId");
                            AudioController.Delete(Convert.ToInt32(lblId.Text));
                        }
                    }
                    BindAudioList();
                    break;
                case "Image":
                    foreach (GridViewRow item in gvImageList.Rows)
                    {
                        CheckBox chkItem = (CheckBox)item.FindControl("chkItem_Image");
                        if (chkItem.Checked == true)
                        {
                            Label lblId = (Label)item.FindControl("lblId");
                            ImageController.Delete(Convert.ToInt32(lblId.Text));
                        }
                    }
                    BindImageList();
                    break;
                case "Attachment":
                    foreach (GridViewRow item in gvAttachmentList.Rows)
                    {
                        CheckBox chkItem = (CheckBox)item.FindControl("chkItem_Attachment");
                        if (chkItem.Checked == true)
                        {
                            Label lblId = (Label)item.FindControl("lblId");
                            AttachmentController.Delete(Convert.ToInt32(lblId.Text));
                        }
                    }
                    BindAttachmentList();
                    break;
                default:
                    break;
            }

        }
       
        protected void ctlPagingControl_PageChanged(object sender, EventArgs e)
        {
            CurrentPage = ctlPagingControl.CurrentPage;
            BindArticleList();
        }
        protected void gvList_DataBinding(object sender, EventArgs e)
        {
            if (gvList.Columns[15] != null)//related information
            {
                gvList.Columns[15].Visible = Settings_Portal.General.EnableImage || Settings_Portal.General.EnableDocument
                    || Settings_Portal.General.EnableAudio || Settings_Portal.General.EnableVideo;
              
            }

        }

        protected void gvList_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            ArticleId = Convert.ToInt32(e.CommandArgument);
            ArticleInfo objArticle = ArticleController.Get(ArticleId);
            switch (e.CommandName)
            {
                case "Select":
                    BindArticle(ArticleId);
                    SetLayout("SelectArticle");
                    break;
                case "Copy":
                    ArticleInfo objNewArticle = objArticle;
                    objNewArticle.UserId = UserId;
                    objNewArticle.Title += " (New)";
                    objNewArticle.Views = 0;
                    //注意Copy as new article 时，需要单独设置当前article的createddate，否则就会和以前的一样。这是不对的
                    objNewArticle.CreatedDate = DateTime.Now;
                    int originalArticleId = ArticleId;
                    ArticleId = ArticleController.Add(objNewArticle);
                    //复制自定义数据
                    CopyUserDefinedData(originalArticleId, ArticleId);
                    BindArticleList();
                    BindArticle(ArticleId);
                    SetLayout("SelectArticle");
                    break;
                case "Del":
              
                    ArticleController.Delete(ArticleId);
                    ArticleId = -1;
                    BindArticleList();
                    break;
                case "Auth":
                    objArticle.Authed = !objArticle.Authed;
                    ArticleController.Update(objArticle, false);
                    BindArticleList();
                    break;
                case "Active":
                    objArticle.Active = !objArticle.Active;
                    ArticleController.Update(objArticle, false);
                    BindArticleList();
                    break;
                case "Featured":
                    objArticle.Featured = !objArticle.Featured;
                    ArticleController.Update(objArticle, false);
                    BindArticleList();
                    break;

                case "Draft":
                    objArticle.Draft = !objArticle.Draft;
                    ArticleController.Update(objArticle, false);
                    BindArticleList();
                    break;
               
            
                case "Video":
                    BindVideoList();
                    SetLayout("ViewVideoList");
                    break;
                case "Audio":
                    BindAudioList();
                    SetLayout("ViewAudioList");
                    break;
                case "Image":
                    BindImageList();
                    SetLayout("ViewImageList");
                    break;
                case "Attachment":
                    BindAttachmentList();
                    SetLayout("ViewAttachmentList");
                    break;
                default:
                    break;
            }
        }
        private void BindAttachmentList()
        {
            gvAttachmentList.DataSource = AttachmentController.GetByArticle(ArticleId);
            gvAttachmentList.DataBind();
        }

        protected void btnAddAttachment_Click(object sender, EventArgs e)
        {
            string url = ctlAttachment.Url;

          
            if (string.IsNullOrEmpty(url))//当前没有选择有效文件，直接返回
            {
                return;
            }
            AttachmentInfo objAttachment = new AttachmentInfo();

            objAttachment.FilePath = ctlAttachment.FullUrl;
            objAttachment.ArticleId = ArticleId;
            objAttachment.Title = txtAttachmentTitle.Text.Trim();
            AttachmentController.Add(objAttachment);
            BindAttachmentList();

        }
        protected void gvAttachmentList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            switch (e.CommandName)
            {
                case "Del":
                    AttachmentController.Delete(id);
                    BindAttachmentList();
                    break;
                default:
                    break;
            }
        }

        private void BindVideo()
        {
            Cross.Modules.Article.Business.VideoInfo objItem = Cross.Modules.Article.Business.VideoController.Get(VideoId);
            if (objItem == null)
            {
                return;
            }
            txtVideoTitle.Text = objItem.Title;
            txtVideoDescription.Text = objItem.Description;
            txtVideoThumbnail.Text = objItem.Thumbnail;
            ctlVideoFile.Url = objItem.VideoFile;
            txtVideoDuration.Text = objItem.Duration;
        }
        private void BindAudio()
        {
            AudioInfo objItem = AudioController.Get(AudioId);
            if (objItem == null)
            {
                return;
            }
            txtAudioTitle.Text = objItem.Title;
            txtAudioDescription.Text = objItem.Description;
            ctlAudioFile.Url = objItem.AudioFile;

        }
        private void BindImage()
        {
            ImageInfo objItem = ImageController.Get(ImageId);
            if (objItem == null)
            {
                return;
            }
            txtImageTitle.Text = objItem.Title;
            txtImageDescription.Text = objItem.Description;
            ctlImageFile.Url = objItem.ImageFile;
        }


        protected void gvVideoList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            VideoId = Convert.ToInt32(e.CommandArgument);
            switch (e.CommandName)
            {
                case "Select":
                    BindVideo();
                    SetLayout("SelectVideo");
                    break;
                case "Del":
                    Cross.Modules.Article.Business.VideoController.Delete(VideoId);
                    BindVideoList();
                    VideoId = -1;
                    break;
                default:
                    break;
            }
        }
        protected void gvAudioList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            AudioId = Convert.ToInt32(e.CommandArgument);
            switch (e.CommandName)
            {
                case "Select":
                    BindAudio();
                    SetLayout("SelectAudio");
                    break;
                case "Del":
                    AudioController.Delete(AudioId);
                    BindAudioList();
                    AudioId = -1;
                    break;
                default:
                    break;
            }
        }
        protected void gvImageList_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            ImageId = Convert.ToInt32(e.CommandArgument);
            switch (e.CommandName)
            {
                case "Select":
                    BindImage();
                    SetLayout("SelectImage");
                    break;
                case "Del":
                    ImageController.Delete(ImageId);
                    BindImageList();
                    ImageId = -1;
                    break;
                default:
                    break;
            }
        }
        protected void btnBackToList_Click(object sender, EventArgs e)
        {
            VideoId = -1;
            AudioId = -1;
            ImageId = -1;
            SetLayout("ViewArticleList");
        }
        private void BindArticleLocation(ArticleInfo objArticle)
        {
            if (ddlLocationCountry.Items.FindByValue(objArticle.CountryId.ToString()) != null)
            {
                ddlLocationCountry.SelectedIndex = -1;
                ddlLocationCountry.Items.FindByValue(objArticle.CountryId.ToString()).Selected = true;
            }
            //连环触发country/state/city/town 绑定
            OnLocationCountry_SelectedIndexChanged();
        }
        private void BindLocationCountry()
        {
            ddlLocationCountry.DataSource = CountryController.GetByPortal(PortalId);
            ddlLocationCountry.DataBind();
        }
        protected void ddlLocationCountry_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationCountry_SelectedIndexChanged();
        }
        private void OnLocationCountry_SelectedIndexChanged()
        {

            ddlLocationState.Items.Clear();
            bool hasValue = false;
            foreach (var item in StateController.GetByCountry(Convert.ToInt32(ddlLocationCountry.SelectedValue)))
            {
                ddlLocationState.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                hasValue = true;
            }
            if (!hasValue)
            {
                ddlLocationState.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));
            }
            ddlLocationState.DataBind();

            if (ArticleId != -1)
            {
                ArticleInfo objArticle = ArticleController.Get(ArticleId);
                if (ddlLocationState.Items.FindByValue(objArticle.StateId.ToString()) != null)
                {
                    ddlLocationState.SelectedIndex = -1;
                    ddlLocationState.Items.FindByValue(objArticle.StateId.ToString()).Selected = true;
                }
            }
            OnLocationState_SelectedIndexChanged();
        }

        protected void ddlLocationState_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationState_SelectedIndexChanged();
        }
        private void OnLocationState_SelectedIndexChanged()
        {
            ddlLocationCity.Items.Clear();
            bool hasValue = false;
            foreach (var item in CityController.GetByState(Convert.ToInt32(ddlLocationState.SelectedValue)))
            {
                ddlLocationCity.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                hasValue = true;
            }
            if (!hasValue)
            {
                ddlLocationCity.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));
            }
            ddlLocationCity.DataBind();
            if (ArticleId != -1)
            {
                ArticleInfo objArticle = ArticleController.Get(ArticleId);
                if (ddlLocationCity.Items.FindByValue(objArticle.CityId.ToString()) != null)
                {
                    ddlLocationCity.SelectedIndex = -1;
                    ddlLocationCity.Items.FindByValue(objArticle.CityId.ToString()).Selected = true;
                }
            }
            OnLocationCity_SelectedIndexChanged();
        }

        protected void ddlLocationCity_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            OnLocationCity_SelectedIndexChanged();
        }

        private void OnLocationCity_SelectedIndexChanged()
        {

            ddlLocationTown.Items.Clear();
            bool hasValue = false;
            foreach (var item in TownController.GetByCity(Convert.ToInt32(ddlLocationCity.SelectedValue)))
            {
                ddlLocationTown.Items.Add(new ListItem(item.Name, item.Id.ToString()));
                hasValue = true;
            }
            if (!hasValue)
            {
                ddlLocationTown.Items.Add(new ListItem("< " + DotNetNuke.Services.Localization.Localization.GetString("None_Specified") + " >", "-1"));
            }
            ddlLocationTown.DataBind();
            if (ArticleId != -1)
            {
                ArticleInfo objArticle = ArticleController.Get(ArticleId);
                if (ddlLocationTown.Items.FindByValue(objArticle.TownId.ToString()) != null)
                {
                    ddlLocationTown.SelectedIndex = -1;
                    ddlLocationTown.Items.FindByValue(objArticle.TownId.ToString()).Selected = true;
                }
            }
        }

        protected void ddlType_SelectedIndexChanged(object sender, EventArgs e)
        {
            TypeId = Convert.ToInt32(ddlType.SelectedValue);

            BuildUDFieldForm();
            ArticleId = -1;
           
            CurrentPage = 0;
            BindControl();
            LoadCategories();
            BindTag();
            BindArticleList();
            SetLayout("ViewArticleList");
            CurrentTarget = "Article";
            DataBind();
        }
        #endregion

    }
}



