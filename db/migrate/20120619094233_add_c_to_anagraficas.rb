class AddCToAnagraficas < ActiveRecord::Migration
  def change
    add_column :anagraficas, :email, :string
    add_column :anagraficas, :login, :string
  end
end
