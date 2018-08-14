class ChangeDateTimeToDatetimeInEvents < ActiveRecord::Migration[5.2]
  def change
    # change_column(:events, :date_start, :date)
    # change_column(:events, :time_from, :time)
    # change_column(:events, :time_to, :time)
    remove_column(:events, :date_start)
    remove_column(:events, :time_from)
    remove_column(:events, :time_to)
    add_column(:events, :date_start, :date)
    add_column(:events, :time_from, :time)
    add_column(:events, :time_to, :time)
  end
end
