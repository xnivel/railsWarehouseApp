class RemovePasswordFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :password, :string
  end
end
