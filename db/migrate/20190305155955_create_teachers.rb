class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name, :null => false
      t.string :email
      t.date :birth_date
      t.string :mobile
      t.timestamps
    end
  end
end
