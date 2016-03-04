require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet_blacksmith/rake_tasks'

PuppetLint.configuration.fail_on_warnings
PuppetLint.configuration.send('80chars-check')
PuppetLint.configuration.send('autoloader_layout-check')
PuppetLint.configuration.send('class_inherits_from_params_class-check')
PuppetLint.configuration.ignore_paths = ["spec/**/*.pp", "pkg/**/*.pp"]

task :test => [:lint, :spec]
