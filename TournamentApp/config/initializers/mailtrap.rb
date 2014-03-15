if ENV['mailtrap.io'].present?
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :user_name => ENV['heroku-16ede1f5c4e242b0'],
      :password => ENV['aa5c1efafef49621'],
      :address => ENV['mailtrap.io'],
      :port => ENV['2525'],
      :authentication => :plain
    }
  end