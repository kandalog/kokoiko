class RenameProfilePhotoColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :profile_photo, :img
  end
end
