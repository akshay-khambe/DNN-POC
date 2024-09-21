<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="<%= SkinPath %>#generalOptions" aria-controls="layout" role="tab" data-toggle="tab">General</a></li>
  {{if ThemeOptions.BootstrapVersion =="v4"}}
  <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Background Settings</a></li>
  {{else}}
  <li role="presentation"><a href="<%= SkinPath %>#DesignOptions" aria-controls="pane" role="tab" data-toggle="tab">Design Options</a></li>
  {{/if}}

  <li role="presentation"><a href="<%= SkinPath %>#ResponsiveOptions" aria-controls="pane" role="tab" data-toggle="tab">Responsive Options</a></li>
  <li role="presentation"><a href="<%= SkinPath %>#CustomCSS" aria-controls="pane" role="tab" data-toggle="tab">Custom CSS</a></li>
  <li role="presentation"><a href="<%= SkinPath %>#HideElement" aria-controls="pane" role="tab" data-toggle="tab">Hide Element</a></li>
  {{if ThemeOptions.BootstrapVersion =="v4"}}
  <li role="presentation"><a href="<%= SkinPath %>#Animation" aria-controls="pane" role="tab" data-toggle="tab">Animation</a></li>
  {{/if}}
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="generalOptions">


    
        {{if ThemeOptions.BootstrapVersion =="v4"}}
        <div class="form-group">
            <label for="firstname" class="control-label">Content position:</label>
            <div class="control-cont">
             <!-- 
              <table class="responsive-setting-table small-table">
                <tr>
                  <th><i class="fa fa-desktop"></i></th>
                  <th><i class="fa fa-laptop"></i></th>
                  <th><i class="fa fa-tablet"></i></th>
                  <th><i class="fa fa-mobile"></i></th>
                  <th><i class="fa fa-mobile" style="transform:scale(0.7)"></i> </th>
                </tr>
                <tr>
                  <td> <select name="gap" class="dnnOptions form-control" data-name="align_self_xl" data-value="${align_self_xl}">
                      <option value="">Default</option>
                      <option value="justify-content-xl-start">Top</option>
                      <option value="justify-content-xl-center">Middle</option>
                      <option value="justify-content-xl-end">Bottom</option>
                    </select></td>
                  <td> <select name="gap" class="dnnOptions form-control" data-name="align_self_lg" data-value="${align_self_lg}">
                      <option value="">Default</option>
                      <option value="justify-content-lg-start">Top</option>
                      <option value="justify-content-lg-center">Middle</option>
                      <option value="justify-content-lg-end">Bottom</option>
                    </select></td>
                  <td> <select name="gap" class="dnnOptions form-control" data-name="align_self_md" data-value="${align_self_md}">
                      <option value="">Default</option>
                      <option value="justify-content-md-start">Top</option>
                      <option value="justify-content-md-center">Middle</option>
                      <option value="justify-content-md-end">Bottom</option>
                    </select></td>
                  <td> <select name="gap" class="dnnOptions form-control" data-name="align_self_sm" data-value="${align_self_sm}">
                      <option value="">Default</option>
                      <option value="justify-content-sm-start">Top</option>
                      <option value="justify-content-sm-center">Middle</option>
                      <option value="justify-content-sm-end">Bottom</option>
                    </select></td>
                  <td>  --><select name="gap" class="dnnOptions form-control" data-name="align_self_xs" data-value="${align_self_xs}">
                      <option value="">Default</option>
                      <option value="justify-content-start">Top</option>
                      <option value="justify-content-center">Middle</option>
                      <option value="justify-content-end">Bottom</option>
                    </select><!-- </td>
                </tr>
              </table> -->
             
            
            </div>
          </div>
        {{/if}}
        <div class="form-group">
          <label for="firstname" class="control-label">Extra class name:</label>
          <div class="control-cont">
            <input type="text" class="dnnOptions form-control" value="${classname}" data-name="classname">
          </div>
        </div>


    <div class="form-group hide">
      <label for="firstname" class="control-label">ID:</label>
      <div class="control-cont">
        <input type="text" class="dnnOptions form-control randomid" value="${id}" data-name="id">
      </div>
    </div>
  </div>
  <div role="tabpanel" class="tab-pane" id="DesignOptions">
    {{tmpl($data,options ={}) '#tmpl-design-options'}}
  </div>
  <div role="tabpanel" class="tab-pane" id="ResponsiveOptions">

    <div class="form-group">
      <label for="firstname" class="control-label">Width:</label>
      <div class="control-cont">
        <select class="dnnOptions form-control columnWidth" data-value="${col}" data-name="col">

            {{each(prop, val) 
              {"1/12":"1 column - 1/12",
              "2/12":"2 columns - 1/6",
              "3/12":"3 columns - 1/4",
              "4/12":"4 columns - 1/3",
              "5/12":"5 columns - 5/12",
              "6/12":"6 columns - 1/2",
              "7/12":"7 columns - 7/12",
              "8/12":"8 columns - 2/3",
              "9/12":"9 columns - 3/4",
              "10/12":"10 columns - 5/6",
              "11/12":"11 columns - 11/12",
              "12/12":"12 columns - 1/1",
              "1/5":"20% - 1/5",
              "2/5":"40% - 2/5",
              "3/5":"60% - 3/5",
              "4/5":"80% - 4/5"}
            }}
            <option value="${prop}">${val}</option>
            {{/each}}

        </select>
      </div>
    </div>
    <table class="responsive-setting-table">
      <tbody>
        <tr>
          <th>
            Device </th>
          <th>
            Offset </th>
          <th>
            Width </th>

          {{if ThemeOptions.BootstrapVersion =="v4"}}
          <th>
            Order </th>
          {{/if}}
        </tr>
        <tr>
          <td>
            <span title="Extra small">
                {{if ThemeOptions.BootstrapVersion =="v4"}} <b>Extra small</b> {{else}}<i class="fa fa-mobile"></i>{{/if}}
            </span>
          </td>
          <td>
            <select class="dnnOptions form-control" data-value="${offsetxs}" data-name="offsetxs">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) 
                  {"0":"No offset",
                  "1":"1 column - 1/12",
                  "2":"2 columns - 1/6",
                  "3":"3 columns - 1/4",
                  "4":"4 columns - 1/3",
                  "5":"5 columns - 5/12",
                  "6":"6 columns - 1/2",
                  "7":"7 columns - 7/12",
                  "8":"8 columns - 2/3",
                  "9":"9 columns - 3/4",
                  "10":"10 columns - 5/6",
                  "11":"11 columns - 11/12",
                  "12":"12 columns - 1/1",
                  "1/5":"20% - 1/5",
                  "2/5":"40% - 2/5",
                  "3/5":"60% - 3/5",
                  "4/5":"80% - 4/5"}
                }}
                {{if ThemeOptions.BootstrapVersion =="v4"}}
                <option value="offset-${prop}">${val}</option>
                {{else}}
                <option value="col-xl-offset-${prop}">${val}</option>
                {{/if}}
                {{/each}}
            </select> </td>
          <td>
            <select class="dnnOptions form-control" data-value="${sizexs}" data-name="sizexs">
              <option value="" style="color: #ccc;"></option>
              {{each(prop, val) 
                {"1":"1 column - 1/12",
                "2":"2 columns - 1/6",
                "3":"3 columns - 1/4",
                "4":"4 columns - 1/3",
                "5":"5 columns - 5/12",
                "6":"6 columns - 1/2",
                "7":"7 columns - 7/12",
                "8":"8 columns - 2/3",
                "9":"9 columns - 3/4",
                "10":"10 columns - 5/6",
                "11":"11 columns - 11/12",
                "12":"12 columns - 1/1",
                "1/5":"20% - 1/5",
                "2/5":"40% - 2/5",
                "3/5":"60% - 3/5",
                "4/5":"80% - 4/5"}
              }} 
              {{if ThemeOptions.BootstrapVersion =="v4"}}
              <option value="col-${prop}">${val}</option>
              {{else}}
              <option value="col-xs-${prop}">${val}</option>
              {{/if}}
              {{/each}}
            </select> </td>
            {{if ThemeOptions.BootstrapVersion =="v4"}}
            <td>
              <select class="dnnOptions form-control" data-value="${orderxs}" data-name="orderxs">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) ["first","last",1,2,3,4,5,6,7,8,9,10,12]}}
                <option value="order-${val}">${val}</option>
                {{/each}}
            </select> 
            </td>
            {{/if}}

        </tr>
        <tr>
          <td>
            <span title="Small">
                {{if ThemeOptions.BootstrapVersion =="v4"}} <b>Small</b>{{else}}<i class="fa fa-tablet"></i>{{/if}}
            </span>
          </td>
          <td>
            <select class="dnnOptions form-control" data-value="${offsetsm}" data-name="offsetsm">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) 
                  {"0":"No offset",
                  "1":"1 column - 1/12",
                  "2":"2 columns - 1/6",
                  "3":"3 columns - 1/4",
                  "4":"4 columns - 1/3",
                  "5":"5 columns - 5/12",
                  "6":"6 columns - 1/2",
                  "7":"7 columns - 7/12",
                  "8":"8 columns - 2/3",
                  "9":"9 columns - 3/4",
                  "10":"10 columns - 5/6",
                  "11":"11 columns - 11/12",
                  "12":"12 columns - 1/1",
                  "1/5":"20% - 1/5",
                  "2/5":"40% - 2/5",
                  "3/5":"60% - 3/5",
                  "4/5":"80% - 4/5"}
                }}
                {{if ThemeOptions.BootstrapVersion =="v4"}}
                <option value="offset-sm-${prop}">${val}</option>
                {{else}}
                <option value="col-sm-offset-${prop}">${val}</option>
                {{/if}}
                {{/each}}
  
  
  
            </select> </td>
          <td>
            <span class="vc_description">Default value from width attribute</span> </td>
            {{if ThemeOptions.BootstrapVersion =="v4"}}
            <td>
              <select class="dnnOptions form-control" data-value="${ordersm}" data-name="ordersm">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) ["first","last",1,2,3,4,5,6,7,8,9,10,12]}}
                <option value="order-sm-${val}">${val}</option>
                {{/each}}
            </select> 
            </td>
            {{/if}}


        </tr>
        <tr>
          <td>
            <span title="Medium">
                {{if ThemeOptions.BootstrapVersion =="v4"}} <b>Medium</b>{{else}}<i class="fa fa-laptop"></i>{{/if}}
            </span>
          </td>
          <td>
            <select class="dnnOptions form-control" data-value="${offsetmd}" data-name="offsetmd">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) 
                  {"0":"No offset",
                  "1":"1 column - 1/12",
                  "2":"2 columns - 1/6",
                  "3":"3 columns - 1/4",
                  "4":"4 columns - 1/3",
                  "5":"5 columns - 5/12",
                  "6":"6 columns - 1/2",
                  "7":"7 columns - 7/12",
                  "8":"8 columns - 2/3",
                  "9":"9 columns - 3/4",
                  "10":"10 columns - 5/6",
                  "11":"11 columns - 11/12",
                  "12":"12 columns - 1/1",
                  "1/5":"20% - 1/5",
                  "2/5":"40% - 2/5",
                  "3/5":"60% - 3/5",
                  "4/5":"80% - 4/5"}
                }}
                {{if ThemeOptions.BootstrapVersion =="v4"}}
                <option value="offset-md-${prop}">${val}</option>
                {{else}}
                <option value="col-md-offset-${prop}">${val}</option>
                {{/if}}
                {{/each}}
  
  
  
            </select> </td>
          <td>
            <select class="dnnOptions form-control" data-value="${sizemd}" data-name="sizemd">
              <option value="" style="color: #ccc;">Inherit from smaller</option>
              {{each(prop, val) 
                {"1":"1 column - 1/12",
                "2":"2 columns - 1/6",
                "3":"3 columns - 1/4",
                "4":"4 columns - 1/3",
                "5":"5 columns - 5/12",
                "6":"6 columns - 1/2",
                "7":"7 columns - 7/12",
                "8":"8 columns - 2/3",
                "9":"9 columns - 3/4",
                "10":"10 columns - 5/6",
                "11":"11 columns - 11/12",
                "12":"12 columns - 1/1",
                "1/5":"20% - 1/5",
                "2/5":"40% - 2/5",
                "3/5":"60% - 3/5",
                "4/5":"80% - 4/5"}
              }}
              <option value="col-md-${prop}">${val}</option>
              {{/each}}
            </select> </td>
            {{if ThemeOptions.BootstrapVersion =="v4"}}
            <td>
              <select class="dnnOptions form-control" data-value="${ordermd}" data-name="ordermd">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) ["first","last",1,2,3,4,5,6,7,8,9,10,12]}}
                <option value="order-md-${val}">${val}</option>
                {{/each}}
            </select> 
            </td>
            {{/if}}

        </tr>
        <tr>
          <td>
            <span title="Large">
                {{if ThemeOptions.BootstrapVersion =="v4"}} <b>Large</b>{{else}}<i class="fa fa-desktop"></i>{{/if}}
            </span>
          </td>
          <td>
            <select class="dnnOptions form-control" data-value="${offsetlg}" data-name="offsetlg">
              <option value="" style="color: #ccc;">Inherit from smaller</option>
              {{each(prop, val) 
                {"0":"No offset",
                "1":"1 column - 1/12",
                "2":"2 columns - 1/6",
                "3":"3 columns - 1/4",
                "4":"4 columns - 1/3",
                "5":"5 columns - 5/12",
                "6":"6 columns - 1/2",
                "7":"7 columns - 7/12",
                "8":"8 columns - 2/3",
                "9":"9 columns - 3/4",
                "10":"10 columns - 5/6",
                "11":"11 columns - 11/12",
                "12":"12 columns - 1/1",
                "1/5":"20% - 1/5",
                "2/5":"40% - 2/5",
                "3/5":"60% - 3/5",
                "4/5":"80% - 4/5"}
              }}
              {{if ThemeOptions.BootstrapVersion =="v4"}}
              <option value="offset-lg-${prop}">${val}</option>
              {{else}}
              <option value="col-lg-offset-${prop}">${val}</option>
              {{/if}}
              {{/each}}

            </select> </td>
          <td>
            <select class="dnnOptions form-control" data-value="${sizelg}" data-name="sizelg">
              <option value="" style="color: #ccc;">Inherit from smaller</option>
              {{each(prop, val) 
                {"1":"1 column - 1/12",
                "2":"2 columns - 1/6",
                "3":"3 columns - 1/4",
                "4":"4 columns - 1/3",
                "5":"5 columns - 5/12",
                "6":"6 columns - 1/2",
                "7":"7 columns - 7/12",
                "8":"8 columns - 2/3",
                "9":"9 columns - 3/4",
                "10":"10 columns - 5/6",
                "11":"11 columns - 11/12",
                "12":"12 columns - 1/1",
                "1/5":"20% - 1/5",
                "2/5":"40% - 2/5",
                "3/5":"60% - 3/5",
                "4/5":"80% - 4/5"}
              }}
              <option value="col-lg-${prop}">${val}</option>
              {{/each}}
 
            </select> </td>
            {{if ThemeOptions.BootstrapVersion =="v4"}}
            <td>
              <select class="dnnOptions form-control" data-value="${orderlg}" data-name="orderlg">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) ["first","last",1,2,3,4,5,6,7,8,9,10,12]}}
                <option value="order-lg-${val}">${val}</option>
                {{/each}}
            </select> 
            </td>
            {{/if}}

        </tr>
        {{if ThemeOptions.BootstrapVersion =="v4"}}
        <tr>
            <td>
              <span title="Large">
               <b>Extra large</b>
              </span>
            </td>
            <td>
              <select class="dnnOptions form-control" data-value="${offsetxl}" data-name="offsetxl">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) 
                  {"0":"No offset",
                  "1":"1 column - 1/12",
                  "2":"2 columns - 1/6",
                  "3":"3 columns - 1/4",
                  "4":"4 columns - 1/3",
                  "5":"5 columns - 5/12",
                  "6":"6 columns - 1/2",
                  "7":"7 columns - 7/12",
                  "8":"8 columns - 2/3",
                  "9":"9 columns - 3/4",
                  "10":"10 columns - 5/6",
                  "11":"11 columns - 11/12",
                  "12":"12 columns - 1/1",
                  "1/5":"20% - 1/5",
                  "2/5":"40% - 2/5",
                  "3/5":"60% - 3/5",
                  "4/5":"80% - 4/5"}
                }}
                <option value="offset-xl-${prop}">${val}</option>
                {{/each}}
  
              </select> 
    
            
            
            </td>
            <td>
              <select class="dnnOptions form-control" data-value="${sizexl}" data-name="sizexl">
                <option value="" style="color: #ccc;">Inherit from smaller</option>
                {{each(prop, val) 
                  {"1":"1 column - 1/12",
                  "2":"2 columns - 1/6",
                  "3":"3 columns - 1/4",
                  "4":"4 columns - 1/3",
                  "5":"5 columns - 5/12",
                  "6":"6 columns - 1/2",
                  "7":"7 columns - 7/12",
                  "8":"8 columns - 2/3",
                  "9":"9 columns - 3/4",
                  "10":"10 columns - 5/6",
                  "11":"11 columns - 11/12",
                  "12":"12 columns - 1/1",
                  "1/5":"20% - 1/5",
                  "2/5":"40% - 2/5",
                  "3/5":"60% - 3/5",
                  "4/5":"80% - 4/5"}
                }}
                <option value="col-xl-${prop}">${val}</option>
                {{/each}}
              </select> </td>
              <td>
                <select class="dnnOptions form-control" data-value="${orderxl}" data-name="orderxl">
                  <option value="" style="color: #ccc;">Inherit from smaller</option>
                  {{each(prop, val) ["first","last",1,2,3,4,5,6,7,8,9,10,12]}}
                  <option value="order-xl-${val}">${val}</option>
                  {{/each}}
                    
                </select> 
              </td>
          </tr>
          {{/if}}

      </tbody>
    </table>
  </div>
  <div role="tabpanel" class="tab-pane" id="CustomCSS">
    {{tmpl($data,options ={}) '#tmpl-custom-css'}}
  </div>
  <div role="tabpanel" class="tab-pane" id="HideElement">
      {{tmpl($data,options ={}) '#tmpl-hide-element'}}
    </div>
    {{if ThemeOptions.BootstrapVersion =="v4"}}
    <div role="tabpanel" class="tab-pane" id="Animation">
        {{tmpl($data,options ={}) '#tmpl-animation2'}}
    </div>
    {{/if}}
  

</div>
