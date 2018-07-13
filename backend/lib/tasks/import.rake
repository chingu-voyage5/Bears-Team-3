require 'csv'

namespace :import do

  desc "Import organizations from CSV file"
  organizations = []
  task organizations: :environment do
    CSV.foreach("./organizations.csv", headers: true) do |row|
      organizations << Organization.new(row.to_h)
    end
    organizations.each do |org|
      org.save
    end
  end
end
