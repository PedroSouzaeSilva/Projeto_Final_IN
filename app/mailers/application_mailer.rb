class ApplicationMailer < ActionMailer::Base
  #email padrão de envio para usuario
  default from: 'email@injunior.com.br'
  layout 'mailer'
end
