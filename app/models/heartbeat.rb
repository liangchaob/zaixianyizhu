class Heartbeat < ApplicationRecord

  belongs_to :user

end

# == Schema Information
#
# Table name: heartbeats
#
#  id          :integer          not null, primary key
#  contact_way :string           default("email")
#  interval    :integer          default(90)
#  timeout     :integer          default(90)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
