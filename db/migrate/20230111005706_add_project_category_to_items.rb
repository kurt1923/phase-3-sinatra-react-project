class AddProjectCategoryToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :project_category, :string
  end
end
