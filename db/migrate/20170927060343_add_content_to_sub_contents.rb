class AddContentToSubContents < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contents, :content, :text
  end
end
