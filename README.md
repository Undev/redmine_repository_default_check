# Redmine repository default check

Redmine plugin checks that a project has the default repository.

## Installation

1. Copy plugin directory into #{RAILS_ROOT}/plugins.
If you are downloading the plugin directly from GitHub,
you can do so by changing into your plugin directory and issuing a command like

        git clone git://github.com/Undev/redmine_repository_default_check.git

3. Restart Redmine

## Usage


## Testing

    rake redmine:plugins:test NAME=redmine_repository_default_check RAILS_ENV=test

## Compatibility

This version supports only redmine 2.x.
