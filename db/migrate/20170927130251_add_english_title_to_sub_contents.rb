class AddEnglishTitleToSubContents < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contents, :english_title, :text
  end
end
