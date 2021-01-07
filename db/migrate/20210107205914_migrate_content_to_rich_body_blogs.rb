class MigrateContentToRichBodyBlogs < ActiveRecord::Migration[6.1]
  def up
    Blog.find_each do |blog|
      blog.update(rich_body: blog.content)
    end
  end

  def down
    Blog.find_each do |blog|
      blog.update(content: blog.rich_body)
      blog.update(rich_body: nil)
    end
  end
end
