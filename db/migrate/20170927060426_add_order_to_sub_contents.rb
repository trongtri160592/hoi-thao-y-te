class AddOrderToSubContents < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contents, :order, :integer
  end
end
