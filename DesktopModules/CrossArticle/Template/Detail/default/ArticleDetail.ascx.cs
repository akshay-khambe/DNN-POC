using Cross.DNN.Common.UserDefinedTable;
using Cross.DNN.Common.Utility;
using Cross.Modules.Article.Business;
using DotNetNuke.Common;
using DotNetNuke.Security;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Cross.Modules.Article.View
{
    public partial class ArticleDetail : ArticleModuleBase
    {
        public int ArticleId
        {
            get
            {
                if (ViewState["ArticleId"] != null)
                {
                    return Convert.ToInt32(ViewState["ArticleId"]);
                }
                else
                {
                    if ((Request.Params["ArticleId"] != null) && (Request.Params["ArticleId"] != ""))
                    {
                        ViewState["ArticleId"] = Int32.Parse(Request.Params["ArticleId"]);
                        return Int32.Parse(Request.Params["ArticleId"]);
                    }
                    else
                    {
                        return -1;
                    }
                }
            }
        }
        /// <summary>
        /// replace " ' from article title
        /// </summary>
        /// <param name="title"></param>
        /// <returns></returns>
        public string FormatTitle(string title)
        {
            return title.Replace("\"", " ").Replace("\'", " ");
        }
        public ArticleInfo objArticle
        {
            get
            {
                ArticleInfo ai = new ArticleInfo();
                ai = ArticleController.Get(ArticleId);
                LocalizeObject_Article(ai);
                return ai;
            }
        }
        public AuthorInfo objAuthor
        {
            get
            {
                AuthorInfo ai = AuthorController.Get(objArticle.UserId);
                if (ai == null)
                {
                    return new AuthorInfo();
                }
                LocalizeObject_User(ai);
                return ai;
            }
        }
        /// <summary>
        /// 当前有多少个 tabs,如果仅有一个的话，可以不用jquery tabs 方式显示
        /// </summary>
        public int TabCounts
        {
            get
            {
                int tab = 0;
                if (Settings_Detail.General.ShowArticle && !string.IsNullOrEmpty(objArticle.Article.Trim()))
                {
                    tab += 1;
                }
                if (Settings_Detail.General.ShowField1 && objType.EnableField1 && !string.IsNullOrEmpty(objArticle.Field1.Trim()))
                {
                    tab += 1;
                }
                if (Settings_Detail.General.ShowField2 && objType.EnableField2 && !string.IsNullOrEmpty(objArticle.Field2.Trim()))
                {
                    tab += 1;
                }
                if (Settings_Detail.General.ShowField3 && objType.EnableField3 && !string.IsNullOrEmpty(objArticle.Field3.Trim()))
                {
                    tab += 1;
                }
                if (Settings_Detail.General.ShowField4 && objType.EnableField4 && !string.IsNullOrEmpty(objArticle.Field4.Trim()))
                {
                    tab += 1;
                }
                if (Settings_Detail.General.ShowField5 && objType.EnableField5 && !string.IsNullOrEmpty(objArticle.Field5.Trim()))
                {
                    tab += 1;
                }
                //related
                if (ShowAttachment)
                {
                    tab += 1;
                }
                if (ShowRelatedArticle)
                {
                    tab += 1;
                }
                if (ShowRelatedAudio)
                {
                    tab += 1;
                }
                if (ShowRelatedImage)
                {
                    tab += 1;
                }
                if (ShowRelatedVideo)
                {
                    tab += 1;
                }

                if (Settings_Portal.Rating.AllowRating && Settings_Detail.General.ShowRating && objArticle.AllowRating)
                {
                    tab += 1;
                }

                if (Settings_Portal.Comment.AllowComment && objArticle.AllowComment && Settings_Detail.General.ShowComment)
                {
                    tab += 1;
                }

                if (Settings_Detail.AuthorProfile.ShowAuthorProfile && !string.IsNullOrEmpty(objAuthor.Biography.Trim()))
                {
                    tab += 1;
                }
                if (ShowGoogleMap)
                {
                    tab += 1;
                }
                if (ShowVote)
                {
                    tab += 1;
                }
                return tab;
            }
        }
        public TypeInfo objType
        {
            get
            {
                TypeInfo item = new TypeInfo();
                item = TypeController.Get(objArticle.TypeId);
                LocalizeObject_Type(item);
                return item;

            }
        }
        public bool ShowVote
        {
            get
            {
                if (Settings_Detail.Vote.ShowVote
                    && objType.AllowVote
                    && !string.IsNullOrEmpty(objArticle.VoteTitle)
                    && VoteOptionController.GetByArticle(ArticleId).Count() > 0
                    )
                {
                    return true;
                }
                return false;
            }
        }

        public bool ShowGoogleMap
        {
            get
            {
                if (Settings_Detail.GoogleMap.ShowGoogleMap
                    && objType.AllowGoogleMap
                 //   && !string.IsNullOrEmpty(Settings_Portal.GoogleMap.GoogleMapAccessKey)
                    && !string.IsNullOrEmpty(objArticle.Longitude)
                    && !string.IsNullOrEmpty(objArticle.Latitude))
                {
                    return true;
                }
                return false;
            }
        }

        public bool ShowAttachment
        {
            get
            {
                if (Settings_Portal.General.EnableDocument &&
                    Settings_Detail.General.ShowAttachment &&
                    AttachmentController.GetByArticle(ArticleId).Count > 0)
                {
                    return true;
                }
                return false;
            }
        }

        public bool ShowRelatedArticle
        {
            get
            {
                if (Settings_Detail.RelatedArticle.ShowRelatedArticle
                    && ArticleController.GetRelatedRows(objArticle.TypeId, UserId, ArticleId, Settings_Detail.RelatedArticle.RelatedArticleRows).Count > 0)
                {
                    return true;
                }
                return false;
            }
        }
        public bool ShowRelatedVideo
        {
            get
            {
                if (Settings_Portal.General.EnableVideo &&
                    Settings_Detail.RelatedVideo.ShowRelatedVideo &&
                    Cross.Modules.Article.Business.VideoController.GetByArticle(ArticleId).Count > 0)
                {
                    return true;
                }
                return false;
            }
        }
        public bool ShowRelatedAudio
        {
            get
            {
                if (Settings_Portal.General.EnableAudio &&
                    Settings_Detail.RelatedAudio.ShowRelatedAudio &&
                    AudioController.GetByArticle(ArticleId).Count > 0)
                {
                    return true;
                }
                return false;
            }
        }
        public bool ShowRelatedImage
        {
            get
            {
                if (Settings_Portal.General.EnableImage &&
                    Settings_Detail.RelatedImage.ShowRelatedImage &&
                    ImageController.GetByArticle(ArticleId).Count > 0)
                {
                    return true;
                }
                return false;
            }
        }
        public Setting_Detail Settings_Detail;

        protected string GetAuthorAvatar(string userId, string avartarEmail)
        {
            //first we take site avartar
            if (!string.IsNullOrEmpty(userId) && userId.Trim() != "-1")
            {
                DotNetNuke.Entities.Users.UserInfo objUser = DotNetNuke.Entities.Users.UserController.GetUserById(PortalId, Convert.ToInt32(userId));
                if (objUser != null)
                {
                    if (!string.IsNullOrEmpty(objUser.Profile.PhotoURL))
                    {
                        return objUser.Profile.PhotoURL;
                    }
                }
            }
            return GetGravatarUrl(avartarEmail, "48");
        }

        override protected void OnInit(EventArgs e)
        {
            Settings_Detail = new Setting_Detail(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_Detail.General.TypeId == -1)
            {
                Settings_Detail = new Setting_Detail(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        #region Event handler
        protected void Page_Load(object sender, EventArgs e)
        {

            if (ArticleId == -1 || objArticle == null)
            {
                return;
            }

            RegisterScriptAndCss();
            ctlPagingControl.ResourceFile = LocalUtils.ResourcesFile_Shared;
            this.LocalResourceFile = Localization.GetResourceFile(this, "ArticleDetail.ascx");
            //Social bookmarks
            if (Settings_Detail.General.ShowSocialBookmarks)
            {
                AddSocialBookmarks(objArticle.Title, Globals.NavigateURL(TabId, "", "ArticleId=" + ArticleId.ToString()));
            }
            BindUDField();
            //anarchy media player 只在不播放related video and related audio时启用
            if (Settings_Detail.Anarchy.EnableAnarchy && !ShowRelatedVideo && !ShowRelatedAudio)
            {
                RegisterScript_AnarchyMediaPlayer();
            }
            if (!IsPostBack)
            {
                //Update article views
                ArticleInfo objTempArticle = ArticleController.Get(ArticleId);
                objTempArticle.Views = objTempArticle.Views + 1;

                ArticleController.Update(objTempArticle, false);

                if (Settings_Portal.ReadTrack.Enable && objArticle.ReadTrack)
                {
                    if (UserId != -1 || Settings_Portal.ReadTrack.TrackAnonymous)
                    {
                        ReadTrackInfo objReadTrack = new ReadTrackInfo();
                        objReadTrack.ArticleId = ArticleId;
                        objReadTrack.Browser = Request.Browser.Browser;

                        string ip = string.Empty;

                        if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != "")
                        {
                            ip = Request.ServerVariables["REMOTE_ADDR"];
                        }
                        else
                        {
                            ip = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
                        }
                        if (string.IsNullOrEmpty(ip))
                            ip = Request.UserHostAddress;


                        //if (Context.Request.ServerVariables["HTTP_VIA"] != null) // using proxy
                        //{
                        //    ip = Context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].ToString();  // Return real client IP.
                        //}
                        //else// not using proxy or can't get the Client IP
                        //{
                        //    ip = Context.Request.ServerVariables["REMOTE_ADDR"].ToString(); //While it can't get the Client IP, it will return proxy IP.
                        //}
                        objReadTrack.Ip = ip;
                        objReadTrack.PortalId = PortalId;
                        objReadTrack.ReadDate = DateTime.Now;
                        objReadTrack.UserDisplayName = (UserId == -1 ? Localization.GetString("Anonymous", LocalUtils.ResourcesFile_Shared) : UserInfo.DisplayName);
                        objReadTrack.UserId = UserId;
                        objReadTrack.UserName = (UserId == -1 ? Localization.GetString("Anonymous", LocalUtils.ResourcesFile_Shared) : UserInfo.Username);

                        ReadTrackController.Add(objReadTrack);
                    }
                }
                //if link url exists ,simply redirect
                if (objArticle.LinkUrl != null && objArticle.LinkUrl.Trim() != "")
                {
                    if (objArticle.LinkUrl.ToLower().StartsWith("fileid=") || objArticle.LinkUrl.ToLower().StartsWith("userid=")
                        || Microsoft.VisualBasic.Information.IsNumeric(objArticle.LinkUrl))//当前链接到文件,当前用户信息，或者网站页面
                    {
                        Response.Redirect(Globals.LinkClick(objArticle.LinkUrl, TabId, ModuleId), true);
                    }
                    else
                    {
                        Response.Redirect(objArticle.LinkUrl, true);
                    }
                }
                DisplayArticleImage();
                BindRecommend();
                //bind tags
                BindArticleTags();
                BindAttachments();
                // bind related Articles
                BindRelatedArticles();

                BindRelatedVideo();
                BindRelatedAudio();
                BindRelatedImage();

                BindRating();
                BindComment();
                BindVote();
                if (UserInfo.UserID != -1)
                {
                    txtName.Text = UserInfo.DisplayName;
                    txtEmail.Text = UserInfo.Email;
                }
                DataBind();

                if (Settings_Portal.General.EnableSocialShare
                    && objArticle.ShareType == Convert.ToInt16(ShareType.Protected)
                    && !string.IsNullOrEmpty(objArticle.ProtectPassword))
                {
                    if ( UserId==-1 
                        || (objArticle.UserId != UserId && !UserInfo.IsInRole(PortalSettings.AdministratorRoleName))
                        )
                    {
                        tblPassword.Visible = true;
                        divContent.Visible = false;
                    }
                }
            }
        }
        #region user defined table
        private void BindUDField()
        {
            List<UDFieldInfo> list = (from p in Cache_UdtList where p.TypeId == objArticle.TypeId select p).ToList();
            if (list.Count > 0 && Settings_Detail.UDField.UseBuiltInTemplate && Settings_Detail.UDField.UDFieldList.Trim() != "")
            {
                string[] displayList = Settings_Detail.UDField.UDFieldList.Split(',');
                bool needDisplay = false;
                foreach (UDFieldInfo objUDField in list)
                {
                    needDisplay = false;
                    foreach (string fieldId in displayList)
                    {
                        if (fieldId == objUDField.Id.ToString())
                        {
                            //加入一个是否显示空值的选项控制
                            if (Settings_Detail.UDField.HideWhenEmpty == false)
                            {
                                needDisplay = true;
                                break;
                            }
                            else
                            {
                                UDDataInfo objUDData = UDDataController.GetByCulture(Convert.ToInt32(fieldId), ArticleId, GetCurrentCultureCode());
                                if (objUDData != null && !string.IsNullOrEmpty(objUDData.FieldValue))
                                {
                                    needDisplay = true;
                                    break;
                                }
                            }
                        }
                    }
                    if (needDisplay)
                    {
                        LocalizeObject_UDField(objUDField);
                        HtmlTableRow objRow = new HtmlTableRow();
                        objRow.VAlign = "Top";
                        // Caption for the field
                        HtmlTableCell objCell = new HtmlTableCell();
                        objCell.VAlign = "Top";
                        objCell.Align = "Left";
                        Label lblControl = new Label();
                        lblControl.Text = (objUDField.FieldTitle == null || objUDField.FieldTitle.Trim() == "") ? objUDField.FieldName : objUDField.FieldTitle + ":";
                        objCell.Controls.Add(lblControl);
                        objRow.Cells.Add(objCell);

                        objCell = new HtmlTableCell();
                        objCell.Align = "Left";
                        //add field value
                        objCell.Controls.Add(GetUDFieldValueControl(objUDField.Id, ArticleId));
                        objRow.Cells.Add(objCell);
                        tblUserDefinedField.Rows.Add(objRow);
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

            string articleValue = string.Empty;

            if (!string.IsNullOrEmpty(objUDField.DefaultValue))//first, we take objUDField.DefaultValue
            {
                articleValue = objUDField.DefaultValue;
            }
            //then take objData.FieldValue
            if (objData != null)
            {
                articleValue = objData.FieldValue;
            }

            if (string.IsNullOrEmpty(articleValue))
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
                ctlControl.ExistingValue = articleValue;
                ctlControl.Width = Settings_Detail.UDField.UDField_ImageWidth;
                ctlControl.Height = Settings_Detail.UDField.UDField_ImageHeight;
                ctlControl.NormalizeFlag = objUDField.NormalizeFlag;
                ctlControl.OutputSettings = objUDField.OutputSettings;
                ctlControl.InputSettings = objUDField.InputSettings;
                ctlControl.Target = "_self";
                ctlControl.CheckBoxList_Enabled = Settings_Detail.UDField.UDField_CheckBoxList_Enabled;
                ctlControl.CheckBoxList_RepeatColumns = Settings_Detail.UDField.UDField_CheckBoxList_RepeatColumns;
                return ctlControl;
            }
        }
        protected string GetUDFieldValue(string fieldName)
        {
            UDFieldInfo objUDField = UDFieldController.GetByName(fieldName, objType.Id);
            if (objUDField == null)
            {
                return "Unknow field name, please check it";
            }
            LocalizeObject_UDField(objUDField);

            UDDataInfo objData = UDDataController.GetByCulture(objUDField.Id, ArticleId, GetCurrentCultureCode());

            string articleValue = string.Empty;

            if (!string.IsNullOrEmpty(objUDField.DefaultValue))//first, we take objUDField.DefaultValue
            {
                articleValue = objUDField.DefaultValue;
            }
            //then take objData.FieldValue
            if (objData != null)
            {
                articleValue = objData.FieldValue;
            }

            if (string.IsNullOrEmpty(articleValue.Trim()))
            {
                return "";
            }
            else
            {
                string value = objData.FieldValue;
                if (value.StartsWith("FileID="))
                {
                    if (objUDField.FieldType.ToLower() == "image" || objUDField.FieldType.ToLower() == "url")
                    {
                        return GetRelativeUrlByFileId_Local(value);
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

        #region script and css

        private void RegisterScriptAndCss()
        {
            CheckXhtml();
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQueryUI);
            StringBuilder sb = new StringBuilder();
            //Jquery ui
            //sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/desktopmodules/CrossArticle/css/jquery/{1}\" type=\"text/css\"  />{2}",
            //    FullDomainName, Settings_Detail.General.TabStyle, "\r\n");

            sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/desktopmodules/CrossArticle/css/jquery-ui-themes-1.11.4/Themes/{1}/jquery-ui.css\" type=\"text/css\"  />{2}",
             FullDomainName, Settings_Detail.General.TabStyle, "\r\n");

            Page.ClientScript.RegisterStartupScript(this.GetType(), "Cp_Detail_Script", sb.ToString());
            //video box is used to play related videos and audios
            if (ShowRelatedVideo || ShowRelatedAudio)
            {
                RegisterScript_LightVideo();
                if (ShowRelatedVideo)//thick box is used to play embed videos
                {
                    RegisterScript_ThickBox();
                }
            }
            if (ShowGoogleMap)
            {
                RegisterScript_GoogleMap();
            }

            //fancy box used to play related images
            if (ShowRelatedImage)
            {
                RegisterScript_FancyBox();
            }
        }
        /// <summary>
        /// Register google map script
        /// </summary>
        private void RegisterScript_GoogleMap()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered("GoogleMapScript"))
            {
                StringBuilder sb = new StringBuilder();
                //sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}maps.googleapis.com/maps/api/js?key={1}&sensor=true\"></script>{2}",
                //    System.Web.HttpContext.Current.Request.IsSecureConnection ? "https://" : "http://",
                //    Settings_Portal.GoogleMap.GoogleMapAccessKey, "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}maps.googleapis.com/maps/api/js?sensor=true\"></script>{1}",
                   System.Web.HttpContext.Current.Request.IsSecureConnection ? "https://" : "http://",
                   "\r\n");
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "GoogleMapScript", sb.ToString(), false);
            }
        }
        private void RegisterScript_FancyBox()
        {
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

        private void RegisterScript_ThickBox()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered("ThickBoxScript"))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/js/thickbox/thickbox.css\" type=\"text/css\" media=\"screen\" />{1}", FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                sb.AppendLine(RegisterPath_ThickBoxLoadingGif());
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/thickbox/thickbox.js\"></script>{1}", FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "ThickBoxScript", sb.ToString(), false);
            }
        }
        private void RegisterScript_SwfObject()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered("UltraFlashSwfObject"))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}swfobject.js\"></script>{1}", FullDomainName + "/DesktopModules/CrossArticle/Js/", "\r\n");
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "UltraFlashSwfObject", sb.ToString(), false);
            }
        }
        private void CheckXhtml()
        {
            if (Settings_Detail.General.CheckXhtmlDocType)//添加一个check xhtml 选项让用户可以禁止自动添加doctype
            {
                Control ctlDocType = BasePage.FindControl("skinDocType");//light box video needs xhtml doctype
                if (ctlDocType != null)
                {
                    System.Web.UI.WebControls.Literal lit = (System.Web.UI.WebControls.Literal)ctlDocType;
                    lit.Text = @"<!DOCTYPE html
                            PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN'
                            'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'> ";

                }
            }
        }
        private void RegisterScript_LightVideo()
        {

            RegisterScript_Mootools();
            RegisterScript_SwfObject();

            if (!Page.ClientScript.IsClientScriptBlockRegistered("CrossLiveVideoLightBoxScript"))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}/css/VideoBox.css\" type=\"text/css\" media=\"screen\" />{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                sb.AppendLine(RegisterPath_LightVideoFlv());
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/videobox/videobox.namespaced.js\"></script>{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CrossLiveVideoLightBoxScript", sb.ToString());


            }
        }
        private void RegisterScript_Mootools()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered("MootoolsScript"))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}/js/videobox/mootools.v1.11.namespaced.js\"></script>{1}",
                    FullDomainName + "/DesktopModules/CrossArticle", "\r\n"); ;
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "MootoolsScript", sb.ToString(), false);
            }
        }

        private string RegisterPath_LightVideoFlv()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("\r\n");
            sb.Append("<script type='text/javascript'> ");
            sb.Append("\r\n");
            //This global variable is used to set the domain name, so the flv flash player path  is correct
            sb.AppendFormat("var CROSS_ULTRAFLASHPLAYER_FLV_PLAYER_FILE='{0}'; ",
                FullDomainName + "/Desktopmodules/CrossArticle/flash/mediaplayer.swf");
            sb.Append("\r\n");
            sb.Append("</script> ");
            sb.Append("\r\n");

            return sb.ToString();
        }

        private string RegisterPath_ThickBoxLoadingGif()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("\r\n");
            sb.Append("<script type='text/javascript'> ");
            sb.Append("\r\n");
            //This global variable is used to set the domain name, so the ThickBox_Loading  is correct
            sb.AppendFormat("var Cross_ThickBox_Loading_Gif='{0}'; ", FullDomainName + "/Desktopmodules/CrossArticle/Js/thickbox/loadingAnimation.gif");
            sb.Append("\r\n");
            sb.Append("</script> ");
            sb.Append("\r\n");

            return sb.ToString();
        }
        private void RegisterScript_AnarchyMediaPlayer()
        {
            StringBuilder sb = new StringBuilder();

            sb.AppendLine("<script type=\"text/javascript\">");
            // Configure plugin options below
            sb.AppendFormat("\tvar anarchy_url = \'{0}\';{1}",
                FullDomainName + "/DesktopModules/CrossArticle/", "\r\n");

            if (Settings_Detail.Anarchy.VidDownloadLink == true)
            {
                sb.AppendFormat("var viddownloadLink = \'inline\';{0}", "\r\n");
            }
            else
            {
                sb.AppendFormat("var viddownloadLink = \'none\';{0}", "\r\n");
            }

            //Mp3 

            if (Settings_Detail.Anarchy.Mp3PlayerLoop == true)
            {
                sb.AppendFormat("var playerloop = \'yes\';{0}", "\r\n");
            }
            else
            {
                sb.AppendFormat("var playerloop = \'no\';{0}", "\r\n");
            }

            if (Settings_Detail.Anarchy.Mp3DownloadLink == true)
            {
                sb.AppendFormat("var mp3downloadLink = \'inline\';{0}", "\r\n");
            }
            else
            {
                sb.AppendFormat("var mp3downloadLink = \'none\';{0}", "\r\n");
            }

            sb.AppendFormat("var playerbg = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerBg.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerleftbg = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerLeftBg.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerrightbg = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerRightBg.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerrightbghover = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerRightBgHover.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerlefticon = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerLeftIcon.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerrighticon = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerRightIcon.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerrighticonhover = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerRightIconHover.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playertext = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerText.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerslider = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerSlider.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playertrack = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerTrack.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerloader = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerLoader.Replace("0x", ""), "\r\n");

            sb.AppendFormat("var playerborder = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerBorder.Replace("0x", ""), "\r\n");



            //End mp3

            //flv

            sb.AppendFormat("var flvwidth = \'{0}\';{1}", Settings_Detail.Anarchy.FlvWidth, "\r\n");
            sb.AppendFormat("var flvheight = \'{0}\';{1}", Settings_Detail.Anarchy.FlvHeight, "\r\n");
            sb.AppendFormat("var flvfullscreen = \'{0}\';{1}", Settings_Detail.Anarchy.FlvFullScreen.ToString().ToLower(), "\r\n");
            //End flv

            //Quicktime player options
            sb.AppendFormat("var qtloop = \'{0}\';{1}", Settings_Detail.Anarchy.QtLoop.ToString().ToLower(), "\r\n");
            sb.AppendFormat("var qtwidth = \'{0}\';{1}", Settings_Detail.Anarchy.QtWidth, "\r\n");
            sb.AppendFormat("var qtheight = \'{0}\';{1}", Settings_Detail.Anarchy.QtHeight, "\r\n");
            sb.AppendFormat("var qtkiosk = \'{0}\';{1}", (!Settings_Detail.Anarchy.Qtkiosk).ToString().ToLower(), "\r\n");

            //WMV player options
            sb.AppendFormat("var wmvwidth = \'{0}\';{1}", Settings_Detail.Anarchy.WmvWidth, "\r\n");
            sb.AppendFormat("var wmvheight = \'{0}\';{1}", Settings_Detail.Anarchy.WmvHeight, "\r\n");

            // CSS styles
            sb.AppendFormat("var mp3playerstyle = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3PlayerStyle, "\r\n");
            sb.AppendFormat("var mp3imgmargin = \'{0}\';{1}", Settings_Detail.Anarchy.Mp3ImgMargin, "\r\n");
            sb.AppendFormat("var vidimgmargin = \'{0}\';{1}", Settings_Detail.Anarchy.VidImgMargin, "\r\n");

            //加入点击播放的flash参数提示
            sb.AppendFormat("var clicktoplay = \'{0}\';{1}", Localization.GetString("flashVars_ClickToPlay.Text", this.LocalResourceFile), "\r\n");


            /* ------------------ End configuration options --------------------- */

            string anarchyMediaPlayerScript = @"/* --------------------- Flash MP3 audio player ----------------------- */
if(typeof(Anarchy) == 'undefined') Anarchy = {}
Anarchy.Mp3 = {
	playimg: null,
	player: null,
	go: function() {
		var all = document.getElementsByTagName('a')
		for (var i = 0, o; o = all[i]; i++) {
			if(o.href.match(/\.mp3$/i) && o.className!=""amplink"") {
				o.style.display = mp3downloadLink
				var img = document.createElement('img')
				img.src = anarchy_url+'/images/audio_mp3_play.gif'; img.title = clicktoplay;
				img.style.margin = mp3imgmargin
				img.style.cursor = 'pointer'
				img.onclick = Anarchy.Mp3.makeToggle(img, o.href)
				o.parentNode.insertBefore(img, o)
	}}},
	toggle: function(img, url) {
		if (Anarchy.Mp3.playimg == img) Anarchy.Mp3.destroy()
		else {
			if (Anarchy.Mp3.playimg) Anarchy.Mp3.destroy()
			img.src = anarchy_url+'/images/audio_mp3_stop.gif'; Anarchy.Mp3.playimg = img;
			Anarchy.Mp3.player = document.createElement('span')
			Anarchy.Mp3.player.innerHTML = '<br /><object style=""'+mp3playerstyle+'"" classid=""clsid:d27cdb6e-ae6d-11cf-96b8-444553540000""' +
			'codebase=""http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0""' +
			'width=""290"" height=""24"" id=""player"" align=""middle"">' +
			'<param name=""wmode"" value=""transparent"" />' +
			'<param name=""allowScriptAccess"" value=""sameDomain"" />' +
			'<param name=""flashVars"" value=""bg=0x'+playerbg+'&amp;leftbg=0x'+playerleftbg+'&amp;rightbg=0x'+playerrightbg+'&amp;rightbghover=0x'+playerrightbghover+'&amp;lefticon=0x'+playerlefticon+'&amp;righticon=0x'+playerrighticon+'&amp;righticonhover=0x'+playerrighticonhover+'&amp;text=0x'+playertext+'&amp;slider=0x'+playerslider+'&amp;track=0x'+playertrack+'&amp;loader=0x'+playerloader+'&amp;border=0x'+playerborder+'&amp;autostart=yes&amp;loop='+playerloop+'&amp;soundFile='+url+'"" />' +
			'<param name=""movie"" value=""'+anarchy_url+'/flash/player.swf"" /><param name=""quality"" value=""high"" />' +
			'<embed style=""'+mp3playerstyle+'"" src=""'+anarchy_url+'/flash/player.swf"" flashVars=""bg=0x'+playerbg+'&amp;leftbg=0x'+playerleftbg+'&amp;rightbg=0x'+playerrightbg+'&amp;rightbghover=0x'+playerrightbghover+'&amp;lefticon=0x'+playerlefticon+'&amp;righticon=0x'+playerrighticon+'&amp;righticonhover=0x'+playerrighticonhover+'&amp;text=0x'+playertext+'&amp;slider=0x'+playerslider+'&amp;track=0x'+playertrack+'&amp;loader=0x'+playerloader+'&amp;border=0x'+playerborder+'&amp;autostart=yes&amp;loop='+playerloop+'&amp;soundFile='+url+'"" '+
			'quality=""high"" wmode=""transparent"" width=""290"" height=""24"" name=""player""' +
			'align=""middle"" allowScriptAccess=""sameDomain"" type=""application/x-shockwave-flash""' +
			' pluginspage=""http://www.macromedia.com/go/getflashplayer"" /></object><br />'
			img.parentNode.insertBefore(Anarchy.Mp3.player, img.nextSibling)
	}},
	destroy: function() {
		Anarchy.Mp3.playimg.src = anarchy_url+'/images/audio_mp3_play.gif'; Anarchy.Mp3.playimg = null
		Anarchy.Mp3.player.removeChild(Anarchy.Mp3.player.firstChild); Anarchy.Mp3.player.parentNode.removeChild(Anarchy.Mp3.player); Anarchy.Mp3.player = null
	},
	makeToggle: function(img, url) { return function(){ Anarchy.Mp3.toggle(img, url) }}
}

/* ----------------- Flash flv video player ----------------------- */

if(typeof(Anarchy) == 'undefined') Anarchy = {}
Anarchy.FLV = {
	go: function() {
		var all = document.getElementsByTagName('a')
		for (var i = 0, o; o = all[i]; i++) {
			if(o.href.match(/\.flv$/i) && o.className!=""amplink"") {
			o.style.display = viddownloadLink
			url = o.href
			var flvplayer = document.createElement('span')
			flvplayer.innerHTML = '<object type=""application/x-shockwave-flash"" wmode=""transparent"" data=""'+anarchy_url+'/flash/mediaplayer.swf?click='+anarchy_url+'/images/flvplaybutton.jpg&file='+url+'&showfsbutton='+flvfullscreen+'"" height=""'+flvheight+'"" width=""'+flvwidth+'"">' +
			'<param name=""movie"" value=""'+anarchy_url+'/flash/mediaplayer.swf?click='+anarchy_url+'/images/flvplaybutton.jpg&file='+url+'&showfsbutton='+flvfullscreen+'""> <param name=""wmode"" value=""transparent"">' +
			'<embed src=""'+anarchy_url+'/flash/mediaplayer.swf?file='+url+'&click='+anarchy_url+'/images/flvplaybutton.jpg&&showfsbutton='+flvfullscreen+'"" ' + 
			'width=""'+flvwidth+'"" height=""'+flvheight+'"" name=""flvplayer"" align=""middle"" ' + 
			'play=""true"" loop=""false"" quality=""high"" allowScriptAccess=""sameDomain"" ' +
			'type=""application/x-shockwave-flash"" pluginspage=""http://www.macromedia.com/go/getflashplayer"">' + 
			'</embed></object><br />'
			o.parentNode.insertBefore(flvplayer, o)
	}}}}


var quicktimeVersion = 0;
function getQuicktimeVersion() {
	var agent = navigator.userAgent.toLowerCase(); 
	
	// NS3+, Opera3+, IE5+ Mac (support plugin array):  check for Quicktime plugin in plugin array
	if (navigator.plugins != null && navigator.plugins.length > 0) {
      for (i=0; i < navigator.plugins.length; i++ ) {
         var plugin =navigator.plugins[i];
         if (plugin.name.indexOf(""QuickTime"") > -1) {
            quicktimeVersion = parseFloat(plugin.name.substring(18));
         }
      }
	}
   	else if (window.ActiveXObject) {
		execScript('on error resume next: qtObj = IsObject(CreateObject(""QuickTime.QuickTime.4""))','VBScript');
			if (qtObj = true) {
				quicktimeVersion = 100;
				}
			else {
				quicktimeVersion = 0;
			}
		}
	return quicktimeVersion;
}

/* ----------------------- Quicktime player ------------------------ */

if(typeof(Anarchy) == 'undefined') Anarchy = {}
Anarchy.MOV = {
	playimg: null,
	player: null,
	go: function() {
		var all = document.getElementsByTagName('a')
		Anarchy.MOV.preview_images = { }
		for (var i = 0, o; o = all[i]; i++) {
			if(o.href.match(/\.mov$|\.mp4$|\.m4v$|\.m4b$|\.3gp$/i) && o.className!=""amplink"") {
				o.style.display = 'none'
				var img = document.createElement('img')
				Anarchy.MOV.preview_images[i] = document.createElement('img') ;
				Anarchy.MOV.preview_images[i].src = o.href + '.jpg' ;
				Anarchy.MOV.preview_images[i].defaultImg = img ;
				Anarchy.MOV.preview_images[i].replaceDefault = function() {
				  this.defaultImg.src = this.src ; 
				}
				Anarchy.MOV.preview_images[i].onload = Anarchy.MOV.preview_images[i].replaceDefault ;
				img.src = anarchy_url+'/images/vid_play.gif'
				img.title = clicktoplay;
				img.style.margin = vidimgmargin
				img.style.padding = '0px'
				img.style.display = 'block'
				img.style.cursor = 'pointer'
				img.height = qtheight
				img.width = qtwidth
				img.onclick = Anarchy.MOV.makeToggle(img, o.href)
				o.parentNode.insertBefore(img, o)
	}}},
	toggle: function(img, url) {
		if (Anarchy.MOV.playimg == img) Anarchy.MOV.destroy()
		else {
			if (Anarchy.MOV.playimg) Anarchy.MOV.destroy()
			img.src = anarchy_url+'/images/vid_play.gif'
			img.style.display = 'none'; 
			Anarchy.MOV.playimg = img;
			Anarchy.MOV.player = document.createElement('p')
			var quicktimeVersion = getQuicktimeVersion()
			if (quicktimeVersion >= 6) {
			Anarchy.MOV.player.innerHTML = '<embed src=""'+url+'"" width=""'+qtwidth+'"" height=""'+qtheight+'"" loop=""'+qtloop+'"" autoplay=""true"" controller=""true"" border=""0"" type=""video/quicktime"" kioskmode=""'+qtkiosk+'"" scale=""tofit""></embed><br />'
          img.parentNode.insertBefore(Anarchy.MOV.player, img.nextSibling)
          }
		else
			Anarchy.MOV.player.innerHTML = '<a href=""http://www.apple.com/quicktime/download/"" target=""_blank""><img src=""'+anarchy_url+'/images/getqt.jpg""></a>'
          img.parentNode.insertBefore(Anarchy.MOV.player, img.nextSibling)
	}},
	destroy: function() {
	},
	makeToggle: function(img, url) { return function(){ Anarchy.MOV.toggle(img, url) }}
}

/* --------------------- MPEG 4 Audio Quicktime player ---------------------- */

if(typeof(Anarchy) == 'undefined') Anarchy = {}
Anarchy.M4a = {
	playimg: null,
	player: null,
	go: function() {
		var all = document.getElementsByTagName('a')
		for (var i = 0, o; o = all[i]; i++) {
			if(o.href.match(/\.m4a$/i) && o.className!=""amplink"") {
				o.style.display = 'none'
				var img = document.createElement('img')
				img.src = anarchy_url+'/images/audio_mp4_play.gif'; img.title = clicktoplay;
				img.style.margin = mp3imgmargin
				img.style.cursor = 'pointer'
				img.onclick = Anarchy.M4a.makeToggle(img, o.href)
				o.parentNode.insertBefore(img, o)
	}}},
	toggle: function(img, url) {
		if (Anarchy.M4a.playimg == img) Anarchy.M4a.destroy()
		else {
			if (Anarchy.M4a.playimg) Anarchy.M4a.destroy()
			img.src = anarchy_url+'/images/audio_mp4_stop.gif'; Anarchy.M4a.playimg = img;
			Anarchy.M4a.player = document.createElement('p')
			var quicktimeVersion = getQuicktimeVersion()
			if (quicktimeVersion >= 6) {
			Anarchy.M4a.player.innerHTML = '<embed src=""'+url+'"" width=""160"" height=""16"" loop=""'+qtloop+'"" autoplay=""true"" controller=""true"" border=""0"" type=""video/quicktime"" kioskmode=""'+qtkiosk+'"" ></embed><br />'
          img.parentNode.insertBefore(Anarchy.M4a.player, img.nextSibling)
          }
		else
			Anarchy.M4a.player.innerHTML = '<a href=""http://www.apple.com/quicktime/download/"" target=""_blank""><img src=""'+anarchy_url+'/images/getqt.jpg""></a>'
          img.parentNode.insertBefore(Anarchy.M4a.player, img.nextSibling)
	}},
	destroy: function() {
		Anarchy.M4a.playimg.src = anarchy_url+'/images/audio_mp4_play.gif'; Anarchy.M4a.playimg = null
		Anarchy.M4a.player.removeChild(Anarchy.M4a.player.firstChild); Anarchy.M4a.player.parentNode.removeChild(Anarchy.M4a.player); Anarchy.M4a.player = null
	},
	makeToggle: function(img, url) { return function(){ Anarchy.M4a.toggle(img, url) }}
}

/* ----------------------- WMV player -------------------------- */

if(typeof(Anarchy) == 'undefined') Anarchy = {}
Anarchy.WMV = {
	playimg: null,
	player: null,
	go: function() {
		var all = document.getElementsByTagName('a')
		for (var i = 0, o; o = all[i]; i++) {
			if(o.href.match(/\.asf$|\.avi$|\.wmv$/i) && o.className!=""amplink"") {
				o.style.display = viddownloadLink
				var img = document.createElement('img')
				img.src = anarchy_url+'/images/vid_play.gif'; img.title = clicktoplay;
				img.style.margin = '0px'
				img.style.padding = '0px'
				img.style.display = 'block'
				img.style.cursor = 'pointer'
				img.height = qtheight
				img.width = qtwidth
				img.onclick = Anarchy.WMV.makeToggle(img, o.href)
				o.parentNode.insertBefore(img, o)
	}}},
	toggle: function(img, url) {
		if (Anarchy.WMV.playimg == img) Anarchy.WMV.destroy()
		else {
			  if (Anarchy.WMV.playimg) Anarchy.WMV.destroy()
			  img.src = anarchy_url+'/images/vid_play.gif'
			  img.style.display = 'none'; 
			  Anarchy.WMV.playimg = img;
			  Anarchy.WMV.player = document.createElement('span')
			  if(navigator.userAgent.indexOf('Mac') != -1) {
			  Anarchy.WMV.player.innerHTML = '<embed src=""'+url+'"" width=""'+qtwidth+'"" height=""'+qtheight+'"" loop=""'+qtloop+'"" autoplay=""true"" controller=""true"" border=""0"" type=""video/quicktime"" kioskmode=""'+qtkiosk+'"" scale=""tofit"" pluginspage=""http://www.apple.com/quicktime/download/""></embed><br />'
			  img.parentNode.insertBefore(Anarchy.WMV.player, img.nextSibling)
			  } else {
			  if (navigator.plugins && navigator.plugins.length) {
			  Anarchy.WMV.player.innerHTML = '<embed type=""application/x-mplayer2"" src=""'+url+'"" ' +
			  'showcontrols=""1"" ShowStatusBar=""1"" autostart=""1"" displaySize=""4""' +
			  'pluginspage=""http://www.microsoft.com/Windows/Downloads/Contents/Articles/MediaPlayer/""' +
			  'width=""'+wmvwidth+'"" height=""'+wmvheight+'"">' +
			  '</embed><br />'
			  img.parentNode.insertBefore(Anarchy.WMV.player, img.nextSibling)
			  } else {
				Anarchy.WMV.player.innerHTML = '<object classid=""CLSID:6BF52A52-394A-11d3-B153-00C04F79FAA6"" width=""'+wmvwidth+'"" height=""'+wmvheight+'"" id=""player""> ' +
			  '<param name=""url"" value=""'+url+'"" /> ' +
			  '<param name=""autoStart"" value=""True"" /> ' +
			  '<param name=""stretchToFit"" value=""True"" /> ' +
			  '<param name=""showControls"" value=""True"" /> ' +
			  '<param name=""ShowStatusBar"" value=""True"" /> ' +
			  '<embed type=""application/x-mplayer2"" src=""'+url+'"" ' +
			  'showcontrols=""1"" ShowStatusBar=""1"" autostart=""1"" displaySize=""4""' +
			  'pluginspage=""http://www.microsoft.com/Windows/Downloads/Contents/Articles/MediaPlayer/""' +
			  'width=""'+wmvwidth+'"" height=""'+wmvheight+'"">' +
			  '</embed>'
			  '</object><br />'
			  img.parentNode.insertBefore(Anarchy.WMV.player, img.nextSibling)
			  }}
	}},
	destroy: function() {
		Anarchy.WMV.playimg.src = anarchy_url+'/images/vid_play.gif'
		Anarchy.WMV.playimg.style.display = 'inline'; Anarchy.WMV.playimg = null
		Anarchy.WMV.player.removeChild(Anarchy.WMV.player.firstChild); 
		Anarchy.WMV.player.parentNode.removeChild(Anarchy.WMV.player); 
		Anarchy.WMV.player = null
	},
	makeToggle: function(img, url) { return function(){ Anarchy.WMV.toggle(img, url) }}
}

/* ----------------- Trigger players onload ----------------------- */

Anarchy.addLoadEvent = function(f) { var old = window.onload
	if (typeof old != 'function') window.onload = f
	else { window.onload = function() { old(); f() }}
}

Anarchy.addLoadEvent(Anarchy.Mp3.go)
Anarchy.addLoadEvent(Anarchy.FLV.go)
Anarchy.addLoadEvent(Anarchy.MOV.go)
Anarchy.addLoadEvent(Anarchy.M4a.go)
Anarchy.addLoadEvent(Anarchy.WMV.go)
";
            sb.AppendLine(anarchyMediaPlayerScript);

            sb.Append("</script>");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CrossAnarchyMediaPlayer", sb.ToString(), false);

        }
        #endregion
        #region other helper method
        private void DisplayArticleImage()
        {
            if (!Settings_Detail.General.ShowImage)
            {
                return;
            }
            if (!objType.FieldEnable_Image)
            {
                return;
            }
            //only consider the local image
            if (Settings_Portal.General.FileStorage == LocalUtils.FileStorage_Local
                && !string.IsNullOrEmpty(objArticle.Image)
                && objArticle.Image.StartsWith("FileID="))
            {
                DotNetNuke.Services.FileSystem.IFileInfo fi = GetFileInfoById(objArticle.Image);
                if (fi == null)//该文件已经被删除
                {
                    imgArticleImage.ImageUrl = LocalUtils.DefaultPicture;
                }
                else
                {
                    if (System.IO.File.Exists(fi.PhysicalPath))//存在该文件
                    {
                        System.Drawing.Image i;
                        i = System.Drawing.Image.FromFile(fi.PhysicalPath);
                        if (Settings_Detail.General.ImageWidth < i.Width)
                        {
                            imgArticleImage.Width = Settings_Detail.General.ImageWidth;
                        }
                        i.Dispose();//释放资源
                    }
                }
            }
        }
        /// <summary>
        /// bind vote data
        /// </summary>
        private void BindVote()
        {
            if (!ShowVote)
            {
                return;
            }
            lblVoteSuccess.Visible = false;
            lblVoteFailure.Visible = false;
            rblVoteOption.Items.Clear();
            cblVoteOption.Items.Clear();

            List<VoteOptionInfo> options = VoteOptionController.GetByArticle(ArticleId).ToList();
            List<VoteResultInfo> results = VoteResultController.GetByArticle(ArticleId).ToList();
            int votePeople = (from p in results select p.Guid).Distinct().Count();
            foreach (var item in options)
            {
                ListItem objList = new ListItem();
                objList.Value = item.Id.ToString();

                int optionVote = (from p in results where p.OptionId == item.Id select p).ToList().Count();
                decimal percentage = 0;
                if (results.Count > 0)
                {
                    //remain the last 4 point
                    percentage = Math.Round((Convert.ToDecimal(optionVote)) / (Convert.ToDecimal(results.Count)), 4) * 100;
                }

                string bar = string.Format("<br/><div class=\"outbar\"> <div class=\"inbar\" style=\"width: {0}%;\"><span>&nbsp;&nbsp;&nbsp;</span></div> </div>",
                    percentage > 0 ? percentage.ToString("##.##") : "0");
                bar += string.Format(Localization.GetString("Votes", LocalResourceFile), optionVote.ToString(), percentage > 0 ? percentage.ToString("##.##") : "0");
                objList.Text = item.Title + bar;
                //if (percentage>0)
                //{
                //    objList.Text = item.Title + " ( " + optionVote.ToString() + " "
                //           + Localization.GetString("Votes", LocalResourceFile) + " " + percentage.ToString("##.##") + "%" + " )";

                //}
                //else
                //{
                //    objList.Text = item.Title + " ( " + optionVote.ToString() + " "
                //           + Localization.GetString("Votes", LocalResourceFile) + " " + percentage.ToString() + "%" + " )";

                //}

                if (objArticle.MultipleChoice)
                {
                    cblVoteOption.Items.Add(objList);
                }
                else
                {
                    rblVoteOption.Items.Add(objList);
                }
            }

            //vote is expired
            if (!DotNetNuke.Common.Utilities.Null.IsNull(objArticle.VoteExpireDate)
                && objArticle.VoteExpireDate < DateTime.Now)
            {
                lblVoteSummary.Text = votePeople.ToString() + " " + Localization.GetString("VoteCount", LocalResourceFile)
                    + " " + Localization.GetString("Vote_Expire", LocalResourceFile);
                btnVote.Visible = false;
                return;
            }

            string tip = GetVoteTip();

            if (!string.IsNullOrEmpty(tip))
            {
                lblVoteSummary.Text = votePeople.ToString() + " " + Localization.GetString("VoteCount", LocalResourceFile)
                   + " ( " + tip + " )";
                btnVote.Visible = false;
                return;
            }
            else
            {
                lblVoteSummary.Text = votePeople.ToString() + " " + Localization.GetString("VoteCount", LocalResourceFile);

                btnVote.Visible = true;
            }
        }
        private string GetVoteTip()
        {
            List<VoteResultInfo> results = VoteResultController.GetByArticle(ArticleId).ToList();
            string tip = string.Empty;
            //首先检查匿名用户
            if (UserId == -1)
            {
                if (Utils.HasRolePermission(objArticle.VoteRoles))
                {
                    //check if vote before

                    HttpCookie objCookie = Request.Cookies.Get("CrossArticleVote_" + ArticleId.ToString());
                    //to do
                    //不知道为何，此处取出的http cookie 的expires 值总是为0001/01/01, 所以无从判断objCookie.Expires > DateTime.Now这句
                    //这是个问题，以后有空的时候好好查一下
                    //现在先用一个比较笨重的办法, 取出cookie.value （该值应该为guid), 然后取出对应的submit date,比较
                    //if (objCookie != null &&  objCookie.Value=="1" && objCookie.Expires > DateTime.Now)
                    if (objCookie != null)
                    {
                        string guid = objCookie.Value;
                        List<VoteResultInfo> voteHistory = (from p in results where p.Guid == guid select p).ToList();
                        if (voteHistory.Count > 0 && voteHistory[0].SubmitDate.AddDays(objArticle.VoteCookieDays) > DateTime.Now)
                        {
                            tip = Localization.GetString("Vote_PcVoteBefore", LocalResourceFile);
                        }

                    }
                }
                else
                {
                    tip = Localization.GetString("Vote_Login", LocalResourceFile);
                }
            }
            else
            {
                if (!Utils.HasRolePermission(objArticle.VoteRoles))
                {

                    tip = Localization.GetString("Vote_NoPermission", LocalResourceFile);

                }
                else
                {
                    if ((from p in results where p.UserId == UserId select p).ToList().Count > 0)
                    {
                        tip = Localization.GetString("Vote_PeopleVoteBefore", LocalResourceFile);
                    }
                }
            }
            return tip;
        }

        protected void btnVote_Click(object sender, EventArgs e)
        {
            //防止重复刷新后提交
            if (!string.IsNullOrEmpty(GetVoteTip())) return;

            List<string> answers = new List<string>();
            if (objArticle.MultipleChoice)
            {
                foreach (ListItem item in cblVoteOption.Items)
                {
                    if (item.Selected == true)
                    {
                        answers.Add(item.Value);
                    }
                }
            }
            else
            {
                foreach (ListItem item in rblVoteOption.Items)
                {
                    if (item.Selected == true)
                    {
                        answers.Add(item.Value);
                    }
                }
            }
            if (answers.Count < 1)
            {
                lblVoteFailure.Visible = true;
                return;
            }
            System.Guid objGuid = new Guid();
            objGuid = Guid.NewGuid();
            string guid = objGuid.ToString("N");

            foreach (var item in answers)
            {
                VoteResultInfo objResult = new VoteResultInfo();
                objResult.ArticleId = ArticleId;
                objResult.Guid = guid;
                objResult.OptionId = Convert.ToInt32(item);
                objResult.SubmitDate = DateTime.Now;
                objResult.UserId = UserId;
                objResult.UserName = (UserId == -1) ? Localization.GetString("Anonymous", LocalResourceFile) : UserInfo.Username;

                VoteResultController.Add(objResult);
            }
            if (UserId == -1)
            {
                HttpCookie objCookie = new HttpCookie("CrossArticleVote_" + ArticleId.ToString());
                objCookie.Value = guid;
                objCookie.Expires = DateTime.Now.AddDays(objArticle.VoteCookieDays);

                Response.Cookies.Add(objCookie);
            }
            BindVote();
            btnVote.Visible = false;
            lblVoteSuccess.Visible = true;
        }
        private void BindRecommend()
        {
            if (objArticle.AllowRecommend && Settings_Portal.Recommend.AllowRecommend)
            {
                lblUpVotes.Text = objArticle.UpVotes.ToString();
                lblDownVotes.Text = objArticle.DownVotes.ToString();
                if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Utils.HasRolePermission(objArticle.RecommendRoles))
                {
                    lblRecommendNeedLoggedIn.Visible = false;
                }
                else
                {
                    lblRecommendNeedLoggedIn.Visible = true;
                }

            }

        }

        private void BindAttachments()
        {
            if (ShowAttachment)
            {
                List<AttachmentInfo> list = AttachmentController.GetByArticle(ArticleId);
                if (list.Count > 0)
                {
                    if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Utils.HasRolePermission(objArticle.DownloadRoles))
                    {
                        lblAttacmentNeedLoggedIn.Visible = false;
                        dlAttachment.Visible = true;
                        foreach (var item in list)
                        {
                            LocalizeObject_Attachment(item);
                        }
                        dlAttachment.DataSource = list;
                        dlAttachment.DataBind();
                    }
                    else
                    {
                        lblAttacmentNeedLoggedIn.Visible = true;
                        dlAttachment.Visible = false;
                    }
                }
            }
        }

        private void BindArticleTags()
        {
            //bind tags
            if (Settings_Detail.General.ShowTags)
            {
                dlTags.DataSource = ArticleToTagController.GetByArticle(ArticleId, GetCurrentCultureCode());
                dlTags.DataBind();
            }
        }

    

        private void BindComment()
        {
            if (Settings_Portal.Comment.AllowComment && objArticle.AllowComment)
            {

                int totalRecords = 0;
                Boolean auth = PortalSecurity.IsInRole(PortalSettings.AdministratorRoleName) ? true : false;

                List<CommentInfo> list = CommentController.GetByArticle(ArticleId, Settings_Detail.General.CommentRowCount,
                    ctlPagingControl.CurrentPage, auth, auth, ref totalRecords);
                if (Settings_Portal.Comment.SortByDate == "asc")
                {
                    dlComments.DataSource = list;
                }
                else
                {
                    dlComments.DataSource = (from q in list orderby q.Id descending select q);
                }

                dlComments.DataBind();

                ctlPagingControl.RecordCount = totalRecords;
                ctlPagingControl.PageSize = Settings_Detail.General.CommentRowCount;
                ctlPagingControl.Span = 3;

                if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Utils.HasRolePermission(objArticle.CommentRoles))
                {
                    trComment.Visible = true;
                    if (!Settings_Portal.Comment.AutoAuthComment)
                    {
                        lblCommentNeedAuth.Visible = true;
                        lblCommentNeedLoggedIn.Visible = false;
                    }
                    else
                    {
                        lblCommentNeedAuth.Visible = false;
                        lblCommentNeedLoggedIn.Visible = false;
                    }
                }
                else
                {
                    trComment.Visible = false;
                    lblCommentNeedLoggedIn.Visible = true;
                    lblCommentNeedAuth.Visible = false;
                }
            }
        }

        #endregion
        private void AddSocialBookmarks(string entryTitle, string entryUrl)
        {
            // Antonio Chagoury - 5/11/2008
            // Adding social bookmarks
            // Initialize the ShareBadge Chicklets Array
            StringBuilder sb = new StringBuilder();

            if (!Page.ClientScript.IsClientScriptBlockRegistered("SB_CHICKLETS"))
            {
                sb = new StringBuilder();
                sb.AppendLine("<script language=\"javascript1.2\" type=\"text/javascript\">");
                sb.AppendFormat("var strImagePath = \"{0}/DesktopModules/CrossArticle/ShareBadge/\";", FullDomainName);
                sb.AppendLine("</script>");

                sb.AppendFormat("<script src=\"{0}/DesktopModules/CrossArticle/ShareBadge/js/ShareBadgeChicklets.js\" language=\"javascript1.2\" type=\"text/javascript\"></script>", FullDomainName);

                //string SbChickletsScript = ("<script language=\"javascript1.2\" type=\"text/javascript\">" + ("var strImagePath = \""
                //            + (FullDomainName + ("/DesktopModules/CrossArticle/ShareBadge/\";</script>" + ("<script src=\""
                //            + (FullDomainName+"/DesktopModules/CrossArticle/ShareBadge/js/ShareBadgeChicklets.js\"" + "language=\"javascript1.2\" type=\"text/javascript\"></script>")))))));
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "SB_CHICKLETS", sb.ToString());
            }
            // Initialize the main ShareBadge Script
            if (!Page.ClientScript.IsClientScriptBlockRegistered("SB_PRO"))
            {
                string SbProScript = ("<script src=\""
                            + (FullDomainName + "/DesktopModules/CrossArticle/ShareBadge/js/ShareBadgePro.js\" language=\"javascript1.2\" type=\"text/javascript\"></script>"));
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "SB_PRO", SbProScript);
            }
            // Initialize the CSS for ShareBadge
            if (!Page.ClientScript.IsClientScriptBlockRegistered("SB_PRO_CSS"))
            {
                string SbProCss = ("<link rel=\"stylesheet\" href=\""
                            + (FullDomainName + "/DesktopModules/CrossArticle/ShareBadge/css/ShareBadge.css\" type=\"text/css\" />"));
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "SB_PRO_CSS", SbProCss);
            }
            // Display the Bookmarks Toolbar
            if (!Page.ClientScript.IsStartupScriptRegistered("SB_PRO_TOOLBAR"))
            {
                string SbToolbar = ("<script type=\"text/javascript\">" + ("initializeShareBadge(\"ShareBadgePRO_Toolbar\",\""
                            + (entryTitle.Replace("\"", "\'") + ("\", \""
                            + (entryUrl + ("\");" + ("addBadgeItem(7);" + ("addBadgeItem(33);" + ("addBadgeItem(9);" + ("addBadgeItem(14);" + ("addBadgeItem(17);" + ("addBadgeItem(20);" + ("addBadgeItem(27);" + ("addBadgeItem(28);" + ("addBadgeItem(31);" + ("addBadgeItem(32);" + "</script>"))))))))))))))));
                Page.ClientScript.RegisterStartupScript(this.GetType(), "SB_PRO_TOOLBAR", SbToolbar);
            }
        }
        protected string GetUserNavigate(string userId)
        {
            return Globals.NavigateURL(GetSubModulePageId_List(objType.Id), "", "ArticleUserId=" + userId + "&ArticleTypeId=" + objType.Id.ToString());
        }



        private void BindRating()
        {
            if (Settings_Portal.Rating.AllowRating && objArticle.AllowRating)
            {
                lblVotes.Text = objArticle.RatingVotes.ToString();
                string imgRating = Settings_Detail.General.RatingImage;
                imgAverage.ImageUrl = LocalUtils.ModuleRootPath + "images/ratings/" + imgRating + "/" + imgRating + objArticle.RatingAverage.ToString() + ".gif";

                //Detemine whether the use has rights to rating
                if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Cross.DNN.Common.Utility.Utils.HasRolePermission(objArticle.RatingRoles))
                {
                    rblRating.Visible = true;
                    btnPost.Visible = true;
                    lblRatingNeedLoggedIn.Visible = false;
                    rblRating.SelectedValue = "10";
                    if (UserId != -1)//当前已登录
                    {
                        List<RatingInfo> list = RatingController.GetByUser(ArticleId, UserId);
                        if (list.Count > 0)//首先检查当前用户是否已经rating过
                        {
                            rblRating.SelectedValue = Convert.ToString(list[0].Rating);
                        }
                    }
                }
                else
                {
                    rblRating.Visible = false;
                    btnPost.Visible = false;
                    lblRatingNeedLoggedIn.Visible = true;
                }
            }
        }

        private void BindRelatedArticles()
        {
            if (ShowRelatedArticle)
            {
                List<ArticleInfo> list = ArticleController.GetRelatedRows(objType.Id, GetUserId(), ArticleId, Settings_Detail.RelatedArticle.RelatedArticleRows);
                foreach (var item in list)
                {
                    LocalizeObject_Article(item);
                }
                dlRelatedArticles.DataSource = list;
                dlRelatedArticles.DataBind();
            }
        }

        private void BindRelatedVideo()
        {
            if (Settings_Detail.RelatedVideo.ShowRelatedVideo)
            {
                List<Cross.Modules.Article.Business.VideoInfo> list = Cross.Modules.Article.Business.VideoController.GetByArticle(ArticleId);
                if (list.Count > 0)
                {
                    foreach (var item in list)
                    {
                        LocalizeObject_Video(item);
                    }
                    dlRelatedVideo.DataSource = list;
                    dlRelatedVideo.DataBind();
                }
            }
        }

        protected void dlRelatedVideo_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            int videoId = Convert.ToInt32(((Label)e.Item.FindControl("lblId")).Text);
            Cross.Modules.Article.Business.VideoInfo objItem = Cross.Modules.Article.Business.VideoController.Get(videoId);
            HyperLink hlImage = (HyperLink)e.Item.FindControl("hlImage");
            HyperLink hlTitle = (HyperLink)e.Item.FindControl("hlTitle");
            Label lblEmbedCode = (Label)e.Item.FindControl("lblEmbedCode");
            string videoWidth = Settings_Detail.RelatedVideo.VideoPlayerWidth.ToString();
            string videoHeight = Settings_Detail.RelatedVideo.VideoPlayerHeight.ToString();
            if (objItem.VideoPath.ToLower().StartsWith("http") || objItem.VideoFile.StartsWith("FileID=")) //http url or file id
            {
                hlImage.NavigateUrl = objItem.VideoPath;
                hlTitle.NavigateUrl = objItem.VideoPath;
                hlImage.Attributes.Add("rel", string.Format("vidbox {0} {1}", videoWidth, videoHeight));
                hlTitle.Attributes.Add("rel", string.Format("vidbox {0} {1}", videoWidth, videoHeight));
                lblEmbedCode.Text = "";

            }
            else
            {
                lblEmbedCode.Text = objItem.VideoPath;
                //以width=开头，接着一个或者0个" ,然后任意个单词或者字母,然后又是一个或者0个" ,最后以空白结尾
                string pattern = "\\bwidth=\"?\\w*\"?\\s\\b";
                Regex reg = new Regex(pattern, RegexOptions.IgnoreCase);

                Match m = reg.Match(objItem.VideoPath);
                if (m.Success)
                {
                    videoWidth = m.Value.ToLower().Replace("width=", "").Replace("\"", "").Replace("px", "").Replace("%", "").Trim();
                    if (Utils.IsNumber(videoWidth))
                    {
                        videoWidth = (Convert.ToInt32(videoWidth) + 20).ToString();
                    }
                }
                pattern = "\\bheight=\"?\\w*\"?\\s\\b";
                reg = new Regex(pattern, RegexOptions.IgnoreCase);
                m = reg.Match(objItem.VideoPath);
                if (m.Success)
                {
                    videoHeight = m.Value.ToLower().Replace("height=", "").Replace("\"", "").Replace("px", "").Replace("%", "").Trim();
                    if (Utils.IsNumber(videoHeight))
                    {
                        videoHeight = (Convert.ToInt32(videoHeight) + 30).ToString();
                    }
                }
                hlTitle.CssClass = "thickbox";
                hlImage.CssClass = "thickbox";
                hlTitle.NavigateUrl = string.Format("/#TB_inline?height={0}&width={1}&inlineId={2}", videoHeight, videoWidth, lblEmbedCode.ClientID);
                hlImage.NavigateUrl = string.Format("/#TB_inline?height={0}&width={1}&inlineId={2}", videoHeight, videoWidth, lblEmbedCode.ClientID);
            }
        }


        private void BindRelatedAudio()
        {
            if (Settings_Detail.RelatedAudio.ShowRelatedAudio)
            {
                List<AudioInfo> list = AudioController.GetByArticle(ArticleId);
                if (list.Count > 0)
                {
                    foreach (var item in list)
                    {
                        LocalizeObject_Audio(item);
                    }
                    dlRelatedAudio.DataSource = list;
                    dlRelatedAudio.DataBind();
                }
            }
        }
        private void BindRelatedImage()
        {
            if (Settings_Detail.RelatedImage.ShowRelatedImage)
            {
                List<ImageInfo> list = ImageController.GetByArticle(ArticleId);
                if (list.Count > 0)
                {
                    foreach (var item in list)
                    {
                        LocalizeObject_Image(item);
                    }
                    dlRelatedImage.DataSource = list;
                    dlRelatedImage.DataBind();
                }
            }
        }

        #endregion

        #region event handler
        protected void btnConfirmPassword_Click(object sender, System.EventArgs e)
        {
            if (txtPassword.Text == objArticle.ProtectPassword)
            {
                tblPassword.Visible = false;
                divContent.Visible = true;
            }
            else
            {
                lblInvalidPassword.Visible = true;
            }
        }
        protected void btnPost_Click(object sender, System.EventArgs e)
        {
            //  hidLastTab.Value = "#divRating";
            if (rblRating.SelectedIndex != -1)
            {
                RatingInfo objRating = new RatingInfo();
                if (UserId != -1)//当前已登录
                {
                    List<RatingInfo> list = RatingController.GetByUser(ArticleId, UserId);
                    if (list.Count > 0)//首先检查当前用户是否已经rating过
                    {
                        objRating = list[0];
                        objRating.Rating = Convert.ToInt32(rblRating.SelectedValue.ToString());
                        objRating.CreatedDate = DateTime.Now;
                        RatingController.Update(objRating);
                    }
                    else
                    {
                        objRating.ArticleId = ArticleId;
                        objRating.UserId = UserId;
                        objRating.CreatedDate = DateTime.Now;
                        objRating.Rating = Convert.ToInt32(rblRating.SelectedValue.ToString());
                        RatingController.Add(objRating);
                    }
                }
                else
                {
                    objRating.ArticleId = ArticleId;
                    objRating.UserId = UserId;
                    objRating.CreatedDate = DateTime.Now;
                    objRating.Rating = Convert.ToInt32(rblRating.SelectedValue.ToString());
                    RatingController.Add(objRating);
                }
                BindRating();
            }

        }




        protected void btnAddComment_Click(object sender, EventArgs e)
        {
            //  hidLastTab.Value = "#divComment";
            //当前显示captcha 但验证码不对,返回
            if (Settings_Detail.General.ShowCaptchaInComment && !ctlCaptcha.IsValid)
            {
                return;
            }
            if (Page.IsValid)
            {
                CommentInfo ci = new CommentInfo();
                ci.ArticleId = ArticleId;
                if ((PortalSecurity.IsInRole(PortalSettings.AdministratorRoleName)) || (objArticle.AutoAuthComment == true))
                {
                    ci.Authed = true;
                }
                else
                {
                    ci.Authed = false;
                }
                ci.Comment = txtComment.Text;
                ci.CreatedUser = txtName.Text;
                ci.Mail = txtEmail.Text.Trim();
                ci.Url = txtUrl.Text.Trim();
                ci.CreatedDate = DateTime.Now;
                ci.IsPrivate = chkPrivate.Checked;
                ci.PortalId = PortalId;
                ci.UserId = UserId;
                CommentController.Add(ci);
                if (Settings_Portal.Comment.SendMail)
                {
                    //send mail to author to notify comment is added

                    AuthorInfo objVendor = AuthorController.Get(objArticle.UserId);
                    DotNetNuke.Entities.Users.UserInfo objVendorUser = DotNetNuke.Entities.Users.UserController.GetUserById(PortalId, objArticle.UserId);
                    string vendorEmail = string.Empty;
                    if (objVendor != null && objVendorUser != null)
                    {
                        vendorEmail = string.IsNullOrEmpty(objVendor.Email) ? objVendorUser.Email : objVendor.Email;
                    }
                    //
                    string subject = string.Format(Localization.GetString("Mail_Comment_Subject", this.LocalResourceFile),
                         FullDomainName);
                    StringBuilder notification = new StringBuilder();
                    notification.Append("\r\n");
                    notification.Append("\r\n");
                    notification.AppendFormat(Localization.GetString("Mail_Comment_Tip", this.LocalResourceFile),
                        txtName.Text.Trim(), objArticle.Title);
                    notification.Append("\r\n");


                    notification.Append("\r\n");
                    notification.Append(Localization.GetString("Mail_Comment_Description", this.LocalResourceFile));

                    notification.Append("\r\n");
                    notification.Append(txtComment.Text);
                    notification.Append("\r\n");
                    notification.Append("\r\n");
                    notification.AppendFormat(Localization.GetString("Mail_Comment_Thanks", this.LocalResourceFile), FullDomainName);
                    notification.Append("\r\n");
                    notification.Append("\r\n");
                    notification.Append(FullDomainName);
                    notification.Append("\r\n");
                    if (!string.IsNullOrEmpty(DotNetNuke.Entities.Host.Host.SMTPServer) &&
                        !string.IsNullOrEmpty(vendorEmail) &&
                        !string.IsNullOrEmpty(PortalSettings.Email))
                    {
                        DotNetNuke.Services.Mail.Mail.SendMail(PortalSettings.Email, vendorEmail, "", subject, notification.ToString(), "", "text", "", "", "", "");
                    }
                }
                BindComment();
            }
        }
        protected void ctlPagingControl_PageChanged(object sender, EventArgs e)
        {
            // hidLastTab.Value = "#divComment";
            BindComment();
        }
        #endregion

        protected string GetRatingImage(string articleId)
        {
            ArticleInfo objArticle = ArticleController.Get(Convert.ToInt32(articleId));
            string imgRating = Settings_Detail.General.RatingImage;
            return LocalUtils.ModuleRootPath + "images/ratings/" + imgRating + "/" + imgRating + objArticle.RatingAverage.ToString() + ".gif";
        }

        protected string GetArticleNavigate(string articleId, string title)
        {
            return GenerateArticleDetailUrl(TabId, articleId, title);
        }
        protected string GetTagNavigate(string tagId)
        {
            return Globals.NavigateURL(GetSubModulePageId_List(objType.Id), "", "ArticleTagId=" + tagId + "&ArticleTypeId=" + objType.Id.ToString());
        }
        protected void ibtnUp_Click(object sender, ImageClickEventArgs e)
        {
            if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Utils.HasRolePermission(objArticle.RecommendRoles))
            {
                RecommendInfo objRecommend = new RecommendInfo();
                if (UserId != -1)//当前已登录
                {
                    List<RecommendInfo> list = RecommendController.GetByUser(ArticleId, UserId);
                    if (list.Count > 0)//首先检查当前用户是否已经recommend过
                    {
                        objRecommend = list[0];
                        if (objRecommend.Recommend == -1)//如果以前是down，现在变成up，则downvotes需减1,upvotes 需加1
                        {
                            lblDownVotes.Text = (Convert.ToInt32(lblDownVotes.Text) - 1).ToString();
                            lblUpVotes.Text = (Convert.ToInt32(lblUpVotes.Text) + 1).ToString();
                        }
                        objRecommend.Recommend = 1;
                        objRecommend.CreatedDate = DateTime.Now;
                        RecommendController.Update(objRecommend);
                    }
                    else
                    {
                        objRecommend.ArticleId = ArticleId;
                        objRecommend.UserId = UserId;
                        objRecommend.CreatedDate = DateTime.Now;
                        objRecommend.Recommend = 1;
                        RecommendController.Add(objRecommend);
                        lblUpVotes.Text = (Convert.ToInt32(lblUpVotes.Text) + 1).ToString();
                    }
                }
                else
                {
                    objRecommend.ArticleId = ArticleId;
                    objRecommend.UserId = UserId;
                    objRecommend.CreatedDate = DateTime.Now;
                    objRecommend.Recommend = 1;
                    RecommendController.Add(objRecommend);
                    lblUpVotes.Text = (Convert.ToInt32(lblUpVotes.Text) + 1).ToString();
                }
            }
        }
        protected void ibtnDown_Click(object sender, ImageClickEventArgs e)
        {
            if (PortalSecurity.IsInRoles(PortalSettings.AdministratorRoleName) || Utils.HasRolePermission(objArticle.RecommendRoles))
            {
                RecommendInfo objRecommend = new RecommendInfo();
                if (UserId != -1)//当前已登录
                {
                    List<RecommendInfo> list = RecommendController.GetByUser(ArticleId, UserId);
                    if (list.Count > 0)//首先检查当前用户是否已经recommend过
                    {
                        objRecommend = list[0];
                        if (objRecommend.Recommend == 1)//如果以前是up，现在变成down，则downvotes需+1,upvotes 需-1
                        {
                            lblDownVotes.Text = (Convert.ToInt32(lblDownVotes.Text) + 1).ToString();
                            lblUpVotes.Text = (Convert.ToInt32(lblUpVotes.Text) - 1).ToString();
                        }
                        objRecommend.Recommend = -1;
                        objRecommend.CreatedDate = DateTime.Now;
                        RecommendController.Update(objRecommend);
                    }
                    else
                    {
                        objRecommend.ArticleId = ArticleId;
                        objRecommend.UserId = UserId;
                        objRecommend.CreatedDate = DateTime.Now;
                        objRecommend.Recommend = -1;
                        RecommendController.Add(objRecommend);
                        lblDownVotes.Text = (Convert.ToInt32(lblDownVotes.Text) + 1).ToString();
                    }
                }
                else
                {
                    objRecommend.ArticleId = ArticleId;
                    objRecommend.UserId = UserId;
                    objRecommend.CreatedDate = DateTime.Now;
                    objRecommend.Recommend = -1;
                    RecommendController.Add(objRecommend);
                    lblDownVotes.Text = (Convert.ToInt32(lblDownVotes.Text) + 1).ToString();
                }
            }
        }

        protected void btnAddWatch_Click(object sender, CommandEventArgs e)
        {
            lblAddSuccess.Visible = false;
            LoginFirst();
            //add before
            if ((from p in WatchController.GetByUser(UserId) where p.ArticleId == ArticleId select p.Id).Count() > 0)
            {
                lblAddSuccess.Visible = true;
                return;
            }
            WatchInfo objWatch = new WatchInfo();
            objWatch.ArticleId = ArticleId;
            objWatch.PortalId = PortalId;
            objWatch.UserId = UserId;
            objWatch.ArticleTitle = objArticle.Title;
            WatchController.Add(objWatch);
            lblAddSuccess.Visible = true;
        }
        protected void btnAddTicket_Click(object sender, CommandEventArgs e)
        {
            LoginFirst();
            Response.Redirect(Globals.NavigateURL(Settings_Portal.General.ModulePage_Admin, "", "mid=" + Settings_Portal.General.ModuleId_Admin,
                  "ctl=Reader_AddTicket", "ArticleId=" + ArticleId.ToString()), true);
        }
        private void LoginFirst()
        {
            if (UserId == -1)
            {
                string returnUrl = System.Web.HttpContext.Current.Request.RawUrl;
                if (returnUrl.IndexOf("?returnurl=") != -1)
                {
                    returnUrl = returnUrl.Substring(0, returnUrl.IndexOf("?returnurl="));
                }
                returnUrl = System.Web.HttpUtility.UrlEncode(returnUrl);
                Response.Redirect(DotNetNuke.Common.Globals.LoginURL(returnUrl, (Request.QueryString["override"] != null)), true);
            }
        }
    }
}