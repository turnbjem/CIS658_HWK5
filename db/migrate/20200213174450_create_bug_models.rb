class CreateBugModels < ActiveRecord::Migration[6.0]
  def change
    create_table :bug_models do |t|
      t.string :title
      t.text :description
      t.integer :issue_type, default: 2
      t.integer :priority, default: 1
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
