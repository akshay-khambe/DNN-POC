
    #if(${xf.ViewGlobalSetting("EnabledWidget","true")} == "true")  
      ${xf.ViewIncludeCSS("resource/css/backtop.css",9)}
      <ul class="fixed-widget-list">
        #if(${xf.ViewGlobalSetting("e_behance","true")} == "true")  
        socialtarget
        <li class="behance"><a rel="noopener" href="${xf.ViewGlobalSetting("e_behance_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_behance_text","Twitter")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_dribbble","true")} == "true")  
        <li class="dribbble"><a rel="noopener" href="${xf.ViewGlobalSetting("e_dribbble_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_dribbble_text","Twitter")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_twitter","true")} == "true")  
        <li class="twitter"><a rel="noopener" href="${xf.ViewGlobalSetting("e_twitter_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_twitter_text","Twitter")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_youtube","true")} == "true")  
        <li class="youtube"><a rel="noopener" href="${xf.ViewGlobalSetting("e_youtube_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_youtube_text","YouTube")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_instagram","true")} == "true")  
        <li class="instagram"><a rel="noopener" href="${xf.ViewGlobalSetting("e_instagram_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_instagram_text","Instagram")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_vimeo","true")} == "true")  
        <li class="vimeo"><a rel="noopener" href="${xf.ViewGlobalSetting("e_vimeo_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_vimeo_text","Vimeo")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_pinterest","true")} == "true")  
        <li class="pinterest"><a rel="noopener" href="${xf.ViewGlobalSetting("e_pinterest_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_pinterest_text","Pinterest")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_linkedin","true")} == "true")  
        <li class="linkedin"><a rel="noopener" href="${xf.ViewGlobalSetting("e_linkedin_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_linkedin_text","Linkedin")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_RSS","true")} == "true")  
        <li class="rss"><a rel="noopener" href="${xf.ViewGlobalSetting("e_RSS_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_RSS_text","RSS")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_Facebook","true")} == "true")  
        <li class="facebook"><a rel="noopener" href="${xf.ViewGlobalSetting("e_Facebook_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_Facebook_text","Facebook")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_WhatsApp","true")} == "true")  
        <li class="WhatsApp"><a rel="noopener" href="${xf.ViewGlobalSetting("e_WhatsApp_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_WhatsApp_text","WhatsApp")}</span></a></li>
        #end

        #if(${xf.ViewGlobalSetting("e_Flickr","false")} == "true")  
        <li class="Flickr"><a rel="noopener" href="${xf.ViewGlobalSetting("e_Flickr_Url","#")}" target="_blank"><span>${xf.ViewGlobalSetting("e_Flickr_text","Flickr")}</span></a></li>
        #end

        #if(${xf.ViewGlobalSetting("e_phone","true")} == "true")  
        <li class="phone"><a href="${xf.ViewGlobalSetting("e_phone_Url","#")}"><span>${xf.ViewGlobalSetting("e_phone_text","Phone")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_envelope","true")} == "true")  
        <li class="envelope"><a href="${xf.ViewGlobalSetting("e_envelope_Url","#")}"><span>${xf.ViewGlobalSetting("e_envelope_text","Envelope")}</span></a></li>
        #end
        #if(${xf.ViewGlobalSetting("e_share","true")} == "true")  
       <li class="share"#if(${xf.ViewGlobalSetting("e_share_text_color","#ff6e2f")} !="#ff6e2f") style="background-color:${xf.ViewGlobalSetting("e_share_text_color","#ff6e2f")}"#end><span>${xf.ViewGlobalSetting("e_share_text","Contact info")}</span></a></li>
       #end
       #if(${xf.ViewGlobalSetting("e_backtop","true")} == "true")  
       <li id="back-to-top" class="backtop"><span>${xf.ViewGlobalSetting("e_backtop_text","Back to top")}</span></a></li>
       #end
      </ul>
    #end 
