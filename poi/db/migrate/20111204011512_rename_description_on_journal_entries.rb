class RenameDescriptionOnJournalEntries < ActiveRecord::Migration
  def up
    change_table :journal_entries do |t|
      t.rename :decription, :description
    end
  end

  def down
  end
end
