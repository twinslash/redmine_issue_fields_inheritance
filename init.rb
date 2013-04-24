require 'redmine'
require 'redmine_subtask_fields'

Redmine::Plugin.register :redmine_subtask_fields do
  name 'Redmine Subtask Fields plugin'
  author 'Ilya Kolodnik'
  description 'This plugin changes some fields when creating a subtask'
  version '0.0.1'
  author_url 'mailto:ilya.kolodnik@gmail.com'
  settings :default => {'tracker_id' => true,
                        'parent_issue_id' => true,
                        'category_id' => true,
                        'assigned_to_id' => true,
                        'priority_id' => true,
                        'fixed_version_id' => true,
                        'status_id' => true,
                        'done_ratio' => true},
           :partial => 'settings/subtask_fields_settings'

end
