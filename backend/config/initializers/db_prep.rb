require 'rake'

Rake::Task['db:drop']
Rake::Task['db:create']
Rake::Task['db:migrate']

Rails.application.load_tasks # <---
Rake::Task['import:organizations'].invoke
