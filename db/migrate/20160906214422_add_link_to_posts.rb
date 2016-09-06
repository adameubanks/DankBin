class AddLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :link, :string
    add_index :posts, :link
  end
end
