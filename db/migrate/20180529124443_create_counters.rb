class CreateCounters < ActiveRecord::Migration[5.2]
  def change
    create_table :counters do |t|
      t.text :number_count

      t.timestamps
    end
  end
end
