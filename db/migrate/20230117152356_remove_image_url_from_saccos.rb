class RemoveImageUrlFromSaccos < ActiveRecord::Migration[7.0]
  def change
    remove_column :saccos, :image_url, :string
  end
end
