

 #if(${xf.ViewGlobalSetting("loadingenabled","true")} == "true")
    <dnn:DnnCssInclude ID="pageloaders" runat="server" FilePath="resource/css/loaders.css" PathNameAlias="SkinPath" Priority="10"  />
    <div class="page-loaders" style="background-color:${xf.ViewGlobalSetting("loadingbackgroundcolor","#45b29d")};color:${xf.ViewGlobalSetting("loadingcolor","#FFFFFF")};">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="object" id="object_one"></div>
                <div class="object" id="object_two"></div>
                <div class="object" id="object_three"></div>

            </div>
        </div>

    </div>
#end    