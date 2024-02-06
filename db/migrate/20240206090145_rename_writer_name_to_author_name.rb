class RenameWriterNameToAuthorName < ActiveRecord::Migration[7.1]
  def change
    rename_column :articles, :writer_name, :author_name
  end
end
