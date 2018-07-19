namespace :db do

  desc 'Drop, create, migrate then seed the development database'
  task refresh: [ 'db:create', 'db:migrate', 'import:organizations' ] do
    puts 'Refresh completed.'
  end
end
