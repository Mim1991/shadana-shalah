class DropInstalls < ActiveRecord::Migration[6.1]
  def change
    drop_table :comfy_blog_posts
    drop_table :comfy_cms_categories
    drop_table :comfy_cms_categorizations
    drop_table :comfy_cms_files
    drop_table :comfy_cms_fragments
  end
end
