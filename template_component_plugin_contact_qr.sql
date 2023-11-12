prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0-20'
,p_default_workspace_id=>3032592141610074476
,p_default_application_id=>28888
,p_default_id_offset=>0
,p_default_owner=>'WKSP_AHMADTECH'
);
end;
/
 
prompt APPLICATION 28888 - Plug-IN Palace
--
-- Application Export:
--   Application:     28888
--   Name:            Plug-IN Palace
--   Date and Time:   00:06 Sunday November 12, 2023
--   Exported By:     FAROOQ.ORACLE47@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 15511623764443600433
--   Manifest End
--   Version:         23.2.0-20
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/contact_qr
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(15511623764443600433)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'CONTACT_QR'
,p_display_name=>'Contact QR'
,p_supported_component_types=>'PARTIAL'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    .qr-code-container {',
'      text-align: center;',
'    }',
'  </style>',
'  {if EMP_NAME/}',
'  {if EMP_CELL/}',
'  {if EMP_EMAIL/}',
'<div class="qr-code-container">',
'  <img src="https://api.qrserver.com/v1/create-qr-code/?data=BEGIN%3AVCARD%0AVERSION%3A3.0%0AFN%3A#EMP_NAME#%0ATEL%3A#EMP_CELL#%0AEMAIL%3A#EMP_EMAIL#%0AEND%3AVCARD%0A&size=#X_SIZE#x#Y_SIZE#" alt="QR Code">',
'</div>',
'{endif/}',
'{endif/}',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15511624007212600450)
,p_plugin_id=>wwv_flow_imp.id(15511623764443600433)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'EMP_CELL'
,p_prompt=>'Emp Cell'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15511624440463600450)
,p_plugin_id=>wwv_flow_imp.id(15511623764443600433)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'EMP_EMAIL'
,p_prompt=>'Emp Email'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15511624834122600450)
,p_plugin_id=>wwv_flow_imp.id(15511623764443600433)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'EMP_NAME'
,p_prompt=>'Emp Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15511625259469600450)
,p_plugin_id=>wwv_flow_imp.id(15511623764443600433)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'X_SIZE'
,p_prompt=>'X Size'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(15511625678294600451)
,p_plugin_id=>wwv_flow_imp.id(15511623764443600433)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'Y_SIZE'
,p_prompt=>'Y Size'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
