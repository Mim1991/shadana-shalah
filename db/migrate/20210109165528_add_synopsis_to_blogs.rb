class AddSynopsisToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :synopsis, :text
  end
end
