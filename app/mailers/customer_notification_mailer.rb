class CustomerNotificationMailer < ApplicationMailer
  def started(zgloszenie_id, user_id)
    @zgloszenie = Zgloszenie.find(zgloszenie_id)
    user = User.find(user_id)
    mail(subject: default_i18n_subject, to: user.email) 
  end

  def inprogress(zgloszenie_id, user_id)
    @zgloszenie = Zgloszenie.find(zgloszenie_id)
    user = User.find(user_id)
    mail(subject: default_i18n_subject, to: user.email) 
  end

  def finished(zgloszenie_id, user_id)
    @zgloszenie = Zgloszenie.find(zgloszenie_id)
    user = User.find(user_id)
    mail(subject: default_i18n_subject, to: user.email) 
  end
end
