class Notification < ApplicationRecord
  default_scope -> { order(created_at: :desc) }
  belongs_to :daily_report, optional: true
  belongs_to :daily_report_comment, optional: true
  belongs_to :item_comment, optional: true

  belongs_to :visitor, class_name: 'Employee', foreign_key: 'visitor_id', optional: true
  belongs_to :visited, class_name: 'Employee', foreign_key: 'visited_id', optional: true
end
