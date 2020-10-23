class CreateMyProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :my_problems do |t|
      t.references  :user,              null: false, foreign_key: true
      t.text        :question,          null: false
      t.string      :answer,            null: false
      t.timestamps
    end
  end
end
