class CreateCadastroPlanoDeVoos < ActiveRecord::Migration[5.0]
  def change
    create_table :cadastro_plano_de_voos do |t|
      t.text :objetivos
      t.string :frequencia_voo
      t.string :duracao_voo
      t.string :numero_estacoes
      t.text :localizacao_estacoes
      t.string :transferencia
      t.text :local_decolagem
      t.text :requisitos_decolagem
      t.text :requisitos_pouso
      t.text :rota
      t.text :carga_util
      t.text :altura_maxima
      t.string :local_destino
      t.datetime :data_voo
      t.text :codigo_chamada
      t.text :regras_voo
      t.string :tipo_operacao
      t.string :id_operador

      t.timestamps
    end
  end
end
