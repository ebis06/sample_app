class RemoveContentTypeFromRoutes < ActiveRecord::Migration
  def self.up
    remove_column :routes, :content_type
    remove_column :routes, :data
  end

  def self.down
    add_column :routes, :content_type, :string
    add_column :routes, :data 
  end
end
