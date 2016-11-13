class Letter < ApplicationRecord

  belongs_to :user
end

# == Schema Information
#
# Table name: letters
#
#  id         :integer          not null, primary key
#  content    :text
#  contact_a  :string
#  contact_b  :string
#  posted     :boolean          default(FALSE)
#  confirmed  :boolean          default(FALSE)
#  effect     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
