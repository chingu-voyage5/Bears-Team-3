class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name  
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :blurb
      t.string :url
      t.string :donate_url
      t.string :info_email
    end
  end
end
