class RemoveClassroomFromWorkOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :work_orders, :classroom_id
  end
end
