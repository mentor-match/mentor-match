class RemoveNullFalseFromMentorInUsers < ActiveRecord::Migration
  def change

    change_column_null(:users, :mentor_type, true)
  end
end
