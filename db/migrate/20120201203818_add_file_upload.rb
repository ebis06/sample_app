class AddFileUpload < ActiveRecord::Migration
  def self.up
    change_table :routes do |t|
      t.rename :content_type, :trace_content_type
      t.add_column :banner_file_size
      t.add_column :banner_updated_at
    end
  end

  def self.down
  end
end
