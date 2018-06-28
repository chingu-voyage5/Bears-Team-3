require 'csv'

namespace :import do

  desc "Import organizations from CSV file"
  task organizations: :environment do
    CSV.foreach("./organizations.csv") do |row|
      p row
    end
  end
end
