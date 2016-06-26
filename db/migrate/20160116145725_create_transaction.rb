class CreateTransaction < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.datetime :date #2016/Jan/06 22:56:20
      t.string :type#debit-transaction
      t.string :sub_type#expense
      t.string :txn_type#cash-spend
      t.string :payment_type#cash
      t.string :mrs#"Home"
      t.string :category#Home
      t.string :bank_name#Cash Spend
      t.string :account_id#cash
      t.string :account_type#cash
      t.decimal :credit, precision: 15, scale: 3#0.0
      t.decimal :debit, precision: 15, scale: 3#200.0
      t.decimal :balance, precision: 15, scale: 3#0.0
      t.decimal :outstanding, precision: 15, scale: 3#0.0
      t.decimal :available_limit, precision: 15, scale: 3#0.0
      t.text :notes #"null"
      t.timestamps null: false
    end
  end
end
