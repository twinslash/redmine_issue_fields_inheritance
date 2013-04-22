require 'patches/subtask_fields_issue_helper_patch'

Rails.configuration.to_prepare do
  IssuesHelper.send(:include, SubtaskFieldsIssueHelperPatch)
end
