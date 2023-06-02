class AddReactionsCountToArticlesAndComments < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :reactions_count, :integer, default: 0
    add_column :comments, :reactions_count, :integer, default: 0
  end
end
