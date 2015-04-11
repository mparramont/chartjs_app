class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :year
      t.integer :month
      t.decimal :sales

      t.timestamps
    end
  end
end
