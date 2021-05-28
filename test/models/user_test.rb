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
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
