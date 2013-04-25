# Redmine Issue Fields Inheritance
Is used for copying some fields from previous issue to next.

## Functionality
* Editable fields
* Fields are copied when creating a new issue
* Fields are copied when creating a new sub-issue

## The source of the plugin
You can get it from Github https://github.com/twinslash/redmine_issue_fields_inheritance.git

## Installation
To install the plugin run clone from plugin directory (REDMINE/plugins):
```bash
cd REDMINE/plugins
git clone https://github.com/twinslash/redmine_issue_fields_inheritance.git
```

Restart your Redmine server

## Uninstallation
Delete folder with the plugin
```bash
cd REDMINE/plugins
rm redmine_issue_fields_inheritance -rf
```

Restart your Redmine server

## Settings
After installation plugin will not copy any fields, so you must go to the settings page and check what you need. Such fields are available to you now:
* Tracker
* Parent issue
* Category
* Assigned to
* Priority
* Version
* Status
* Done ratio

## Usage
Go to plugin settings:
![Settings](/images/settings.png)

Than create issue and click on 'Save & continue' button
![Issue1](/images/issue1.png)

In new form fields 'Tracker', 'Parent Issue', 'Status', 'Done ratio' are copied from previous and 'Category', 'Assigned to', 'Priority', 'Version' are not.
![Issue2](/images/issue2.png)
