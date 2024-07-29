class UserMailer < ApplicationMailer
    default from: "from@example.com"
    # layout 'mailer'

    def welcome_email
        @user=params[:user]
        @url = 'http://example.com/login'
        mail(to: @user.email, subject:'welcome to my Awesome site')
    end
end
