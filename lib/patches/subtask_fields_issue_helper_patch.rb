module SubtaskFieldsIssueHelperPatch
  def self.included(base)
    base.class_eval do

      def link_to_new_subtask(issue)
        attrs = {
          :parent_issue_id => issue,
          :category_id => issue.category_id,
          :fixed_version_id => issue.fixed_version_id
        }
        link_to(l(:button_add), new_project_issue_path(issue.project, :issue => attrs))
      end

    end
  end

end
