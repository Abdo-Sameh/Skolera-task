class CreateTeachings < ActiveRecord::Migration[5.2]
  def change
    create_table :teachings do |t|
      t.references :teacher, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
    add_index :teachings, [:teacher_id, :course_id], unique: true
  end
end
