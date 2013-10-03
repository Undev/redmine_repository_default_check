# Redmine repository default check

[![Build Status](https://travis-ci.org/Undev/redmine_repository_default_check.png)](https://travis-ci.org/Undev/redmine_repository_default_check)
[![Code Climate](https://codeclimate.com/github/Undev/redmine_repository_default_check.png)](https://codeclimate.com/github/Undev/redmine_repository_default_check)

Redmine plugin checks that a project has the default repository.

## Installation

1. Copy plugin directory into #{RAILS_ROOT}/plugins.
If you are downloading the plugin directly from GitHub,
you can do so by changing into your plugin directory and issuing a command like

        git clone git://github.com/Undev/redmine_repository_default_check.git

2. Restart Redmine

## Usage

Plugin checks that default repository is present, and other (not default) repositories has identifiers.
Otherwise you will see appropriate warnings in repository tab on project settings page.

## Testing

    rake redmine:plugins:test NAME=redmine_repository_default_check RAILS_ENV=test

## Compatibility

This version supports only redmine 2.x.
