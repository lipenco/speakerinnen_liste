class NotificationsMailer < ActionMailer::Base
  default :from => "immerwahrclara@gmail.com"
  default :to => "immerwahrclara@gmail.com"

  def new_message(message, to)
  	@message = message
  	mail_parameters = {:subject => "[speakerInnen] #{message.subject}"}
  	if to
  		mail_parameters[:to] = to
  	end
  	mail(mail_parameters)
  end

end
