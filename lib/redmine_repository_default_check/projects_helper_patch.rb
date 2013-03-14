module RedmineRepositoryDefaultCheck
  module ProjectsHelperPatch
    extend ActiveSupport::Concern

    def repositories_warnings
      warnings = []

      if @project.repositories.any? && @project.repository.nil?
        warnings << l(:text_default_repository_not_found)
      end

      if @project.repositories.where(
          'is_default = ? and (identifier is null or identifier = ?)', false, '').any?

        warnings << l(:text_repository_wo_identifier)
      end

      if warnings.any?
        content_tag :div, :class => 'warning' do
          content_tag :p, warnings.join('<br/>').html_safe
        end
      end
    end
  end
end

unless ProjectsHelper.included_modules.include?(RedmineRepositoryDefaultCheck::ProjectsHelperPatch)
  ProjectsHelper.send :include, RedmineRepositoryDefaultCheck::ProjectsHelperPatch
end

