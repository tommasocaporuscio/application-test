class UserMailer < ActionMailer::Base
  default from: "tommasocaporuscio@gmail.com"

  def welcome_email(user)
     @anagrafica = user
     attachments["#{@anagrafica.allegato_test_book.name}"] = File.read("public/system/dragonfly/development/esame_requisiti/#{@anagrafica.allegato_test_book_name}")
    
    @url  = "http://www.svi-webdesign.com"
    mail(:to => user.email, :subject => "Benvenuto nel mio sito")
  end
end

