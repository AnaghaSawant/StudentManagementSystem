class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :stud_id
      t.string :name
      t.string :email
      t.text :address
      t.string :course

      t.timestamps
    end
  end
end
