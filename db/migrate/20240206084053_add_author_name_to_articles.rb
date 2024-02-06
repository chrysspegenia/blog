class AddAuthorNameToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :writer_name, :string
  end
end
