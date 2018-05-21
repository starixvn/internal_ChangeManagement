require 'layout_header_hook'

Redmine::Plugin.register :nexcel_cm_enhances do
  name 'Nexcel Redmine Enhances plugin for Changes Management'
  author 'Hunter.Tran'
  description 'This is a plugin for fix bugs and enhance in Changes Managements'
  version '1.0.0'
  requires_redmine version_or_higher: '3.4.5'
end
