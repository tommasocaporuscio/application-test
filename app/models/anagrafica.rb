class Anagrafica < ActiveRecord::Base

  image_accessor :allegato_test_book do
    storage_opts do |a|
      {
        :path => "esame_requisiti/#{allegato_test_book_name}",
        :other => 'option'
      }
    end
  end
end
