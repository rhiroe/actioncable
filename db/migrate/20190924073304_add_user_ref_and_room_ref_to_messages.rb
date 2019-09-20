class AddUserRefAndRoomRefToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :user, foreign_key: true
    add_reference :messages, :room, foreign_key: true
    change_column_null :messages, :user_id, false
    change_column_null :messages, :room_id, false
  end
end
