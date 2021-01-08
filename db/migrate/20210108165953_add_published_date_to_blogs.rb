class AddPublishedDateToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :published_date, :date
  end
end
