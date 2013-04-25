require 'redmine'
require 'redmine_issue_fields_inheritance'

Redmine::Plugin.register :redmine_issue_fields_inheritance do
  name 'Redmine Issue Fields Inheritance'
  author '//Twinslash'
  description 'This plugin saves some fields from previous issue to next'
  version '0.0.4'
  url         'https://github.com/twinslash/redmine_issue_fields_inheritance'
  author_url  'http://twinslash.com'
  settings :default => {'tracker_id' => false,
                        'parent_issue_id' => false,
                        'category_id' => false,
                        'assigned_to_id' => false,
                        'priority_id' => false,
                        'fixed_version_id' => false,
                        'status_id' => false,
                        'done_ratio' => false},
           :partial => 'settings/issue_fields_inheritance_settings'

end
