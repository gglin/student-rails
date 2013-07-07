class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :url
      t.string :img
      t.string :tagline
      t.text   :bio
      t.string :prof_pic
      t.string :twitter
      t.string :linkedin
      t.string :github
      t.string :blog
      t.text   :quote

      t.timestamps
    end
  end
end
