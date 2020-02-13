class CreateBugModels < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_models do |t|
      t.string :title
      t.text :description
      t.integer :issue_type
      t.integer :priority
      t.integer :status

      t.timestamps
    end
  end
end
