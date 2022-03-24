class RenameImgColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :img, :image
  end
end
