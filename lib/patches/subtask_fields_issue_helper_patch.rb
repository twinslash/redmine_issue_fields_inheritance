module SubtaskFieldsIssueHelperPatch
  def self.included(base)
    base.class_eval do

      def link_to_new_subtask(issue)
        attrs = {
                :tracker_id => issue.tracker_id,
                :parent_issue_id => issue.parent_issue_id,
                :category_id => issue.category_id,
                :assigned_to_id => issue.assigned_to_id,
                :priority_id => issue.priority_id,
                :fixed_version_id => issue.fixed_version_id,
                :status_id => issue.status_id,
                :done_ratio => issue.done_ratio
        }.reject {|k,v| v.nil? || !Setting.plugin_redmine_issue_fields_inheritance[k]}
        link_to(l(:button_add), new_project_issue_path(issue.project, :issue => attrs))
      end

    end
  end

end
