class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.name :string
      t.address_1 :string
      t.address_2 :string
      t.city :string
      t.state :string
      t.zip :string
      t.phone :string
      t.blurb :string
      t.url :string
      t.donate_url :string
      t.info_email :string
    end
  end
end
