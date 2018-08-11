class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :date_start
      t.string :time_from
      t.string :time_to
      t.string :location
      t.string :host_name
      t.string :host_contact
      t.text :content

      t.timestamps
    end
  end
end
