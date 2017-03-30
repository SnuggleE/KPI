class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|

      t.string :name

      t.string :description

      t.string :interpretation

      t.string :inputtype

      t.string :category

      t.string :unit

      t.integer :marksperperiod

      t.boolean :isobjective


    end

  end
end
