class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
  end
end

class Saver < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end