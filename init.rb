require 'redmine'

Redmine::Plugin.register :redmine_repository_default_check do
  name 'Redmine repository default check'
  author 'Danil Tashkinov'
  description 'Redmine plugin checks that a project has the default repository'
  version '0.0.1'
  url 'https://github.com/Undev/redmine_repository_default_check'
  author_url 'https://github.com/Undev'
  requires_redmine :version_or_higher => '2.0.0'
end
