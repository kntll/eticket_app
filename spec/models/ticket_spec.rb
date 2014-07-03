# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  ticket_name :string(255)
#  venue       :string(255)
#  date_time   :datetime
#  costs       :integer
#  url         :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Ticket do
  pending "add some examples to (or delete) #{__FILE__}"
end
