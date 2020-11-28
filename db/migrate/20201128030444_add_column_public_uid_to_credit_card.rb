class AddColumnPublicUidToCreditCard < ActiveRecord::Migration[5.2]
  def change
    add_column :credit_cards, :public_uid, :string
    add_index  :credit_cards, :public_uid, unique: true
  end
end
