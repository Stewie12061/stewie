# == Schema Information
#
# Table name: navs
#
#  id         :integer          not null, primary key
#  href       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Nav < ApplicationRecord
end
