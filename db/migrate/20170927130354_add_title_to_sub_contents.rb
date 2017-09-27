class AddTitleToSubContents < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contents, :title, :text
  end
end
