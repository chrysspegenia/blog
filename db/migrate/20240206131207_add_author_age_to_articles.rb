class AddAuthorAgeToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :author_age, :integer
  end
end
