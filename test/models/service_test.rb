# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  description :text
#  icon        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
