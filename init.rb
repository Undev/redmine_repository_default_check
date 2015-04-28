require 'redmine'

Rails.application.paths["app/overrides"] ||= []
Rails.application.paths["app/overrides"] << File.expand_path("../app/overrides", __FILE__)

require 'repo_default_check'

Redmine::Plugin.register :redmine_repository_default_check do
  name 'Redmine Default Repository Check Plugin'
  author 'Undev'
  description 'This plugin checks if the main repository is set for a Redmine project and other repositories have identifiers.'
  version '1.0.0'
  url 'https://github.com/Undev/redmine_repository_default_check'
  author_url 'https://github.com/Undev'
  requires_redmine :version_or_higher => '2.0.0'
end
