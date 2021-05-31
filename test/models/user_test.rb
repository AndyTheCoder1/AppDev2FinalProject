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
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
