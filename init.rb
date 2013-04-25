require 'redmine'
require 'redmine_subtask_fields'

Redmine::Plugin.register :redmine_subtask_fields do
  name 'Redmine Subtask Fields plugin'
  author 'Ilya Kolodnik'
  description 'This plugin saves some fields from previous issue to next'
  version '0.0.4'
  author_url 'mailto:ilya.kolodnik@gmail.com'
  settings :default => {'tracker_id' => false,
                        'parent_issue_id' => false,
                        'category_id' => false,
                        'assigned_to_id' => false,
                        'priority_id' => false,
                        'fixed_version_id' => false,
                        'status_id' => false,
                        'done_ratio' => false},
           :partial => 'settings/subtask_fields_settings'

end
