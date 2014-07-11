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

class Ticket < ActiveRecord::Base
	belongs_to :user
	belongs_to :event
	mount_uploader :pdf, PdfUploader
end
