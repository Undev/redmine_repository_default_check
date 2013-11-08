require 'redmine'

Rails.application.paths["app/overrides"] ||= []
Rails.application.paths["app/overrides"] << File.expand_path("../app/overrides", __FILE__)

require 'repo_default_check'

Redmine::Plugin.register :redmine_repository_default_check do
  name 'Redmine repository default check'
  author 'Undev'
  description 'Redmine plugin checks that a project has the default repository'
  version '0.1.0'
  url 'https://github.com/Undev/redmine_repository_default_check'
  author_url 'https://github.com/Undev'
  requires_redmine :version_or_higher => '2.0.0'
end
