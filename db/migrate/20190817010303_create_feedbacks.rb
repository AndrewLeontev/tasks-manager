class CreateFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :feedbacks do |t|
      t.string :first_name
      t.string :last_name
      t.string :subject
      t.string :email
      t.string :body
      t.boolean :is_read
    end
  end
end
