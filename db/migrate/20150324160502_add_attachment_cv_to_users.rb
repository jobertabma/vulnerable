class AddAttachmentCvToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :cv
    end
  end

  def self.down
    remove_attachment :users, :cv
  end
end
