{#

OPNsense® is Copyright © 2014 – 2017 by Deciso B.V.
This file is Copyright © 2017 by Fabian Franz
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1.  Redistributions of source code must retain the above copyright notice,
    this list of conditions and the following disclaimer.

2.  Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY,
OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

#}

    <!-- Navigation bar -->
    <ul class="nav nav-tabs" data-tabs="tabs" id="maintabs">
        <li class="active"><a data-toggle="tab" href="#general">{{ lang._('General') }}</a></li>
        <li><a data-toggle="tab" href="#networks">{{ lang._('Networks') }}</a></li>
        <li><a data-toggle="tab" href="#interfaces">{{ lang._('Interfaces') }}</a></li>
        <li><a data-toggle="tab" href="#prefixlists">{{ lang._('Prefix Lists') }}</a></li>
    </ul>
    <div class="tab-content content-box tab-content">
        <div id="general" class="tab-pane fade in active">
            <div class="content-box" style="padding-bottom: 1.5em;">
                {{ partial("layout_partials/base_form",['fields':generalForm,'id':'frm_ospf_settings'])}}

                <div class="col-md-12">
                    <hr />
                    <button class="btn btn-primary"  id="saveAct" type="button"><b>{{ lang._('Save') }}</b></button>
                </div>
            </div>
        </div>

    <!-- Tab: Networks -->
    <div id="networks" class="tab-pane fade in">
      <table id="grid-networks" class="table table-responsive" data-editDialog="DialogEditNetwork">
          <thead>
              <tr>
                  <th data-column-id="enabled" data-type="string" data-formatter="rowtoggle">{{ lang._('Enabled') }}</th>
                  <th data-column-id="ipaddr" data-type="string" data-visible="true">{{ lang._('Network Address') }}</th>
                  <th data-column-id="netmask" data-type="string" data-visible="true">{{ lang._('Mask') }}</th>
                  <th data-column-id="area" data-type="string" data-visible="true">{{ lang._('Area') }}</th>
                  <th data-column-id="uuid" data-type="string" data-identifier="true" data-visible="false">{{ lang._('ID') }}</th>
                  <th data-column-id="commands" data-formatter="commands" data-sortable="false">{{ lang._('Commands') }}</th>
              </tr>
          </thead>
          <tbody>
          </tbody>
          <tfoot>
              <tr>
                  <td colspan="5"></td>
                  <td>
                      <button data-action="add" type="button" class="btn btn-xs btn-default"><span class="fa fa-plus"></span></button>
                      <!-- <button data-action="deleteSelected" type="button" class="btn btn-xs btn-default"><span class="fa fa-trash-o"></span></button> -->
                  </td>
              </tr>
          </tfoot>
      </table>
    </div>

    <!-- Tab: Interfaces -->
    <div id="interfaces" class="tab-pane fade in">
        <table id="grid-interfaces" class="table table-responsive" data-editDialog="DialogEditInterface">
            <thead>
                <tr>
                    <th data-column-id="enabled" data-type="string" data-formatter="rowtoggle">{{ lang._('Enabled') }}</th>
                    <th data-column-id="interfacename" data-type="string" data-visible="true">{{ lang._('Interface Name') }}</th>
                    <th data-column-id="networktype" data-type="string" data-visible="true">{{ lang._('Network Type') }}</th>
                    <th data-column-id="authtype" data-type="string" data-visible="true">{{ lang._('Authentication Type') }}</th>
                    <th data-column-id="uuid" data-type="string" data-identifier="true" data-visible="false">{{ lang._('ID') }}</th>
                    <th data-column-id="commands" data-formatter="commands" data-sortable="false">{{ lang._('Commands') }}</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="5"></td>
                    <td>
                        <button data-action="add" type="button" class="btn btn-xs btn-default"><span class="fa fa-plus"></span></button>
                        <!-- <button data-action="deleteSelected" type="button" class="btn btn-xs btn-default"><span class="fa fa-trash-o"></span></button> -->
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
    <div id="prefixlists" class="tab-pane fade in">
        <table id="grid-prefixlists" class="table table-responsive" data-editDialog="DialogEditPrefixLists">
            <thead>
                <tr>
                    <th data-column-id="enabled" data-type="string" data-formatter="rowtoggle" data-sortable="false">{{ lang._('Enabled') }}</th>
                    <th data-column-id="name" data-type="string" data-visible="true" data-sortable="true">{{ lang._('Name') }}</th>
                    <th data-column-id="seqnumber" data-type="string" data-visible="true" data-sortable="true">{{ lang._('Secquence Number') }}</th>
                    <th data-column-id="action" data-type="string" data-visible="true" data-sortable="false">{{ lang._('Action') }}</th>
                    <th data-column-id="network" data-type="string" data-visible="true" data-sortable="false">{{ lang._('Network') }}</th>
                    <th data-column-id="uuid" data-type="string" data-identifier="true" data-visible="false">{{ lang._('ID') }}</th>
                    <th data-column-id="commands" data-formatter="commands" data-sortable="false">{{ lang._('Commands') }}</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="5"></td>
                <td>
                    <button data-action="add" type="button" class="btn btn-xs btn-default"><span class="fa fa-plus"></span></button>
                    <!-- <button data-action="deleteSelected" type="button" class="btn btn-xs btn-default"><span class="fa fa-trash-o"></span></button> -->
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
    </div>

<script type="text/javascript">
$( document ).ready(function() {
  var data_get_map = {'frm_ospf_settings':"/api/frr/ospfsettings/get"};
  mapDataToFormUI(data_get_map).done(function(data){
      formatTokenizersUI();
      $('.selectpicker').selectpicker('refresh');
  });
  ajaxCall(url="/api/frr/service/status", sendData={}, callback=function(data,status) {
      updateServiceStatusUI(data['status']);
  });

  // link save button to API set action
  $("#saveAct").click(function(){
      saveFormToEndpoint(url="/api/frr/ospfsettings/set",formid='frm_ospf_settings',callback_ok=function(){
        ajaxCall(url="/api/frr/service/reconfigure", sendData={}, callback=function(data,status) {
          ajaxCall(url="/api/frr/service/status", sendData={}, callback=function(data,status) {
            updateServiceStatusUI(data['status']);
          });
        });
      });
  });
  $("#grid-networks").UIBootgrid(
    { 'search':'/api/frr/ospfsettings/searchNetwork',
      'get':'/api/frr/ospfsettings/getNetwork/',
      'set':'/api/frr/ospfsettings/setNetwork/',
      'add':'/api/frr/ospfsettings/addNetwork/',
      'del':'/api/frr/ospfsettings/delNetwork/',
      'toggle':'/api/frr/ospfsettings/toggleNetwork/',
      'options':{selection:false, multiSelect:false}
    }
  );
  $("#grid-interfaces").UIBootgrid(
    { 'search':'/api/frr/ospfsettings/searchInterface',
      'get':'/api/frr/ospfsettings/getInterface/',
      'set':'/api/frr/ospfsettings/setInterface/',
      'add':'/api/frr/ospfsettings/addInterface/',
      'del':'/api/frr/ospfsettings/delInterface/',
      'toggle':'/api/frr/ospfsettings/toggleInterface/',
      'options':{selection:false, multiSelect:false}
    }
  );
  $("#grid-prefixlists").UIBootgrid(
    { 'search':'/api/frr/ospfsettings/searchPrefixlist',
      'get':'/api/frr/ospfsettings/getPrefixlist/',
      'set':'/api/frr/ospfsettings/setPrefixlist/',
      'add':'/api/frr/ospfsettings/addPrefixlist/',
      'del':'/api/frr/ospfsettings/delPrefixlist/',
      'toggle':'/api/frr/ospfsettings/togglePrefixlist/',
      'options':{selection:false, multiSelect:false}
    }
  );

    });
</script>

{{ partial("layout_partials/base_dialog",['fields':formDialogEditNetwork,'id':'DialogEditNetwork','label':lang._('Edit Network')])}}
{{ partial("layout_partials/base_dialog",['fields':formDialogEditInterface,'id':'DialogEditInterface','label':lang._('Edit Interface')])}}
{{ partial("layout_partials/base_dialog",['fields':formDialogEditPrefixLists,'id':'DialogEditPrefixLists','label':lang._('Edit Prefix Lists')])}}