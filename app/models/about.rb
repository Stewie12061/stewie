# == Schema Information
#
# Table name: abouts
#
#  id         :integer          not null, primary key
#  title      :string
#  value      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class About < ApplicationRecord
end
