class UserMailer < ApplicationMailer
    default from: 'from@example.com'

    def welcome_email(order)
        @order = order
        @url  = 'http://localhost:3000/login'
        mail(to: order.email , subject: 'Welcome to My Awesome Site')
      end
end
