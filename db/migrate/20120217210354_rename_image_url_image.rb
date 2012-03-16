class RenameImageUrlImage < ActiveRecord::Migration
  def self.up
    rename_column :routes, :image_url, :image_file_name
    add_column :routes, :image_content_type, :string
    add_column :routes, :image_file_size, :integer
    add_column :routes, :image_uploaded_at, :datetime
  end

  def self.down
    remove_column :routes, :image_file_name
    remove_column :routes, :image_content_type
    remove_column :routes, :image_file_size
    remove_column :routes, :image_uploaded_at
  end
end
