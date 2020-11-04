class CreateEnglishes < ActiveRecord::Migration[6.0]
  def change
    create_table :englishes do |t|
      t.text   :question
      t.string :answer
      t.timestamps
    end
  end
end
