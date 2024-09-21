<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Manager_Modal_CropImage.ascx.cs" Inherits="DNNGo.Modules.ThemePluginPro.Manager_Modal_CropImage" %>

<script src="<%=ModulePath %>Resource/js/filerobot-image-editor.min.js"></script>


<div id="editor_container"></div>
<div style="display: none;"><img id="editor_imgurl_container" /></div>


<script>


    $("head link").remove();

    function getQueryVariable(variable) {

        var query = window.parent.document.getElementById("ImagesEditMediaBox_Iframe").contentWindow.location.search;

        var vars = query.split("&");

        for (var i = 0; i < vars.length; i++) {

            var pair = vars[i].split("=");

            if (pair[0] == variable) {
                return pair[1];
            }

        }

        return (false);

    };
    const imgUrl = decodeURIComponent(getQueryVariable('imgurl'));
    const imgname = getQueryVariable('imgname')?decodeURIComponent(getQueryVariable('imgname')):null;
    document.body.insertBefore(document.getElementById("editor_container"), document.body.lastChild);

    const {
        TABS,
        TOOLS
    } = window.FilerobotImageEditor;

    const config = {
        source: imgUrl,
        defaultSavedImageName:imgname,
        onSave: (editedImageObject, designState) => {

            let image = editedImageObject.imageBase64;
            image = image.replace(/^data:image\/(png|jpeg|webp);base64,/, "");

            let data = {
                Name: editedImageObject.name,
                Extension: editedImageObject.extension,
                ImageWidth: editedImageObject.width,
                ImageHeight: editedImageObject.height,
                Base64: image
            }

            let Params = new URLSearchParams(data);
            fetch('<%=GetServiceUrl("ServiceSaveBase64Image") %>', {
                    method: 'POST', // or 'PUT'
                    body: Params,
                }).then(response => response.json())
                .then(data => {
                    if(data.success){
                        window.parent.document.getElementById("ImagesEditMediaBox").getImageUrl(data.data);
                        window.parent.document.getElementById("ImagesEditMediaBox").style.display='none';  
                        window.parent.document.getElementById("ImagesEditMediaBox_Iframe").src = 'about:blank';
                    }else{
                        alert(data.msg);
                    }
                })
                .catch((error) => {
                    alert('Error:'+ error);
                    console.error('Error:', error);
                });;


        },
        annotationsCommon: {
            fill: '#ff0000',
            stroke: '#ff0000',
            shadowColor: '#ff0000',
        },
        Text: {
            text: ''
        },
        Rotate: {
            angle: 90,
            componentType: 'slider'
        },
        translations: {
            profile: 'Profile',
            coverPhoto: 'Cover photo',
            facebook: 'Facebook',
            socialMedia: 'Social Media',
            fbProfileSize: '180x180px',
            fbCoverPhotoSize: '820x312px',
        },
        Crop: {
            presetsItems: [{
                    titleKey: 'classicTv',
                    descriptionKey: '4:3',
                    ratio: 4 / 3,
                    // icon: CropClassicTv, // optional, CropClassicTv is a React Function component. Possible (React Function component, string or HTML Element)
                },
                {
                    titleKey: 'cinemascope',
                    descriptionKey: '21:9',
                    ratio: 21 / 9,
                    // icon: CropCinemaScope, // optional, CropCinemaScope is a React Function component.  Possible (React Function component, string or HTML Element)
                },
            ],
            presetsFolders: [{
                titleKey: 'socialMedia', // will be translated into Social Media as backend contains this translation key
                // icon: Social, // optional, Social is a React Function component. Possible (React Function component, string or HTML Element)
                groups: [{
                    titleKey: 'facebook',
                    items: [{
                            titleKey: 'profile',
                            width: 180,
                            height: 180,
                            descriptionKey: 'fbProfileSize',
                        },
                        {
                            titleKey: 'coverPhoto',
                            width: 820,
                            height: 312,
                            descriptionKey: 'fbCoverPhotoSize',
                        },
                    ],
                }, ],
            }, ],
        },
        tabsIds: ['adjust', 'finetune', 'filter', 'watermark', 'annotate', 'resize'], // or ['Adjust', 'Annotate', 'Watermark']
        defaultTabId: 'Adjust', // or 'Annotate'
        defaultToolId: TOOLS.TEXT, // or 'Text'
    };

    // Assuming we have a div with id="editor_container"
    const filerobotImageEditor = new FilerobotImageEditor(
        document.querySelector('#editor_container'),
        config,
    );

    filerobotImageEditor.render({
        onClose: (closingReason) => {

            window.parent.document.getElementById("ImagesEditMediaBox").style.display = 'none';
            window.parent.document.getElementById("ImagesEditMediaBox_Iframe").src = 'about:blank';

            //    filerobotImageEditor.terminate();
        },
    });
</script>
<style>
    #editor_container {
        position: fixed;
        width: 100vw;
        height: 100vh;
        left: 0;
        top: 0;
    }
</style>