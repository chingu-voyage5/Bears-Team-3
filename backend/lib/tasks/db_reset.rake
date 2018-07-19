namespace :db do

  desc 'Drop, create, migrate then seed the development database'
  task refresh: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
    puts 'Refresh completed.'
  end
end
