class Feedback < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :email, :body
  validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
        message:  I18n.t(:error_text_wrong_email)}

end