# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  first_name :text
#  last_name  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    has_many :contacts
end
