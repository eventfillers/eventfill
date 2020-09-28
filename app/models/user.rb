class User < ApplicationRecord

  has_many :events
  has_many :talent_profiles
  has_many :registrations
  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'
  has_many :received_messages, class_name: 'Message', foreign_key: 'recipient_id'

end