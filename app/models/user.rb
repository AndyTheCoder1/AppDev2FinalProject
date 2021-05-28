# == Schema Information
#
# Table name: users
#
#  id                             :bigint           not null, primary key
#  email                          :string           default(""), not null
#  encrypted_password             :string           default(""), not null
#  reset_password_token           :string
#  reset_password_sent_at         :datetime
#  remember_created_at            :datetime
#  username                       :citext
#  religion                       :string
#  political_affiliation          :string
#  height                         :string
#  hometown                       :string
#  age                            :integer          default(0)
#  job_title                      :string
#  school                         :string
#  family_plans                   :string
#  gender                         :string
#  drinking                       :string
#  smoking                        :string
#  undergrad_school               :string
#  romantic_interests             :string
#  daily_photo_reveals            :integer          default(0)
#  sent_follow_requests_count     :integer          default(0)
#  received_follow_requests_count :integer          default(0)
#  own_photos_count               :integer          default(0)
#  active                         :boolean          default(TRUE)
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
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
