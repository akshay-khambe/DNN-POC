<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="<%= SkinPath %>#">Content</a></li>
    <li><a href="<%= SkinPath %>#">Options</a></li>
</ul>
<div class="tab-content">
    <div class="tab-pane active">

        <div class="form-group">
            <label class="control-label">Title:</label>
            <div class="control-cont">
                <input name="title" type="text" class="dnnOptions" value="${title}" data-default="0" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Content:</label>
            <div class="control-cont">
                <textarea rows="5" name="content" class="dnnOptions CKEditor">{{html content}}</textarea>
            </div>
        </div>


    </div>
    <div class="tab-pane">



        <div class="form-group">
            <label class="control-label">Choose Mode:</label>
            <div class="control-cont" style="display: flex;">
                <select name="defaultdisplay" class="dnnOptions" data-value="${defaultdisplay}" style="width: 200px; margin-right: 30px;" id="DefaultDisplayModal">
                    <option value="" selected="selected">Click</option>
                    <option value="popup">Popup</option>
                </select>
            </div>
        </div>
        <div class="conditional" data-condition="!#DefaultDisplayModal">
            <div class="form-group">
                <label class="control-label">Code:</label>
                <div class="control-cont">
                    <p>#modalbox${moduleid}</p>
                </div>
            </div>
        </div>

        <div class="conditional" data-condition="#DefaultDisplayModal == 'popup'">

            <div class="form-group">
                <label class="control-label">Popup Delay:</label>
                <div class="control-cont"> 
                    <input name="popupdelay" type="number" class="dnnOptions" value="${popupdelay}" data-default="1" style="width: 100px;" /> s
                </div>
            </div>

            <div class="form-group">
                <label class="control-label">Popup Frequency:</label>
                <div class="control-cont" style="display: flex;">
                    <select name="defaultonce" class="dnnOptions" data-value="${defaultonce}" style="width: 200px;" id="DisplayOnce">
                        <option value="" selected="selected">Every Visit</option>
                        <option value="once">Once Per Session</option>
                    </select>
                </div>
            </div>
            <div class="form-group conditional" data-condition="#DisplayOnce == 'once'">
                <label class="control-label">Session Expiration Time:</label>
                <div class="control-cont">
                    <input name="expirationtime" type="number" class="dnnOptions" value="${expirationtime}" data-default="1" style="width: 100px;" /> day
                </div>
            </div>
            <div class="form-group conditional" data-condition="#DisplayOnce == 'once'">
                <label class="control-label">Version:</label>
                <div class="control-cont">
                    <input name="version" type="number" class="dnnOptions" value="${version}" data-default="1" style="width: 100px;" />
                </div>
            </div>
        </div>


        <div class="form-group">
            <label class="control-label">Modal Position:</label>
            <div class="control-cont" style="display: flex;">
                <select name="modalposition" class="dnnOptions" data-value="${modalposition}" style="width: 200px; margin-right: 30px;">
                    <option value="" selected="selected">Center</option>
                    <option value="position-top">Top</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Content Size:</label>

            <div class="control-cont" style="display: flex;">
                <select name="contentsize" class="dnnOptions" data-value="${contentsize}" id="ContentSize" style="width: 200px; margin-right: 30px;">
                    <option value="size-small">Small Modal</option>
                    <option value="size-large">Medium Modal</option>
                    <option value="size-elarge" selected="selected">Large Modal</option>
                    <option value="size-full">Full Screen Modal</option>
                    <option value="size-custom">Custom</option>
                </select>
                <div class="conditional" data-condition="#ContentSize == 'size-custom'">
                    <span style="margin-left: 10px;">Width: </span> <input name="width" type="text" class="dnnOptions" value="${width}" style="width:100px;" />
                    <span style="margin:0 10px;"> Height: </span> <input name="height" type="text" class="dnnOptions" value="${height}" style="width: 100px;" />
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Actions Position:</label>
            <div class="control-cont" style="display: flex;">
                <select name="actionsposition" class="dnnOptions" data-value="${actionsposition}" style="width: 200px; margin-right: 30px;">
                    <option value="" selected="selected">Right</option>
                    <option value="actions-center">Center</option>
                    <option value="actions-left">Left</option>
                </select>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Cancel Text:</label>
            <div class="control-cont">
                <input name="canceltext" type="text" class="dnnOptions" value="${canceltext}" style="width: 200px" />
            </div>
        </div>

        <div class="form-group">
            <label class="control-label">Display Link Button:</label>
            <div class="control-cont">
                <input name="linkbtn" ${linkbtn} type="checkbox" class="dnnOptions" id="DisplayLinkButton" />
            </div>
        </div>
        <div class="conditional" data-condition="#DisplayLinkButton">
            <div class="form-group">
                <label class="control-label">Link Text:</label>
                <div class="control-cont">
                    <input name="linktext" type="text" class="dnnOptions" value="${linktext}" style="width: 200px" data-default="More" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Link URL:</label>
                <div class="control-cont">
                    <input name="Linkurl" type="text" class="dnnOptions" value="${Linkurl}" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label">Open New Window:</label>
                <div class="control-cont">
                    <input name="newwindow" ${newwindow} type="checkbox" class="dnnOptions" />
                </div>
            </div>
        </div>


    </div>

</div>


<!--build HTML-->

<div class="buildHTML">


    <div class="modalbox ${contentsize} ${modalposition} {{if defaultdisplay}}is-show{{/if}}" id="modalbox${moduleid}" role="dialog" {{if defaultonce}}data-expiration="${expirationtime}" data-version="${version}"{{/if}}{{if defaultdisplay}} data-popupdelay="${popupdelay}"{{/if}}>
        <div class="modalbox-dialog">
            <div class="modalbox-content" {{if contentsize == 'size-custom'}} style="width:${width}; height:${height};" {{/if}}>

                <div class="modalbox-header">
                    <h5 class="modalbox-title" id="exampleModalLabel"> {{html title}}</h5><button type="button" class="modalbox-close" aria-label="Close"></button>
                </div>
                <div class="modalbox-body">
                    {{html content}}
                </div>
                <div class="modalbox-footer ${actionsposition}">
                    <button type="button" class="modalbox-secondary">${canceltext}</button>
                    {{if linkbtn}}
                    <a href="<%= SkinPath %>${Linkurl}" class="modalbox-primary" {{if newwindow}}target="_blank" {{/if}}>${linktext}</a>
                    {{/if}}
                </div>
            </div>
        </div>

    </div>

    <script class="edit-mode-js" id="js-${moduleid}">
        moduleEditModeJs("modal", "${moduleid}","modal")
    </script>


</div>
