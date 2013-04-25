require 'patches/subtask_fields_issue_helper_patch'
require 'patches/previous_issue_params'
Rails.configuration.to_prepare do
  IssuesHelper.send(:include, SubtaskFieldsIssueHelperPatch)
  IssuesController.send(:include, PreviousIssueParams)
end
