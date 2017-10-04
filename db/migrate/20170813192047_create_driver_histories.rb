class CreateDriverHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :driver_histories do |t|
      t.belongs_to :peroson, foreign_key: true

      t.timestamps
    end
  end
end
