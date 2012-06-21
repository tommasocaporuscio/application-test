class AddColToAnagraficas < ActiveRecord::Migration
  def change
     add_column :anagraficas, :allegato_test_book_uid,  :string
    add_column :anagraficas, :allegato_test_book_name, :string
  end
end
