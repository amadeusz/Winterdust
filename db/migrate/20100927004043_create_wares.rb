class CreateWares < ActiveRecord::Migration
  def self.up
    create_table :wares do |t|
      t.string :kod
      t.string :nazwa
      t.integer :podatek
      t.integer :grupa
      t.integer :platnosc
      t.int :jednostka
      t.decimal :ilosc
      t.decimal :cena_netto
      t.decimal :cena
      t.integer :op
      t.integer :bl

      t.timestamps
    end
  end

  def self.down
    drop_table :wares
  end
end
