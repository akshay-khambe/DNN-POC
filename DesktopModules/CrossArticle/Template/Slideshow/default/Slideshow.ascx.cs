using Cross.DNN.Common.Utility;
using Cross.Modules.Article.Business;
using DotNetNuke.Services.Localization;
using System;
using System.Collections.Generic;
using System.Text;

namespace Cross.Modules.Article.View
{
    public partial class Slideshow : ArticleModuleBase
    {
        private string ScriptName_Flow = "CrossScript_Flow";

        private string ScriptName_Unslider = "CrossScript_Unslider";

        private string ScriptName_LiteAccordion = "CrossScript_LiteAccordion";

        private string ScriptName_Slidorion = "CrossScript_Slidorion";

        private string ScriptName_JqueryEasing = "CrossScript_JqueryEasing";

        private string ScriptName_NumericRotator = "CrossScript_NumericRotator";

        private string ScriptName_BootstrapCarousel = "CrossScript_BootstrapCarousel";

        private string ScriptName_Galleria = "CrossScript_Galleria";
        private string ScriptName_PgwSlider = "CrossScript_PgwSlider";

        private string ScriptName_PgwGallery = "CrossScript_PgwGallery";
        private string ScriptName_OwlCarousel = "CrossScript_OwlCarousel";
        public Setting_Slideshow Settings_Slideshow;

        override protected void OnInit(EventArgs e)
        {
            Settings_Slideshow = new Setting_Slideshow(ModuleId, TabId, ModuleConfiguration.ModuleSettings);
            if (Settings_Slideshow.General.TypeId == -1)
            {
                Settings_Slideshow = new Setting_Slideshow(ModuleId, TabId);
            }
            base.OnInit(e);
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            this.LocalResourceFile = Localization.GetResourceFile(this, "Slideshow.ascx");

            //if (!IsPostBack)
            //{
            switch (Settings_Slideshow.General.SlideshowMode)
            {
                case LocalUtils.Slideshow_NumericRotator:
                    divNumericRotator.Visible = true;
                    RegisterScript_NumericRotator();
                    //  RegisterCss_NumericRotator();
                    CreateContent_NumericRotator();
                    GenerateScript_NumericRotator();

                    break;
                case LocalUtils.Slideshow_Flow:
                    divImageFlow.Visible = true;
                    RegisterScript_Flow();
                    RegisterCss_Flow();
                    GenerateScript_Flow();
                    CreateContent_Flow();
                    break;
                case LocalUtils.Slideshow_Unslider:
                    divUnslider.Visible = true;
                    RegisterScript_Unslider();
                    //  RegisterCss_Unslider();
                    GenerateScript_Unslider();
                    CreateContent_Unslider();
                    break;
                case LocalUtils.Slideshow_LiteAccordion:
                    divLiteAccordion.Visible = true;
                    RegisterScript_LiteAccordion();
                    GenerateScript_LiteAccordion();
                    CreateContent_LiteAccordion();
                    break;
                case LocalUtils.Slideshow_Slidorion:
                    divSlidorion.Visible = true;
                    RegisterScript_Slidorion();
                    GenerateScript_Slidorion();
                    CreateContent_Slidorion();
                    break;
                case LocalUtils.Slideshow_BootstrapCarousel:

                    RegisterScript_BootstrapCarousel();
                    CreateContent_BootstrapCarousel();

                    break;
                case LocalUtils.Slideshow_Galleria:

                    RegisterScript_Galleria();
                    divGalleria.Visible = true;

                    CreateContent_Galleria();

                    break;
                case LocalUtils.Slideshow_PgwSlider:

                    RegisterScript_PgwSlider();
                    divPgwSlider.Visible = true;

                    CreateContent_PgwSlider();

                    CreateScript_PgwSlider();
                    break;
                case LocalUtils.Slideshow_PgwGallery:

                    RegisterScript_PgwGallery();
                    divPgwGallery.Visible = true;

                    CreateContent_PgwGallery();

                    CreateScript_PgwGallery();
                    break;
                case LocalUtils.Slideshow_OwlCarousel:

                    RegisterScript_OwlCarousel();
                    SetOwlCarouselImageCss();
                    divOwlCarousel.Visible = true;

                    CreateContent_OwlCarousel();

                    CreateScript_OwlCarousel();
                    break;
                default:
                    break;
            }

            DataBind();
            //  }
        }
        /// <summary>
        /// jquery easing is used in Slidorion and LiteAccordion
        /// </summary>
        private void RegisterScript_JqueryEasing()
        {

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_JqueryEasing))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Js/jquery.easing.1.3.js", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_JqueryEasing, sb.ToString(), false);
            }
        }
        private List<ArticleInfo> GetArticles()
        {
            List<ArticleInfo> list = ArticleController.GetFlashImage(Settings_Slideshow.General.TypeId, UserId,
               Settings_Slideshow.General.CategoryList, Settings_Slideshow.General.ItemCount,
               Settings_Slideshow.General.ShowFeaturedOnly, Settings_Slideshow.General.IgnoreSortIndex, Settings_Slideshow.General.SortField);

            if (Settings_Slideshow.General.RandomDisplay)
            {
                list = Cross.DNN.Common.Utility.Utils.GetRandomList<ArticleInfo>(list);
            }
            foreach (var item in list)
            {
                LocalizeObject_Article(item);
            }
            return list;
        }
        #region Slidorion
        private void RegisterScript_Slidorion()
        {
            DotNetNuke.Framework.jQuery.RequestRegistration();
            RegisterScript_JqueryEasing();
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_Slidorion))
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}Slidorion.css\" type=\"text/css\" />{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Slidorion/Css/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}jquery.slidorion.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Slidorion/dist/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_Slidorion, sb.ToString(), false);
            }
        }
        private void GenerateScript_Slidorion()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");
            //string s = @"$('kkk').slidorion({";
            //s=s.Replace('kkk',"#"+divSlidorion.ClientID);
            sb.AppendFormat("$('{0}').slidorion", "#" + divSlidorion.ClientID);
            sb.AppendLine(@"({");
            sb.AppendFormat("autoPlay:{0},{1}", Settings_Slideshow.Slidorion.AutoPlay.ToString().ToLower(), "\r\n");
            if (Settings_Slideshow.Slidorion.Easing.ToLower() != "none")
            {
                sb.AppendFormat("easing:'{0}',{1}", Settings_Slideshow.Slidorion.Easing, "\r\n");
            }

            sb.AppendFormat("effect:'{0}',{1}", Settings_Slideshow.Slidorion.Effect, "\r\n");
            sb.AppendFormat("first:{0},{1}", Settings_Slideshow.Slidorion.First.ToString(), "\r\n");
            sb.AppendFormat("hoverPause:{0},{1}", Settings_Slideshow.Slidorion.HoverPause.ToString().ToLower(), "\r\n");
            sb.AppendFormat("interval:{0},{1}", Settings_Slideshow.Slidorion.Interval.ToString(), "\r\n");
            sb.AppendFormat("speed:{0},{1}", Settings_Slideshow.Slidorion.Speed.ToString(), "\r\n");
            sb.AppendFormat("controlNav:{0},{1}", Settings_Slideshow.Slidorion.ControlNav.ToString().ToLower(), "\r\n");
            sb.AppendFormat("controlNavClass:'slidorion-nav'	{0}", "\r\n");
            sb.AppendLine(@"});");
            sb.AppendFormat("</script>{0}", "\r\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), ModuleId.ToString(), sb.ToString());
        }
        private void CreateContent_Slidorion()
        {
            StringBuilder sb = new StringBuilder();
            string readMore = Localization.GetString("ReadMore", LocalResourceFile);
            List<ArticleInfo> listArticles = GetArticles();

            sb.AppendLine(@"<div class='slider'>");
            foreach (ArticleInfo objArticle in listArticles)
            {
                string articleImage = GetRelativeUrlByFileId(objArticle.Image);
                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = ArticleController.GetEmptyThumbnail(PortalId);
                }
                //sb.AppendFormat("<div class='slide' style=\"background-image: url('{0}');background-repeat:{1};\"></div>{2}",
                //       articleImage, Settings_Slideshow.Unslider.BackgroundRepeat, "\r\n");

                sb.AppendFormat("<div class='slide' style=\"background-image: url('{0}');\"><a href='{1}' target='{2}'><img src='{3}' {4} {5} /></a></div>{6}",
                   FullDomainName + "/DesktopModules/CrossArticle/Slideshow/Slidorion/img/callout_bg.gif",
                    GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget, articleImage,
                    string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}'", Settings_Slideshow.General.ImageWidth),
                       string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}'", Settings_Slideshow.General.ImageHeight),
                    "\r\n");
            }
            sb.AppendLine(@"</div>");

            sb.AppendLine(@"<div class='accordion'>");
            foreach (ArticleInfo objArticle in listArticles)
            {
                sb.AppendFormat("<div class=\"header\">{0}</div>{1}",
                    Settings_Slideshow.General.TitleLength == 0 ?
                    objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, ".."), "\r\n");
                string summary = Settings_Slideshow.General.SummaryLength == 0 ?
                    objArticle.Summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Summary, Settings_Slideshow.General.SummaryLength, "..");

                summary += string.Format("<a href='{0}' target='{1}'>..{2}</a>",
                    GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget, readMore);

                sb.AppendFormat("<div class=\"content\"><p>{0}</p></div>{1}",
                    summary, "\r\n");
            }
            sb.AppendLine(@"</div>");

            litSlidorion.Text = sb.ToString();

        }
        #endregion
        #region LiteAccordion
        private void RegisterScript_LiteAccordion()
        {
            DotNetNuke.Framework.jQuery.RequestRegistration();
            RegisterScript_JqueryEasing();
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_LiteAccordion))
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}LiteAccordion.css\" type=\"text/css\" />{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/LiteAccordion/Css/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}liteaccordion.jquery.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/LiteAccordion/js/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_LiteAccordion, sb.ToString(), false);
            }
        }
        private void GenerateScript_LiteAccordion()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");

            sb.AppendFormat("$('{0}').liteAccordion", "#" + divLiteAccordion.ClientID);
            sb.AppendLine(@"({");

            sb.AppendFormat("containerWidth:{0},{1}", Settings_Slideshow.LiteAccordion.ContainerWidth.ToString(), "\r\n");
            sb.AppendFormat("containerHeight:{0},{1}", Settings_Slideshow.LiteAccordion.ContainerHeight.ToString(), "\r\n");
            sb.AppendFormat("headerWidth:{0},{1}", Settings_Slideshow.LiteAccordion.HeaderWidth.ToString(), "\r\n");
            sb.AppendFormat("activateOn:'{0}',{1}", Settings_Slideshow.LiteAccordion.ActivateOn, "\r\n");
            sb.AppendFormat("firstSlide:{0},{1}", Settings_Slideshow.LiteAccordion.FirstSlide.ToString(), "\r\n");
            sb.AppendFormat("slideSpeed:{0},{1}", Settings_Slideshow.LiteAccordion.SlideSpeed.ToString(), "\r\n");

            if (!Settings_Slideshow.LiteAccordion.ShowSummary)
            {
                sb.AppendLine(@"onTriggerSlide : function() {
                            this.find('figcaption').fadeOut();
                        },
                        onSlideAnimComplete : function() {
                            this.find('figcaption').fadeIn();
                        },");
            }

            sb.AppendFormat("autoPlay:{0},{1}", Settings_Slideshow.LiteAccordion.AutoPlay.ToString().ToLower(), "\r\n");
            sb.AppendFormat("pauseOnHover:{0},{1}", Settings_Slideshow.LiteAccordion.PauseOnHover.ToString().ToLower(), "\r\n");
            sb.AppendFormat("cycleSpeed:{0},{1}", Settings_Slideshow.LiteAccordion.CycleSpeed.ToString(), "\r\n");
            if (Settings_Slideshow.LiteAccordion.Easing.ToLower() != "none")
            {
                sb.AppendFormat("easing:'{0}',{1}", Settings_Slideshow.LiteAccordion.Easing, "\r\n");
            }

            sb.AppendFormat("theme:'{0}',{1}", Settings_Slideshow.LiteAccordion.Theme, "\r\n");

            sb.AppendFormat("rounded:{0},{1}", Settings_Slideshow.LiteAccordion.Rounded.ToString().ToLower(), "\r\n");
            sb.AppendFormat("enumerateSlides:{0}{1}", Settings_Slideshow.LiteAccordion.EnumerateSlides.ToString().ToLower(), "\r\n");
            sb.AppendLine(@"});");
            sb.AppendFormat("</script>{0}", "\r\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), ModuleId.ToString(), sb.ToString());
        }
        private void CreateContent_LiteAccordion()
        {
            StringBuilder sb = new StringBuilder();
            string readMore = Localization.GetString("ReadMore", LocalResourceFile);
            List<ArticleInfo> listArticles = GetArticles();

            sb.AppendLine(@"<ol>");
            foreach (ArticleInfo objArticle in listArticles)
            {
                string articleImage = GetRelativeUrlByFileId(objArticle.Image);
                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = ArticleController.GetEmptyThumbnail(PortalId);
                }


                sb.AppendLine(@"<li>");
                sb.AppendFormat("<h2><span>{0}</span></h2>{1}",
                   Settings_Slideshow.General.TitleLength == 0 ?
                    objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, ".."),
                    "\r\n");
                sb.AppendLine(@"<div>");
                if (!Settings_Slideshow.LiteAccordion.ShowSummary)
                {
                    sb.AppendFormat("<figure><a href='{0}' target='{1}'><img src=\"{2}\" alt=\"{3}\" {4} {5} /></a> <figcaption class='ap-caption'>{6}</figcaption></figure>{7}",
                       GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget,
                       articleImage, objArticle.Title,
                       string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}'", Settings_Slideshow.General.ImageWidth),
                       string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}'", Settings_Slideshow.General.ImageHeight),
                  Settings_Slideshow.General.TitleLength == 0 ?
                   objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, ".."),
                   "\r\n");
                }
                else
                {
                    sb.AppendLine(@"<ul>");
                    sb.AppendFormat("<li><img src=\"{0}\" {1} {2} alt=\"{3}\"/></li>{4}",
                   articleImage,
                  string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}'", Settings_Slideshow.General.ImageWidth),
                       string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}'", Settings_Slideshow.General.ImageHeight),
                  objArticle.Title, "\r\n");

                    string summary = Settings_Slideshow.General.SummaryLength == 0 ?
                  objArticle.Summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Summary, Settings_Slideshow.General.SummaryLength, "..");

                    summary += string.Format("<a href='{0}' target='{1}'>..{2}</a>",
                        GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget, readMore);
                    sb.AppendFormat("<li><p>{0}</p></li>{1}", summary, "\r\n");
                    sb.AppendLine(@"</ul>");
                }
                sb.AppendLine(@"</div>");
                sb.AppendLine(@"</li>");
            }
            sb.AppendLine(@"</ol>");


            litLiteAccordion.Text = sb.ToString();

        }
        #endregion
        #region Unslider
        private void RegisterScript_Unslider()
        {
            DotNetNuke.Framework.jQuery.RequestRegistration();
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_Unslider))
            {
                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}unslider.css\" type=\"text/css\" />{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Unslider/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}unslider.min.js\"></script>{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Unslider/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_Unslider, sb.ToString(), false);
            }
        }
        private void GenerateScript_Unslider()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");

            sb.AppendLine(@"$('.unslider').unslider({");
            sb.AppendFormat("speed:{0},{1}", Settings_Slideshow.Unslider.Speed.ToString(), "\r\n");
            sb.AppendFormat("delay:{0},{1}", Settings_Slideshow.Unslider.Delay.ToString(), "\r\n");
            sb.AppendFormat("keys:{0},{1}", Settings_Slideshow.Unslider.Keys.ToString().ToLower(), "\r\n");
            sb.AppendFormat("dots:{0},{1}", Settings_Slideshow.Unslider.Dots.ToString().ToLower(), "\r\n");
            sb.AppendFormat("fluid:{0},{1}", Settings_Slideshow.Unslider.Fluid.ToString().ToLower(), "\r\n");
            sb.AppendLine(@"});");
            sb.AppendFormat("</script>{0}", "\r\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), ModuleId.ToString(), sb.ToString());
        }
        private void CreateContent_Unslider()
        {
            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();
            string readMore = Localization.GetString("ReadMore", LocalResourceFile);
            List<ArticleInfo> listArticles = GetArticles();

            sb.AppendLine(@"<ul>");

            foreach (ArticleInfo objArticle in listArticles)
            {

                string articleImage = GetRelativeUrlByFileId(objArticle.Image);
                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = LocalUtils.DefaultPicture;
                }

                string imageTitle = Settings_Slideshow.General.TitleLength == 0 ?
                    objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, "..");

                //if only show images
                if (Settings_Slideshow.Unslider.ShowImageOnly)
                {
                    sb.AppendFormat("<li><a href=\"{0}\" target=\"{1}\"><img src=\"{2}\" {3} {4} alt=\"{5}\"  /> </a>{6}",
                      GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget,
                      articleImage,
                      string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}'", Settings_Slideshow.General.ImageWidth),
                      string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}'", Settings_Slideshow.General.ImageHeight),
                     objArticle.Title,
                       "\r\n");
                    sb.AppendLine(@"</li>");
                }
                else
                {
                    if (Settings_Slideshow.Unslider.ShowImageAsBackground)
                    {
                        sb.AppendFormat("<li style=\"background-image: url('{0}');background-repeat:{1};\">{2}",
                            articleImage, Settings_Slideshow.Unslider.BackgroundRepeat, "\r\n");
                    }
                    else
                    {
                        sb.AppendFormat("<li>{0}", "\r\n");
                        sb.AppendFormat("<img src=\"{0}\" {1} {2} alt=\"{3}\"  />{4}",
                           articleImage, string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}'", Settings_Slideshow.General.ImageWidth),
                           string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}'", Settings_Slideshow.General.ImageHeight),
                           objArticle.Title, "\r\n");
                    }

                    sb.AppendFormat("<h1>{0}</h1>{1}", imageTitle, "\r\n");
                    if (Settings_Slideshow.Unslider.ShowSummary)
                    {
                        sb.AppendFormat("<p>{0}</p>{1}",
                            Settings_Slideshow.General.SummaryLength == 0 ? objArticle.Summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Summary, Settings_Slideshow.General.SummaryLength, ".."),
                        "\r\n");
                    }

                    sb.AppendFormat("<a class=\"btn\" href=\"{0}\" target=\"{1}\">{2}</a>{3}",
                        GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget, readMore, "\r\n");
                    sb.AppendLine(@"</li>");
                }
            }
            sb.AppendLine(@"</ul>");
            litUnslider.Text = sb.ToString();

        }
        #endregion

        #region Flow
        private void RegisterScript_Flow()
        {

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_Flow))
            {

                StringBuilder sb = new StringBuilder();
                //high slide effect
                if (Settings_Slideshow.Flow.HighSlideEffect)
                {
                    sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}js/highslide/highslide.packed.js\"></script>{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Flow/", "\r\n");
                    sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");
                    sb.AppendFormat("hs.graphicsDir = '{0}js/highslide/graphics/';{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Flow/", "\r\n");
                    sb.AppendFormat("hs.outlineType = 'rounded-white';{0}", "\r\n");
                    sb.AppendFormat("</script>{0}", "\r\n");
                }


                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}js/imageflow.packed.css\" type=\"text/css\" />{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Flow/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}js/ImageFlow.Packed.js\"></script>{1}", DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Flow/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_Flow, sb.ToString(), false);
            }
            //    GenerateScript_Flow();
        }
        private void GenerateScript_Flow()
        {
            /// 2009/04/2 v4.1 version
            /// 1.Based imageflow.js 1.1 version.
            /// 2.New options added:
            ///   •Added aspectRatio option (adjusts the relation between the height and width of the ImageFlow container!)
            ///Added options to adjust image relations: imagesHeight, imagesM, percentOther, percentLandscape 
            ///Added scrollbarP option
            ///Improved image resampling with the IE7 (enabled bicubic image resampling)
            ///Fixed a bug that occured with the IE on document unload ("Member Not Found")


            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");
            sb.AppendFormat("//<![CDATA[{0}", "\r\n");
            sb.AppendLine(@"domReady(function(){");
            sb.AppendFormat("var imageFlow{0} = new ImageFlow();{1}", ModuleId.ToString(), "\r\n");
            sb.AppendFormat("imageFlow{0}.init({1}", ModuleId.ToString(), "\r\n");
            sb.AppendLine(@"{");
            //animationSpeed new in imageflow 1.3.0
            sb.AppendFormat("animationSpeed:{0},{1}", Settings_Slideshow.Flow.AnimationSpeed.ToString(), "\r\n");

            sb.AppendFormat("aspectRatio:{0},{1}", Settings_Slideshow.Flow.AspectRatio, "\r\n");
            //buttons,new in imageflow 1.2.1
            sb.AppendFormat("buttons:{0},{1}", Settings_Slideshow.Flow.Buttons.ToString().ToLower(), "\r\n");
            sb.AppendFormat("captions:{0},{1}", Settings_Slideshow.Flow.Captions.ToString().ToLower(), "\r\n");

            //circular,new in imageflow 1.3.0
            sb.AppendFormat("circular:{0},{1}", Settings_Slideshow.Flow.Circular.ToString().ToLower(), "\r\n");

            sb.AppendFormat("imageCursor:'{0}',{1}", Settings_Slideshow.Flow.ImagesCursor, "\r\n");
            sb.AppendFormat("ImageFlowID:'{0}',{1}", divImageFlow.ClientID, "\r\n");
            sb.AppendFormat("imageFocusM:{0},{1}", Settings_Slideshow.Flow.ImageFocusM, "\r\n");

            sb.AppendFormat("imageFocusMax:{0},{1}", Settings_Slideshow.Flow.ImageFocus, "\r\n");
            //buttons,new in imageflow 1.2.1
            sb.AppendFormat("imageScaling:{0},{1}", "true", "\r\n");

            sb.AppendFormat("imagesHeight:{0},{1}", Settings_Slideshow.Flow.ImagesHeight, "\r\n");
            sb.AppendFormat("imagesM:{0},{1}", Settings_Slideshow.Flow.ImagesM, "\r\n");
            sb.AppendFormat("percentLandscape:{0},{1}", Settings_Slideshow.Flow.PercentLandscape, "\r\n");
            sb.AppendFormat("percentOther:{0},{1}", Settings_Slideshow.Flow.PercentOther, "\r\n");
            sb.AppendFormat("preloadImages:{0},{1}", Settings_Slideshow.Flow.PreloadImages.ToString().ToLower(), "\r\n");
            sb.AppendFormat("reflections:{0},{1}", "false", "\r\n");
            sb.AppendFormat("reflectionP:{0},{1}", "0.5", "\r\n");
            sb.AppendFormat("reflectionPNG:{0},{1}", "false", "\r\n");
            sb.AppendFormat("reflectionGET:'',{0}", "\r\n");
            //reflectPath,new in imageflow 1.3.0
            sb.AppendFormat("reflectPath:'',{0}", "\r\n");



            sb.AppendFormat("startID:{0},{1}", Settings_Slideshow.Flow.StartId, "\r\n");
            sb.AppendFormat("startAnimation:{0},{1}", Settings_Slideshow.Flow.StartAnimation.ToString().ToLower(), "\r\n");
            sb.AppendFormat("slider:{0},{1}", Settings_Slideshow.Flow.Slider.ToString().ToLower(), "\r\n");
            sb.AppendFormat("sliderCursor:'{0}',{1}", Settings_Slideshow.Flow.SliderCursor, "\r\n");
            sb.AppendFormat("sliderWidth:{0},{1}", Settings_Slideshow.Flow.SliderWidth, "\r\n");
            //slideshow,slideshowSpeed,slideshowAutoplay,new in v1.3.0
            sb.AppendFormat("slideshow:{0},{1}", Settings_Slideshow.Flow.Slideshow.ToString().ToLower(), "\r\n");
            sb.AppendFormat("slideshowSpeed:{0},{1}", Settings_Slideshow.Flow.SlideshowSpeed.ToString(), "\r\n");
            sb.AppendFormat("slideshowAutoplay:{0},{1}", Settings_Slideshow.Flow.SlideshowAutoplay.ToString().ToLower(), "\r\n");

            sb.AppendFormat("xStep:{0},{1}", Settings_Slideshow.Flow.XStep, "\r\n");

            // 当dynamic gallery 提供一个link url时，应该屏蔽 high slide effect 
            if (Settings_Slideshow.Flow.HighSlideEffect)
            {
                sb.AppendLine(@"onClick: function() { return hs.expand(this,
                                    { src: this.getAttribute('longdesc'), 
                                       outlineType: 'rounded-white', 
                                       fadeInOut: true,
                                       captionText: this.getAttribute('alt') } ); }");
            }
            else
            {
                if (Settings_Slideshow.Flow.DisableLink)
                {
                    sb.AppendLine(@"onClick:function() { return false; }");
                }
                else
                {
                    if (Settings_Slideshow.General.LinkTarget.ToLower() == "_blank")
                    {
                        sb.AppendLine(@"onClick: function() {window.open(this.url, '_blank');}");
                    }
                    else
                    {
                        sb.AppendLine(@"onClick:function() { document.location = this.url; }");
                    }
                }

            }
            sb.AppendLine(@"});");
            sb.AppendLine(@"});");
            sb.AppendLine(@"//]]>");
            sb.AppendFormat("</script>{0}", "\r\n");
            Page.ClientScript.RegisterStartupScript(this.GetType(), ModuleId.ToString(), sb.ToString());
            // litImageFlowScript.Text = sb.ToString();

        }
        private void RegisterCss_Flow()
        {
            string imagePath = DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Flow/Images/";
            if (Settings_Slideshow.Flow.HighSlideEffect)
            {
                RegisterCss_HighSlide();
            }
            StringBuilder sb = new StringBuilder();


            sb.AppendLine(@"<style type='text/css'>
         .imageflow .slider{
	       background-repeat:no-repeat;
		   height:14px;
		  margin:-6px 0 0 -7px;
		  position:absolute;
		  width:14px;
		  z-index:10003;");
            sb.AppendFormat("background-image:url({0}slider.png);{1}", imagePath, "\r\n");
            sb.AppendLine(@"}");

            sb.AppendLine(@".imageflow .slideshow.pause {");
            sb.AppendFormat("background:url({0}button_pause.png) no-repeat;{1}", imagePath, "\r\n");
            sb.AppendLine(@"}");

            sb.AppendLine(@".imageflow .slideshow.play {");
            sb.AppendFormat("background:url({0}button_play.png) no-repeat;{1}", imagePath, "\r\n");
            sb.AppendLine(@"}");


            sb.AppendLine(@".imageflow .previous {
	         float:left;
		     margin: -7px 0 0 -30px;");
            sb.AppendFormat("background:url({0}button_left.png)  top left no-repeat;{1}", imagePath, "\r\n");
            sb.AppendLine(@"}");

            sb.AppendLine(@".imageflow .next {
	        float:right;	
		    margin:-7px -30px 0 30px;");
            sb.AppendFormat("background:url({0}button_right.png)  top left no-repeat;{1}", imagePath, "\r\n");
            sb.AppendLine(@"}");

            sb.AppendFormat("</style>{0}", "\r\n");
            litCss.Text = sb.ToString();
        }
        /// <summary>
        /// Register css for high slide
        /// </summary>
        private void RegisterCss_HighSlide()
        {
            if (Settings_Slideshow.Flow.HighSlideEffect)
            {

                StringBuilder sb = new StringBuilder();

                sb.AppendLine(@"<style type='text/css'>
                              .highslide-container {
	                          z-index:10003 !important;
                                                    }
                             .highslide-credits {
                            	display:none !important; 
                                           }
                             .highslide-caption {
	                         color:#333 !important; 
                                       }");
                sb.AppendFormat("</style>{0}", "\r\n");
                litHighSlideCss.Text = sb.ToString();
            }

        }

        private void CreateContent_Flow()
        {
            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();
            string reflectionPath = string.Empty;
            List<ArticleInfo> listArticles = GetArticles();

            foreach (ArticleInfo objArticle in listArticles)
            {
                string articleImage = GetRelativeUrlByFileId(objArticle.Image);
                string imageWidth = "150";
                string imageHeight = "150";

                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = LocalUtils.DefaultPicture;
                }
                string imageTitle = Settings_Slideshow.General.TitleLength == 0 ?
                    objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, "..");

                //如果image为站内文件且文件确实存在,譬如/portals/0/image/abc.jpg,则使用imageview.aspx 生成Reflection  
                if (articleImage.StartsWith("/") && System.IO.File.Exists(Server.MapPath(articleImage)))
                {
                    reflectionPath = DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/ImageView.aspx?img="
                        + articleImage + "&width=" + Settings_Slideshow.Flow.ImageWidth + "&R=" + Settings_Slideshow.Flow.BackgroundRed.ToString() + "&G=" +
                        Settings_Slideshow.Flow.BackgroundGreen.ToString() + "&B=" + Settings_Slideshow.Flow.BackgroundBlack.ToString();
                    //如果当前没有设置width 和height ,则自动生成width和height,该功能用于兼容以前版本的xml文件.

                    System.Drawing.Image i = System.Drawing.Image.FromFile(Server.MapPath(articleImage)); ;
                    using (i)
                    {
                        imageWidth = i.Width.ToString();
                        imageHeight = i.Height.ToString();
                    }

                }
                else
                {
                    reflectionPath = articleImage;//否则的话直接用原地址，不加reflection效果
                }

                sb.AppendFormat("<img src=\"{0}\" longdesc=\"{1}\" alt=\"{2}\" width=\"{3}\" height=\"{4}\" />{5}",
                    Settings_Slideshow.Flow.EnableReflection ? reflectionPath : articleImage,
                    Settings_Slideshow.Flow.HighSlideEffect ? articleImage : GetNavigate(objArticle.Id, objArticle.Title),
                    imageTitle, imageWidth, imageHeight, "\r\n");

            }
            litImageFlow.Text = sb.ToString();

        }
        #endregion


        #region BootstrapCarousel
        private void RegisterScript_BootstrapCarousel()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_BootstrapCarousel)
                && Settings_Slideshow.BootstrapCarousel.RefLibrary)
            {
                DotNetNuke.Framework.jQuery.RequestRegistration();

                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}css/bootstrap.min.css\" type=\"text/css\" />{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Bootstrap/", "\r\n");

                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}js/bootstrap.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/Bootstrap/", "\r\n");

                //sb.AppendFormat("<link rel=\"stylesheet\" href=\"//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css\" type=\"text/css\" />{0}",
                //     "\r\n");
                ////sb.AppendFormat("<link rel=\"stylesheet\" href=\"//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css\" type=\"text/css\" />{0}",
                ////    "\r\n");
                //sb.AppendFormat("<script type=\"text/javascript\" src=\"//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js\"></script>{0}",
                //     "\r\n");
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_BootstrapCarousel, sb.ToString(), false);
            }
        }

        private void CreateContent_BootstrapCarousel()
        {
            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();

            List<ArticleInfo> listArticles = GetArticles();

            string divId = "carousel" + ModuleId.ToString();
            divId = "carousel-example-generic";
            sb.AppendFormat("<div id=\"{0}\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"{1}\">{2}",
                divId, Settings_Slideshow.BootstrapCarousel.Interval.ToString(), "\r\n");

            // <!-- Indicators --> 
            sb.AppendLine("<ol class=\"carousel-indicators\">");

            for (int i = 0; i < listArticles.Count; i++)
            {
                if (i == 0)
                {
                    sb.AppendFormat("<li data-target=\"#{0}\" data-slide-to=\"{1}\" class=\"active\"></li>{2}", divId, i.ToString(), "\r\n");
                }
                else
                {
                    sb.AppendFormat("<li data-target=\"#{0}\" data-slide-to=\"{1}\"></li>{2}", divId, i.ToString(), "\r\n");
                }
            }
            sb.AppendLine("</ol>");

            // <!-- Wrapper for slides -->
            sb.AppendLine("<div class=\"carousel-inner\">");
            for (int i = 0; i < listArticles.Count; i++)
            {
                string articleImage = GetRelativeUrlByFileId(listArticles[i].Image);

                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = LocalUtils.DefaultPicture;
                }
                sb.AppendFormat("<div class=\"{0}\">{1}", i == 0 ? "item active" : "item", "\r\n");
                sb.AppendFormat("<a href='{0}' target='{1}'><img src='{2}' {3} {4} alt='{5}'/></a>{6}",
                   GetNavigate(listArticles[i].Id, listArticles[i].Title), Settings_Slideshow.General.LinkTarget, articleImage,
                   string.IsNullOrEmpty(Settings_Slideshow.General.ImageWidth) ? "" : string.Format("width='{0}px'", Settings_Slideshow.General.ImageWidth),
                   string.IsNullOrEmpty(Settings_Slideshow.General.ImageHeight) ? "" : string.Format("height='{0}px'", Settings_Slideshow.General.ImageHeight),
                   listArticles[i].Title, "\r\n");

                //title and summary
                if (Settings_Slideshow.BootstrapCarousel.ShowTitle || Settings_Slideshow.BootstrapCarousel.ShowSummary)
                {
                    sb.AppendLine("<div class=\"carousel-caption\">");
                    if (Settings_Slideshow.BootstrapCarousel.ShowTitle)
                    {
                        sb.AppendFormat("<h4>{0}</h4>{1}",
                       Settings_Slideshow.General.TitleLength == 0 ?
                       listArticles[i].Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(listArticles[i].Title, Settings_Slideshow.General.TitleLength, ".."),
                       "\r\n");
                    }
                    if (Settings_Slideshow.BootstrapCarousel.ShowSummary)
                    {
                        sb.AppendFormat("<p>{0}</p>{1}",
                        Settings_Slideshow.General.SummaryLength == 0 ?
                       listArticles[i].Summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(listArticles[i].Summary, Settings_Slideshow.General.SummaryLength, ".."),
                      "\r\n");
                    }

                    sb.AppendLine("</div>");
                }


                sb.AppendLine("</div>");

            }
            sb.AppendLine("</div>");


            //<!-- Controls -->
            sb.AppendFormat("<a class=\"left carousel-control\" href=\"#{0}\" data-slide=\"prev\"><span class=\"glyphicon glyphicon-chevron-left\"></span></a>{1}",
                divId, "\r\n");
            sb.AppendFormat("<a class=\"right carousel-control\" href=\"#{0}\" data-slide=\"next\"><span class=\"glyphicon glyphicon-chevron-right\"></span></a>{1}",
               divId, "\r\n");

            //end the whole div
            sb.AppendLine("</div>");

            litBootstrapCarousel.Text = sb.ToString();

        }
        #endregion
        #region NumericRotator
        private void RegisterScript_NumericRotator()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_NumericRotator))
            {

                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}css/NumericRotator.css\" type=\"text/css\" />{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/NumericRotator/", "\r\n");

                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}js/NumericRotator.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/NumericRotator/", "\r\n");
                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_NumericRotator, sb.ToString(), false);
            }
        }
        private void GenerateScript_NumericRotator()
        {
            StringBuilder sb = new StringBuilder();
            string id = "m" + ModuleId.ToString();
            sb.AppendFormat("<script type=\"text/javascript\">{0}", "\r\n");

            sb.AppendFormat("var {0} = new Pixviewer('{1}',\"BigPic_cont_m_0\",\"Number_cont_m_0\", \"NumberBG_cont_m_0\", {2}, {3});{4}",
                id, divNumericRotator.ClientID.ToString(), Settings_Slideshow.NumericRotator.Width, Settings_Slideshow.NumericRotator.Height, "\r\n");
            sb.AppendFormat("{0}.TimeOut = {1};{2}", id, Settings_Slideshow.NumericRotator.TimeOut, "\r\n");


            sb.AppendFormat("{0}.TitleID = \"Title_cont_m_0\";{1}", id, "\r\n");

            sb.AppendFormat("{0}.titleHeight = {1};{2}", id, Settings_Slideshow.NumericRotator.TitleHeight, "\r\n");

            sb.AppendFormat("{0}.htmlData = document.getElementById('focusData_cont_m_0').getElementsByTagName('dl');{1}", id, "\r\n");
            sb.AppendFormat("for(var i=0;i<{0}.htmlData.length;i++)", id);
            sb.AppendLine(@"{");

            sb.AppendLine(@"var jsonData ={");
            sb.AppendFormat("title : {0}.htmlData[i].getElementsByTagName('a')[0].innerHTML,{1}", id, "\r\n");
            sb.AppendFormat("url : {0}.htmlData[i].getElementsByTagName('a')[0].href,{1}", id, "\r\n");
            sb.AppendFormat("pic : {0}.htmlData[i].getElementsByTagName('dd')[0].innerText || {1}.htmlData[i].getElementsByTagName('dd')[0].textContent{2}",
                id, id, "\r\n");

            sb.AppendLine(@"};");
            //buttons,new in imageNumericRotator 1.2.1
            sb.AppendFormat("{0}.Add(jsonData);{1}", id, "\r\n");

            sb.AppendLine(@"};");
            sb.AppendFormat("{0}.begin();{1}", id, "\r\n");


            sb.AppendFormat("</script>{0}", "\r\n");
            litNumericRotatorScript.Text = sb.ToString();


        }
        //private void RegisterCss_NumericRotator()
        //{
        //    //string imagePath = DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/NumericRotator/Images/";

        //    //StringBuilder sb = new StringBuilder();


        //    //sb.AppendLine(@"<style type='text/css'>");
        //    //sb.Append(@".Pixviewer .PvNumberBg{position:absolute;right:1px;z-index:49;height:13px;width:250px;");
        //    //sb.AppendFormat("background:url({0}) no-repeat 0 0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=crop, src='{1}');_background:none;",
        //    //    imagePath + "numberbg.png", imagePath + "numberbg.png");
        //    //sb.Append(@"}");
        //    //sb.AppendLine("\r\n");
        //    //sb.Append(@".Pixviewer .Triangle{width:21px;height:17px;position:absolute;z-index:49;");
        //    //sb.AppendFormat("background:url({0}) no-repeat 0 0;_filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true,sizingMethod=crop, src='{1}');_background:none;",
        //    //   imagePath + "triangle.png", imagePath + "triangle.png");
        //    //sb.AppendLine(@"}");
        //    //sb.AppendFormat("</style>{0}", "\r\n");
        //    //litCss.Text = sb.ToString();
        //}


        private void CreateContent_NumericRotator()
        {
            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();
            string reflectionPath = string.Empty;
            List<ArticleInfo> listArticles = GetArticles();

            foreach (ArticleInfo objArticle in listArticles)
            {
                string articleImage = GetRelativeUrlByFileId(objArticle.Image);

                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = LocalUtils.DefaultPicture;
                }

                sb.AppendLine("<dl>");
                sb.AppendFormat("<dt><a href=\"{0}\" target=\"{1}\">{2}</a></dt>{3}",
                    GetNavigate(objArticle.Id, objArticle.Title), Settings_Slideshow.General.LinkTarget,
                    Settings_Slideshow.General.TitleLength == 0 ?
                    objArticle.Title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(objArticle.Title, Settings_Slideshow.General.TitleLength, ".."),
                     "\r\n");
                sb.AppendFormat("<dd>{0}</dd>{1}",
                   articleImage,
                    "\r\n");
                sb.AppendLine("</dl>");

            }
            litNumericRotatorContent.Text = sb.ToString();

        }
        #endregion

        #region Galleria
        private void RegisterScript_Galleria()
        {
            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_Galleria))
            {
                DotNetNuke.Framework.jQuery.RequestRegistration();

                StringBuilder sb = new StringBuilder();

                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}galleria-1.3.5.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/galleria/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_Galleria, sb.ToString(), false);
            }
        }
        private void CreateContent_Galleria()
        {
            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();

            List<ArticleInfo> listArticles = GetArticles();


            sb.AppendLine("<script type=\"text/javascript\">");

            sb.AppendLine("var data = [");
            for (int i = 0; i < listArticles.Count; i++)
            {
                string title = listArticles[i].Title.Replace("\"", " ").Replace("\'", " ");

                string summary = listArticles[i].Summary.Replace("\"", " ").Replace("\'", " ").Replace(Microsoft.VisualBasic.Constants.vbCrLf, "");
                string articleImage = GetRelativeUrlByFileId(listArticles[i].Image);

                if (string.IsNullOrEmpty(articleImage))
                {
                    articleImage = LocalUtils.DefaultPicture;
                }

                sb.AppendLine("{");
                if (Settings_Slideshow.Galleria.ShowTitle)
                {
                    sb.AppendFormat("title:'{0}',{1}", Settings_Slideshow.General.TitleLength == 0 ?
                       title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_Slideshow.General.TitleLength, ".."), "\r\n");
                }
                if (Settings_Slideshow.Galleria.ShowSummary)
                {
                    sb.AppendFormat("description:'{0}',{1}", Settings_Slideshow.General.SummaryLength == 0 ?
                       summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(summary, Settings_Slideshow.General.SummaryLength, ".."),
                      "\r\n");
                }
                if (!Settings_Slideshow.Galleria.Lightbox)
                {
                    sb.AppendFormat("link:'{0}',{1}", GetNavigate(listArticles[i].Id, listArticles[i].Title), "\r\n");
                }
                if (Settings_Slideshow.Galleria.ShowTitle || Settings_Slideshow.Galleria.ShowSummary)
                {
                    sb.AppendFormat("layer:'<div><h4>{0}</h4><p>{1}</p>',{2}",
                        Settings_Slideshow.Galleria.ShowTitle ? (Settings_Slideshow.General.TitleLength == 0 ?
                        title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_Slideshow.General.TitleLength, "..")) : "",

                       Settings_Slideshow.Galleria.ShowSummary ? (Settings_Slideshow.General.SummaryLength == 0 ?
                       summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(summary, Settings_Slideshow.General.SummaryLength, "..")) : "",
                      "\r\n");
                }
                sb.AppendFormat("thumb:'{0}',{1}", articleImage, "\r\n");
                sb.AppendFormat("image:'{0}'{1}", GetRelativeUrlByFileId(listArticles[i].Image), "\r\n");
                if (i == listArticles.Count - 1)
                {
                    sb.AppendLine("}");
                }
                else
                {
                    sb.AppendLine("},");
                }
            }
            sb.AppendLine("];");
            sb.AppendFormat("Galleria.loadTheme('{0}');{1}", DotNetNuke.Common.Globals.ApplicationPath
                + "/DesktopModules/CrossArticle/Slideshow/galleria/themes/classic/galleria.classic.min.js",
                     "\r\n");
            sb.AppendFormat("Galleria.run('{0}', {1}", "#" + divGalleria.ClientID, "\r\n");
            sb.AppendLine("{");

            if (Utils.IsNumber(Settings_Slideshow.Galleria.Width))
            {
                sb.AppendFormat("width:{0},{1}", Settings_Slideshow.Galleria.Width, "\r\n");
            }
            else
            {
                sb.AppendFormat("width:'{0}',{1}", Settings_Slideshow.Galleria.Width, "\r\n");
            }
            sb.AppendFormat("height:{0},{1}", Settings_Slideshow.Galleria.Height, "\r\n");
            sb.AppendFormat("autoplay:{0},{1}", Settings_Slideshow.Galleria.Autoplay.ToLower(), "\r\n");
            sb.AppendFormat("lightbox:{0},{1}", Settings_Slideshow.Galleria.Lightbox.ToString().ToLower(), "\r\n");
            sb.AppendFormat("responsive:{0},{1}", Settings_Slideshow.Galleria.Responsive.ToString().ToLower(), "\r\n");
            if (Settings_Slideshow.General.LinkTarget == "_blank")
            {
                sb.AppendFormat("popupLinks:true,{0}", "\r\n");
            }
            sb.AppendLine("dataSource: data");
            sb.AppendLine("});");
            sb.AppendLine("</script>");


            litGalleria.Text = sb.ToString();

        }

        #endregion

        #region OwlCarousel
        private void RegisterScript_OwlCarousel()
        {
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQuery);

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_OwlCarousel))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}owl.carousel.min.css\" type=\"text/css\" />{1}",
                  DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/OwlCarousel2-master/dist/assets/", "\r\n");

                if (Settings_Slideshow.OwlCarousel.theme.ToLower() == "default")
                {
                    sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}owl.theme.default.min.css\" type=\"text/css\" />{1}",
                 DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/OwlCarousel2-master/dist/assets/", "\r\n");
                }
                else
                {
                    sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}owl.theme.green.min.css\" type=\"text/css\" />{1}",
                 DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/OwlCarousel2-master/dist/assets/", "\r\n");
                }
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}owl.carousel.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/OwlCarousel2-master/dist/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_OwlCarousel, sb.ToString(), false);
            }
        }
        private void SetOwlCarouselImageCss()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<style type=\"text/css\">");
            sb.AppendFormat("{0} .item img", "#" + divOwlCarousel.ClientID);
            sb.AppendLine("{");

            sb.AppendFormat("display:block;width:{0};height:{1}",
                Utils.IsNumber(Settings_Slideshow.OwlCarousel.imageWidth) ? Settings_Slideshow.OwlCarousel.imageWidth.ToString() + "px" : Settings_Slideshow.OwlCarousel.imageWidth,
                Utils.IsNumber(Settings_Slideshow.OwlCarousel.imageHeight) ? Settings_Slideshow.OwlCarousel.imageHeight.ToString() + "px" : Settings_Slideshow.OwlCarousel.imageHeight);
            sb.AppendLine("}");
            sb.AppendLine("</style>");
            litCss.Text = sb.ToString();
        }
        private void CreateScript_OwlCarousel()
        {
            StringBuilder sb = new StringBuilder();
            string carouselId = divOwlCarousel.ClientID;
            sb.AppendLine("<script type=\"text/javascript\">");
            sb.AppendLine("$(document).ready(function() {");

            sb.AppendFormat("$(\"#{0}\").owlCarousel({1}", carouselId, "\r\n");
            sb.AppendLine("{");
            //options here
            sb.AppendFormat("items:{0},{1}", Settings_Slideshow.OwlCarousel.items, "\r\n");
            sb.AppendFormat("margin:{0},{1}", Settings_Slideshow.OwlCarousel.margin, "\r\n");
            sb.AppendFormat("loop:{0},{1}", Settings_Slideshow.OwlCarousel.loop.ToString().ToLower(), "\r\n");
            sb.AppendFormat("center:{0},{1}", Settings_Slideshow.OwlCarousel.center.ToString().ToLower(), "\r\n");
            sb.AppendFormat("mouseDrag:{0},{1}", Settings_Slideshow.OwlCarousel.mouseDrag.ToString().ToLower(), "\r\n");
            sb.AppendFormat("touchDrag:{0},{1}", Settings_Slideshow.OwlCarousel.touchDrag.ToString().ToLower(), "\r\n");
            sb.AppendFormat("pullDrag:{0},{1}", Settings_Slideshow.OwlCarousel.pullDrag.ToString().ToLower(), "\r\n");
            sb.AppendFormat("freeDrag:{0},{1}", Settings_Slideshow.OwlCarousel.freeDrag.ToString().ToLower(), "\r\n");
            sb.AppendFormat("stagePadding:{0},{1}", Settings_Slideshow.OwlCarousel.stagePadding, "\r\n");
            // sb.AppendFormat("autoWidth:{0},{1}", Settings_Slideshow.OwlCarousel.autoWidth.ToString().ToLower(), "\r\n");
            sb.AppendFormat("nav:{0},{1}", Settings_Slideshow.OwlCarousel.nav.ToString().ToLower(), "\r\n");
            sb.AppendFormat("navRewind:{0},{1}", Settings_Slideshow.OwlCarousel.navRewind.ToString().ToLower(), "\r\n");
            //sb.AppendFormat("navText:'{0}',{1}", Settings_Slideshow.OwlCarousel.navText, "\r\n");
            sb.AppendFormat("dots:{0},{1}", Settings_Slideshow.OwlCarousel.dots.ToString().ToLower(), "\r\n");
            sb.AppendFormat("autoplay:{0},{1}", Settings_Slideshow.OwlCarousel.autoplay.ToString().ToLower(), "\r\n");
            sb.AppendFormat("autoplayTimeout:{0},{1}", Settings_Slideshow.OwlCarousel.autoplayTimeout, "\r\n");
            sb.AppendFormat("autoplayHoverPause:{0},{1}", Settings_Slideshow.OwlCarousel.autoplayHoverPause.ToString().ToLower(), "\r\n");

            if (Settings_Slideshow.OwlCarousel.responsive)
            {
                sb.AppendFormat("responsiveClass:true,{0}", "\r\n");
                sb.AppendLine("responsive:{");

                sb.AppendLine("0:{");

                sb.AppendFormat("items:{0}", Settings_Slideshow.OwlCarousel.items_480);
                sb.AppendLine("},");

                sb.AppendLine("768:{");
                sb.AppendFormat("items:{0}", Settings_Slideshow.OwlCarousel.items_768);
                sb.AppendLine("},");

                sb.AppendLine("980:{");
                sb.AppendFormat("items:{0}", Settings_Slideshow.OwlCarousel.items_980);
                sb.AppendLine("},");

                sb.AppendLine("1200:{");
                sb.AppendFormat("items:{0}", Settings_Slideshow.OwlCarousel.items_1200);
                sb.AppendLine("},");

                sb.AppendLine("1600:{");
                sb.AppendFormat("items:{0}", Settings_Slideshow.OwlCarousel.items_than1200);
                sb.AppendLine("}");

                sb.AppendLine("}");
            }
            else
            {
                sb.AppendFormat("responsive:false{0}", "\r\n");
            }



            sb.AppendLine("}");
            sb.AppendLine(");");
            sb.AppendLine("});");
            sb.AppendLine("</script>");
            litOwlCarouselScript.Text = sb.ToString();
        }
        private void CreateContent_OwlCarousel()
        {

            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();

            List<ArticleInfo> listArticles = GetArticles();


            for (int i = 0; i < listArticles.Count; i++)
            {

                sb.AppendLine("<div class=\"item\">");
                string imageUrl = listArticles[i].Thumbnail;

                if (Settings_Slideshow.OwlCarousel.imageSource.ToLower() != "thumbnail")
                {
                    imageUrl = GetRelativeUrlByFileId(listArticles[i].Image);
                }
                sb.AppendFormat("<a href=\"{0}\" target=\"{1}\">{2}",
                    GetNavigate(listArticles[i].Id, listArticles[i].Title),
                    Settings_Slideshow.General.LinkTarget,
                    "\r\n");

                sb.AppendFormat("<img src=\"{0}\"  alt=\"{1}\"/>{2}",
                    imageUrl, listArticles[i].Title,
                    "\r\n");

                sb.AppendLine("</a>");
                if (Settings_Slideshow.OwlCarousel.ShowTitle || Settings_Slideshow.OwlCarousel.ShowSummary)
                {
                    string title = Settings_Slideshow.OwlCarousel.ShowTitle ? listArticles[i].Title.Replace("\"", " ").Replace("\'", " ") : string.Empty;

                    string summary = Settings_Slideshow.OwlCarousel.ShowSummary ?
                        listArticles[i].Summary.Replace("\"", " ").Replace("\'", " ").Replace(Microsoft.VisualBasic.Constants.vbCrLf, "") : string.Empty;

                    sb.AppendLine("<br />");
                    if (Settings_Slideshow.OwlCarousel.ShowTitle)
                    {
                        sb.AppendFormat("<strong><a href=\"{0}\" target=\"{1}\">{2}</a></strong>",
                   GetNavigate(listArticles[i].Id, listArticles[i].Title),
                   Settings_Slideshow.General.LinkTarget, title);
                    }
                    if (Settings_Slideshow.OwlCarousel.ShowSummary)
                    {
                        sb.AppendFormat("<p>{0}</p>", summary);
                    }
                }

                sb.AppendLine("</div>");

            }

            litOwlCarouselContent.Text = sb.ToString();

        }

        #endregion

        #region PgwSlider
        private void RegisterScript_PgwSlider()
        {
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQuery);

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_PgwSlider))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}pgwslider.min.css\" type=\"text/css\" />{1}",
                  DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/PgwSlider/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}pgwslider.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/PgwSlider/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_PgwSlider, sb.ToString(), false);
            }
        }
        private void CreateScript_PgwSlider()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<script type=\"text/javascript\">");
            sb.AppendLine("$(document).ready(function() {");
            string ulClass = "pgwSlider" + ModuleId.ToString();
            sb.AppendFormat("$(\".{0}\").pgwSlider({1}", ulClass, "\r\n");
            sb.AppendLine("{");
            //options here
            sb.AppendFormat("mainClassName:'{0}',{1}", Settings_Slideshow.PgwSlider.mainClassName, "\r\n");
            sb.AppendFormat("listPosition:'{0}',{1}", Settings_Slideshow.PgwSlider.listPosition, "\r\n");
            sb.AppendFormat("selectionMode:'{0}',{1}", Settings_Slideshow.PgwSlider.selectionMode, "\r\n");
            sb.AppendFormat("transitionEffect:'{0}',{1}", Settings_Slideshow.PgwSlider.transitionEffect, "\r\n");
            sb.AppendFormat("autoSlide:{0},{1}", Settings_Slideshow.PgwSlider.autoSlide.ToString().ToLower(), "\r\n");
            sb.AppendFormat("displayList:{0},{1}", Settings_Slideshow.PgwSlider.displayList.ToString().ToLower(), "\r\n");
            sb.AppendFormat("displayControls:{0},{1}", Settings_Slideshow.PgwSlider.displayControls.ToString().ToLower(), "\r\n");
            sb.AppendFormat("touchControls:{0},{1}", Settings_Slideshow.PgwSlider.touchControls.ToString().ToLower(), "\r\n");
            sb.AppendFormat("verticalCentering:{0},{1}", Settings_Slideshow.PgwSlider.verticalCentering.ToString().ToLower(), "\r\n");
            sb.AppendFormat("adaptiveHeight:{0},{1}", Settings_Slideshow.PgwSlider.adaptiveHeight.ToString().ToLower(), "\r\n");
            if (Settings_Slideshow.PgwSlider.limitMaxHeight)
            {
                sb.AppendFormat("maxHeight:{0},{1}", Settings_Slideshow.PgwSlider.maxHeight, "\r\n");
            }

            sb.AppendFormat("adaptiveDuration:{0},{1}", Settings_Slideshow.PgwSlider.adaptiveDuration, "\r\n");
            sb.AppendFormat("transitionDuration:{0},{1}", Settings_Slideshow.PgwSlider.transitionDuration, "\r\n");
            sb.AppendFormat("intervalDuration:{0}{1}", Settings_Slideshow.PgwSlider.intervalDuration, "\r\n");


            sb.AppendLine("}");
            sb.AppendLine(");");
            sb.AppendLine("});");
            sb.AppendLine("</script>");
            litPgwSliderScript.Text = sb.ToString();
        }
        private void CreateContent_PgwSlider()
        {

            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();

            List<ArticleInfo> listArticles = GetArticles();

            string divId = "pgwSlider" + ModuleId.ToString();
            string ulClass = "pgwSlider" + ModuleId.ToString();

            sb.AppendFormat("<div id=\"{0}\">{1}", divId, "\r\n");

            sb.AppendFormat("<ul class=\"{0}\">{1}", ulClass, "\r\n");

            for (int i = 0; i < listArticles.Count; i++)
            {
                string title = Settings_Slideshow.PgwSlider.ShowTitle ? listArticles[i].Title.Replace("\"", " ").Replace("\'", " ") : string.Empty;

                string summary = Settings_Slideshow.PgwSlider.ShowSummary ?
                    listArticles[i].Summary.Replace("\"", " ").Replace("\'", " ").Replace(Microsoft.VisualBasic.Constants.vbCrLf, "") : string.Empty;

                sb.AppendLine("<li>");

                sb.AppendFormat("<a href=\"{0}\" target=\"{1}\">{2}",
                    GetNavigate(listArticles[i].Id, listArticles[i].Title),
                    Settings_Slideshow.General.LinkTarget,
                    "\r\n");

                sb.AppendFormat("<img src=\"{0}\" alt=\"{1}\" data-description=\"{2}\" data-large-src=\"{3}\">{4}",
                    listArticles[i].Thumbnail,
                     Settings_Slideshow.General.TitleLength == 0 ?
                       title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_Slideshow.General.TitleLength, ".."),

                       Settings_Slideshow.General.SummaryLength == 0 ?
                       summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(summary, Settings_Slideshow.General.SummaryLength, ".."),
                       GetRelativeUrlByFileId(listArticles[i].Image), "\r\n");

                sb.AppendLine("</a>");

                sb.AppendLine("</li>");

            }
            sb.AppendLine("</ul>");
            sb.AppendLine("</div>");

            litPgwSliderContent.Text = sb.ToString();

        }

        #endregion
        #region PgwGallery
        private void RegisterScript_PgwGallery()
        {
            DotNetNuke.Framework.JavaScriptLibraries.JavaScript.RequestRegistration(DotNetNuke.Framework.JavaScriptLibraries.CommonJs.jQuery);

            if (!this.Page.ClientScript.IsClientScriptBlockRegistered(ScriptName_PgwGallery))
            {
                StringBuilder sb = new StringBuilder();
                sb.AppendFormat("<link rel=\"stylesheet\" href=\"{0}pgwslideshow.min.css\" type=\"text/css\" />{1}",
                  DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/PgwGallery/", "\r\n");
                sb.AppendFormat("<script type=\"text/javascript\" src=\"{0}pgwslideshow.min.js\"></script>{1}",
                    DotNetNuke.Common.Globals.ApplicationPath + "/DesktopModules/CrossArticle/Slideshow/PgwGallery/", "\r\n");

                this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), ScriptName_PgwGallery, sb.ToString(), false);
            }
        }
        private void CreateScript_PgwGallery()
        {
            StringBuilder sb = new StringBuilder();
            sb.AppendLine("<script type=\"text/javascript\">");
            sb.AppendLine("$(document).ready(function() {");
            string ulClass = "pgwSlideshow" + ModuleId.ToString();
            sb.AppendFormat("$(\".{0}\").pgwSlideshow({1}", ulClass, "\r\n");
            sb.AppendLine("{");
            //options here
            sb.AppendFormat("mainClassName:'{0}',{1}", Settings_Slideshow.PgwGallery.mainClassName, "\r\n");
            sb.AppendFormat("transitionEffect:'{0}',{1}", Settings_Slideshow.PgwGallery.transitionEffect, "\r\n");
            sb.AppendFormat("autoSlide:{0},{1}", Settings_Slideshow.PgwGallery.autoSlide.ToString().ToLower(), "\r\n");
            sb.AppendFormat("displayList:{0},{1}", Settings_Slideshow.PgwGallery.displayList.ToString().ToLower(), "\r\n");
            sb.AppendFormat("displayControls:{0},{1}", Settings_Slideshow.PgwGallery.displayControls.ToString().ToLower(), "\r\n");
            sb.AppendFormat("touchControls:{0},{1}", Settings_Slideshow.PgwGallery.touchControls.ToString().ToLower(), "\r\n");
            if (Settings_Slideshow.PgwGallery.limitMaxHeight)
            {
                sb.AppendFormat("maxHeight:{0},{1}", Settings_Slideshow.PgwGallery.maxHeight, "\r\n");
            }

            sb.AppendFormat("adaptiveDuration:{0},{1}", Settings_Slideshow.PgwGallery.adaptiveDuration, "\r\n");
            sb.AppendFormat("transitionDuration:{0},{1}", Settings_Slideshow.PgwGallery.transitionDuration, "\r\n");
            sb.AppendFormat("intervalDuration:{0}{1}", Settings_Slideshow.PgwGallery.intervalDuration, "\r\n");


            sb.AppendLine("}");
            sb.AppendLine(");");
            sb.AppendLine("});");
            sb.AppendLine("</script>");
            litPgwGalleryScript.Text = sb.ToString();
        }
        private void CreateContent_PgwGallery()
        {

            TypeInfo objType = TypeController.Get(Settings_Slideshow.General.TypeId);

            StringBuilder sb = new StringBuilder();

            List<ArticleInfo> listArticles = GetArticles();

            string divId = "pgwGallery" + ModuleId.ToString();
            string ulClass = "pgwSlideshow" + ModuleId.ToString();

            sb.AppendFormat("<div id=\"{0}\">{1}", divId, "\r\n");

            sb.AppendFormat("<ul class=\"{0}\">{1}", ulClass, "\r\n");

            for (int i = 0; i < listArticles.Count; i++)
            {
                string title = Settings_Slideshow.PgwGallery.ShowTitle ? listArticles[i].Title.Replace("\"", " ").Replace("\'", " ") : string.Empty;

                string summary = Settings_Slideshow.PgwGallery.ShowSummary ?
                    listArticles[i].Summary.Replace("\"", " ").Replace("\'", " ").Replace(Microsoft.VisualBasic.Constants.vbCrLf, "") : string.Empty;

                sb.AppendLine("<li>");

                sb.AppendFormat("<a href=\"{0}\" target=\"{1}\">{2}",
                    GetNavigate(listArticles[i].Id, listArticles[i].Title),
                    Settings_Slideshow.General.LinkTarget,
                    "\r\n");

                sb.AppendFormat("<img src=\"{0}\" alt=\"{1}\" data-description=\"{2}\" data-large-src=\"{3}\">{4}",
                    listArticles[i].Thumbnail,
                     Settings_Slideshow.General.TitleLength == 0 ?
                       title : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(title, Settings_Slideshow.General.TitleLength, ".."),

                       Settings_Slideshow.General.SummaryLength == 0 ?
                       summary : DotNetNuke.Common.Utilities.HtmlUtils.Shorten(summary, Settings_Slideshow.General.SummaryLength, ".."),
                       GetRelativeUrlByFileId(listArticles[i].Image), "\r\n");

                sb.AppendLine("</a>");

                sb.AppendLine("</li>");

            }
            sb.AppendLine("</ul>");
            sb.AppendLine("</div>");

            litPgwGalleryContent.Text = sb.ToString();

        }

        #endregion

        protected string GetNavigate(int articleId, string title)
        {
            int detailTabId = GetSubModulePageId_Detail(Settings_Slideshow.General.DetailTab, Settings_Slideshow.General.TypeId);

            return GenerateArticleDetailUrl(detailTabId, articleId.ToString(), title);
        }
        protected string GetSlidorionStyle()
        {
            return string.Format("width:{0}px;height:{1}px",
                Settings_Slideshow.Slidorion.ContainerWidth.ToString(), Settings_Slideshow.Slidorion.ContainerHeight.ToString());

        }
    }

}

