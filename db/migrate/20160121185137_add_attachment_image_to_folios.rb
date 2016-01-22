class AddAttachmentImageToFolios < ActiveRecord::Migration
  def self.up
    change_table :folios do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :folios, :image
  end
end
