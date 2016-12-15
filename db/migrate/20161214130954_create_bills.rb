class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.string :event
      t.date :date
      t.string :location
      t.integer :total_amount
      t.integer :by_amar
      t.integer :by_akbar
      t.integer :by_anthony
      t.integer :had_to_give_by_amar
      t.integer :had_to_give_by_akbar
      t.integer :had_to_give_by_anthony

      t.timestamps null: false
    end
  end
end
