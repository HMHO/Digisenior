class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.string :ips
      t.string :especialidad
      t.string :profesional
      t.date :fecha
      t.string :paciente

      t.timestamps
    end
  end
end
