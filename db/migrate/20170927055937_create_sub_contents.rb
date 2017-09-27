class CreateSubContents < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_contents do |t|
      t.references :content, foreign_key: true

      t.timestamps
    end
  end
end
