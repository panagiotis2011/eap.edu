class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.integer :user_id, :null => false        #ξένο κλειδί για τον πίνακα Lesson

      t.string :title, :null => false
      t.string :message
      t.text :body, :null => false
      t.text :freezebody                                        # κατά την αποδοχή ενός άρθου το κύριο μέρος του άρθου body αντιγράφεται σε αυτό το πεδίο
      t.integer :state, :null => false, :default => 0           # 0...draft, 1...submitted, 2...rejected, 3...full question, 4...featured question
      t.string :message                                         # μήνυμα στον φοιτητή για την απόρριψη του άρθρου
      t.date :submitted
      t.date :accepted

      t.timestamps
    end
    add_index :questions, :user_id
  end

  def self.down
    drop_table :questions
  end
end
