class SessionAndPgtiou < ActiveRecord::Migration
  def self.up
  	add_column :sessions, :service_ticket, :string
    add_index 'sessions', ['service_ticket']
    
    create_table 'cas_pgtious' do |t|
        t.string 'pgt_iou', null: false
        t.string 'pgt_id', null: false
        t.datetime 'created_at'
	    t.datetime 'updated_at'
    end

    add_index 'cas_pgtious', ['pgt_iou'], unique: true
  end

  def self.down
    drop_table 'cas_pgtious'

    remove_index 'sessions', ['service_ticket']

    remove_column 'sessions', ['service_ticket']
  end
end


