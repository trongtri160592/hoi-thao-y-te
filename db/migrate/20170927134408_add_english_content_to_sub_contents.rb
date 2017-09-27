class AddEnglishContentToSubContents < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contents, :english_content, :text
  end
end
