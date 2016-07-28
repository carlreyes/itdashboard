class CreateWorkOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :work_orders do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
