class UpdateTypeInResponders < ActiveRecord::Migration
  def change
    rename_column :responders, :type, :responder_type
  end
end
