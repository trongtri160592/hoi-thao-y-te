class CreateJoinTableRegistrarsCourses < ActiveRecord::Migration[5.1]
  def change
    create_join_table :registrars, :courses do |t|
      # t.index [:registrar_id, :course_id]
      # t.index [:course_id, :registrar_id]
    end
  end
end
