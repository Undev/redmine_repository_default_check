require_dependency 'application_controller'

module RepoDefaultCheck::ApplicationControllerPatch
  extend ActiveSupport::Concern

  included do
    lazy_helper :repo_default_check
  end
end

unless ApplicationController.included_modules.include? RepoDefaultCheck::ApplicationControllerPatch
  ApplicationController.send :include, RepoDefaultCheck::ApplicationControllerPatch
end
