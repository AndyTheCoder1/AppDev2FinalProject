# == Schema Information
#
# Table name: users
#
#  id                             :bigint           not null, primary key
#  active                         :boolean          default(TRUE)
#  age                            :integer          default(0)
#  daily_photo_reveals            :integer          default(0)
#  drinking                       :string
#  email                          :string           default(""), not null
#  encrypted_password             :string           default(""), not null
#  family_plans                   :string
#  gender                         :string
#  height                         :string
#  hometown                       :string
#  job_title                      :string
#  own_photos_count               :integer          default(0)
#  political_affiliation          :string
#  received_follow_requests_count :integer          default(0)
#  religion                       :string
#  remember_created_at            :datetime
#  reset_password_sent_at         :datetime
#  reset_password_token           :string
#  romantic_interests             :string
#  school                         :string
#  sent_follow_requests_count     :integer          default(0)
#  smoking                        :string
#  undergrad_school               :string
#  username                       :citext
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username)
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

    validates :username, presence: true

    validates :username, uniqueness: true


    has_many  :prompts, class_name: "PromptsAnswer", foreign_key: "owner_id", dependent: :destroy

    has_many  :sent_date_requests, class_name: "DateRequest", foreign_key: "sender_id", dependent: :destroy

    has_many  :received_date_requests, class_name: "DateRequest", foreign_key: "recipient_id", dependent: :destroy

    has_many  :own_photos, class_name: "Photo", foreign_key: "owner_id", dependent: :destroy



end
