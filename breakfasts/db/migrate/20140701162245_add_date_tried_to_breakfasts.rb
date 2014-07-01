class AddDateTriedToBreakfasts < ActiveRecord::Migration
  def change
    add_column :breakfasts, :date_tried, :date
    Breakfast.update_all(:date_tried => 5.days.ago)
  end
end
