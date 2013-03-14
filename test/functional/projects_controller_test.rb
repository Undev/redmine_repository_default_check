require File.expand_path('../../test_helper', __FILE__)

class ProjectsControllerTest < ActionController::TestCase
  fixtures :projects, :versions, :users, :roles, :members, :member_roles, :issues, :journals, :journal_details,
           :trackers, :projects_trackers, :issue_statuses, :enabled_modules, :enumerations, :boards, :messages,
           :attachments, :custom_fields, :custom_values, :time_entries

  def setup
    @controller = ProjectsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    @request.session[:user_id] = 1
    Setting.default_language = 'en'
  end

  def test_default_repository_not_found
    Repository::Subversion.create!(:project_id => 1, :url => 'file:///test', :identifier => 'a')
    Repository::Subversion.create!(:project_id => 1, :url => 'file:///test', :identifier => 'b')

    Repository.update_all(['is_default = ?', false])

    get :settings, :id => 1
    assert_response :success
    warning = I18n.t(:text_default_repository_not_found)
    assert_match warning, @response.body
  end

  def test_repository_wo_identifier
    Repository::Subversion.create!(:project_id => 1, :url => 'file:///test', :identifier => nil)

    Repository.update_all(['is_default = ?', false])

    get :settings, :id => 1
    assert_response :success
    warning = I18n.t(:text_repository_wo_identifier)
    assert_match warning, @response.body
  end
end
