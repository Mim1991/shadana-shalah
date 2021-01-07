class DropInstallsAgain < ActiveRecord::Migration[6.1]
  def change
    drop_table :comfy_cms_layouts
    drop_table :comfy_cms_pages
    drop_table :comfy_cms_revisions
    drop_table :comfy_cms_sites
    drop_table :comfy_cms_snippets
    drop_table :comfy_cms_translations
  end
end
