# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  author     :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Testimonial < ApplicationRecord
end
