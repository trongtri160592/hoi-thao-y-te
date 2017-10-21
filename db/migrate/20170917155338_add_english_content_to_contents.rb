class AddEnglishContentToContents < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :english_content, :text
  end
end
