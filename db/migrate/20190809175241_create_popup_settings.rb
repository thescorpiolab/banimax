class CreatePopupSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :popup_settings do |t|
      t.references :shop, foreign_key: true
      t.integer :position
      t.float :cart_amount
      t.boolean :status

      t.timestamps
    end
  end
end
