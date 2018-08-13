class ChangeDateTimeToDatetimeInEvents < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date_start, :date
    change_column :events, :time_from, :time
    change_column :events, :time_to, :time
  end
end
