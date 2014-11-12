class AddAttachmentAvatarToMedicos < ActiveRecord::Migration
  def self.up
    change_table :medicos do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :medicos, :avatar
  end
end
