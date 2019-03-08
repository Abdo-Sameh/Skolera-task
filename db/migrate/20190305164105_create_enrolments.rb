class CreateEnrolments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrolments do |t|
      t.references :student, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
    add_index :enrolments, [:student_id, :course_id], unique: true
  end
end
