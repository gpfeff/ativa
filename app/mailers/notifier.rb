class Notifier < ActionMailer::Base
  default from: "practicestella@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.subscription_confirmation.subject
  #
 
  def subscription_confirmation(user, project)
    @user = user
    @project = project
    @greeting = "Hi"

  # Change the 'to:' section to your partner's name and email
  mail( to: "#{user.name} <#{user.email}>",
        subject: "Subscribed to #{project.name.capitalize} | Ativa")
  
  end

def unsubscribe(user, project)
    @user = user
    @project = project
    @greeting = "Hi"

  # Change the 'to:' section to your partner's name and email
  mail( to: "#{user.name} <#{user.email}>",
        subject: "Unsubscribe to #{project.name.capitalize} | Ativa")
  end

def new_post(user, project)
  @user = user
  @project = project

  mail( to: "#{user.name} <#{user.email}>",
        subject: "New Post to #{project.name.capitalize} | Ativa")
  end




end
