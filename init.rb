require 'redmine'
require 'redmine_subtask_fields'

Redmine::Plugin.register :redmine_subtask_fields do
  name 'Redmine Subtask Fields plugin'
  author 'Ilya Kolodnik'
  description 'This plugin changes some fields when creating a subtask'
  version '0.0.1'
  author_url 'mailto:ilya.kolodnik@gmail.com'
end
