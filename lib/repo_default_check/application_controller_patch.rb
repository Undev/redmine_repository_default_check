require_dependency 'application_controller'

module RepoDefaultCheck::ApplicationControllerPatch
  extend ActiveSupport::Concern

  included do
    before_filter :include_repo_default_check
  end

  # A way to make plugin helpers available in all views
  def include_repo_default_check
    unless _helpers.included_modules.include? RepoDefaultCheckHelper
      self.class.helper RepoDefaultCheckHelper
    end
    true
  end
end

unless ApplicationController.included_modules.include? RepoDefaultCheck::ApplicationControllerPatch
  ApplicationController.send :include, RepoDefaultCheck::ApplicationControllerPatch
end
