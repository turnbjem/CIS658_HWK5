class AddUserRefToBugs < ActiveRecord::Migration[6.0]
  def change
    add_reference :bug_models, :user, null: true, foreign_key: true
  end
end
