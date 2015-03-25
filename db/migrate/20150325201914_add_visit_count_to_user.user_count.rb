# This migration comes from user_count (originally 20150325201736)
class AddVisitCountToUser < ActiveRecord::Migration
  def change
    add_column :users, :visit_count, :integer, default: 0
  end
end
