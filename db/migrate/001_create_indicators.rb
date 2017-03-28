class CreateIndicators < ActiveRecord::Migration
  def change
    create_table :indicators do |t|

      t.string :name

      t.string :description

      t.string :interpretation


    end

  end
end
