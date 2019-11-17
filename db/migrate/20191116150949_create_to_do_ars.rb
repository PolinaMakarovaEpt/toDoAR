class CreateToDoArs < ActiveRecord::Migration[6.0]
  def change
    create_table :to_do_ars do |t|
      t.string :task
      t.boolean :done

      t.timestamps
    end
  end
end
