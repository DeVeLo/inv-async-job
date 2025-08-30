class CreateExamples < ActiveRecord::Migration[8.0]
  def change
    create_table :examples do |t|
      t.integer :counter, default: 0

      t.timestamps
    end
  end
end
