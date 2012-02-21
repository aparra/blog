class Notifier < ActionMailer::Base
  default from: "from@example.com"

  def email_friend(article, sender_name, receiver_email)
    @article = article
    @sender_name = sender_name
    
    attachments["rails.png"] = File.read(Rails.root.join("app/assets/images/rails.png"))
    mail :to => receiver_email, :subject => 'Interesting Article'
  end
end