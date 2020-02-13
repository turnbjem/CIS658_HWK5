class User < ApplicationRecord
  has_many :bug_models
  validates :lname, presence: true, length: {minimum: 1, maximum:15}
  validates :fname, presence: true, length: {minimum: 1, maximum:15}
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :thumbnail, presence: false, format: { with: /\A(|.+\.(jpg|gif|png))\z/,
                                                   message: "Must end with .jpg, .gif, .png" }
end
