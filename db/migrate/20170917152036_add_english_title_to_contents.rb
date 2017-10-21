class AddEnglishTitleToContents < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :english_title, :string
  end
end
