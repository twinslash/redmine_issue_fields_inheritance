module PreviousIssueParams

  def self.included(base)
    base.send(:include, InstanceMethods)
    base.class_eval do
      alias_method_chain :create, :previous_params
    end
  end

  module InstanceMethods
    def create_with_previous_params
      if params[:continue]
        call_hook(:controller_issues_new_before_save, { :params => params, :issue => @issue })
        @issue.save_attachments(params[:attachments] || (params[:issue] && params[:issue][:uploads]))
        if @issue.save
          call_hook(:controller_issues_new_after_save, { :params => params, :issue => @issue})
          respond_to do |format|
            format.html {
              render_attachment_warning_if_needed(@issue)
              flash[:notice] = l(:notice_issue_successful_create, :id => view_context.link_to("##{@issue.id}", issue_path(@issue), :title => @issue.subject))
              attrs = {
                :tracker_id => @issue.tracker_id,
                :parent_issue_id => @issue.parent_issue_id,
                :category_id => @issue.category_id,
                :assigned_to_id => @issue.assigned_to_id,
                :priority_id => @issue.priority_id,
                :fixed_version_id => @issue.fixed_version_id,
                :status_id => @issue.status_id,
                :done_ratio => @issue.done_ratio
              }.reject {|k,v| v.nil? || !Setting.plugin_redmine_subtask_fields[k]}
              redirect_to new_project_issue_path(@issue.project, :issue => attrs)
            }
            format.api  { render :action => 'show', :status => :created, :location => issue_url(@issue) }
          end
        else
          respond_to do |format|
            format.html { render :action => 'new' }
            format.api  { render_validation_errors(@issue) }
          end
        end
      else
        create_without_previous_params
      end
    end

  end

end
