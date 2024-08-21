class DropNoticedEvents < ActiveRecord::Migration[6.0]
  def up
    drop_table :noticed_events
  end

  def down
    # Si tu veux que la table soit recréée en cas d'annulation, voici la structure de la table
    create_table :noticed_events do |t|
      t.string :type
      t.string :record_type
      t.bigint :record_id
      t.jsonb :params
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.index [:record_type, :record_id], name: "index_noticed_events_on_record"
    end
  end
end
