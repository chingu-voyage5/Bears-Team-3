class RemovePasswordDigestFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :organizations, :password, :string
  end
end
