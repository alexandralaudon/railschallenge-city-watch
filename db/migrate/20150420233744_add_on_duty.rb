class AddOnDuty < ActiveRecord::Migration
  def change
    add_column :responders, :on_duty, :boolean
  end
end
