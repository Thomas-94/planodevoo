require 'test_helper'

class CadastroPlanoDeVoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cadastro_plano_de_voo = cadastro_plano_de_voos(:one)
  end

  test "should get index" do
    get cadastro_plano_de_voos_url
    assert_response :success
  end

  test "should get new" do
    get new_cadastro_plano_de_voo_url
    assert_response :success
  end

  test "should create cadastro_plano_de_voo" do
    assert_difference('CadastroPlanoDeVoo.count') do
      post cadastro_plano_de_voos_url, params: { cadastro_plano_de_voo: { altura_maxima: @cadastro_plano_de_voo.altura_maxima, carga_util: @cadastro_plano_de_voo.carga_util, codigo_chamada: @cadastro_plano_de_voo.codigo_chamada, data_voo: @cadastro_plano_de_voo.data_voo, duracao_voo: @cadastro_plano_de_voo.duracao_voo, frequencia_voo: @cadastro_plano_de_voo.frequencia_voo, id_operador: @cadastro_plano_de_voo.id_operador, local_decolagem: @cadastro_plano_de_voo.local_decolagem, local_destino: @cadastro_plano_de_voo.local_destino, localizacao_estacoes: @cadastro_plano_de_voo.localizacao_estacoes, numero_estacoes: @cadastro_plano_de_voo.numero_estacoes, objetivos: @cadastro_plano_de_voo.objetivos, regras_voo: @cadastro_plano_de_voo.regras_voo, requisitos_decolagem: @cadastro_plano_de_voo.requisitos_decolagem, requisitos_pouso: @cadastro_plano_de_voo.requisitos_pouso, rota: @cadastro_plano_de_voo.rota, tipo_operacao: @cadastro_plano_de_voo.tipo_operacao, transferencia: @cadastro_plano_de_voo.transferencia } }
    end

    assert_redirected_to cadastro_plano_de_voo_url(CadastroPlanoDeVoo.last)
  end

  test "should show cadastro_plano_de_voo" do
    get cadastro_plano_de_voo_url(@cadastro_plano_de_voo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cadastro_plano_de_voo_url(@cadastro_plano_de_voo)
    assert_response :success
  end

  test "should update cadastro_plano_de_voo" do
    patch cadastro_plano_de_voo_url(@cadastro_plano_de_voo), params: { cadastro_plano_de_voo: { altura_maxima: @cadastro_plano_de_voo.altura_maxima, carga_util: @cadastro_plano_de_voo.carga_util, codigo_chamada: @cadastro_plano_de_voo.codigo_chamada, data_voo: @cadastro_plano_de_voo.data_voo, duracao_voo: @cadastro_plano_de_voo.duracao_voo, frequencia_voo: @cadastro_plano_de_voo.frequencia_voo, id_operador: @cadastro_plano_de_voo.id_operador, local_decolagem: @cadastro_plano_de_voo.local_decolagem, local_destino: @cadastro_plano_de_voo.local_destino, localizacao_estacoes: @cadastro_plano_de_voo.localizacao_estacoes, numero_estacoes: @cadastro_plano_de_voo.numero_estacoes, objetivos: @cadastro_plano_de_voo.objetivos, regras_voo: @cadastro_plano_de_voo.regras_voo, requisitos_decolagem: @cadastro_plano_de_voo.requisitos_decolagem, requisitos_pouso: @cadastro_plano_de_voo.requisitos_pouso, rota: @cadastro_plano_de_voo.rota, tipo_operacao: @cadastro_plano_de_voo.tipo_operacao, transferencia: @cadastro_plano_de_voo.transferencia } }
    assert_redirected_to cadastro_plano_de_voo_url(@cadastro_plano_de_voo)
  end

  test "should destroy cadastro_plano_de_voo" do
    assert_difference('CadastroPlanoDeVoo.count', -1) do
      delete cadastro_plano_de_voo_url(@cadastro_plano_de_voo)
    end

    assert_redirected_to cadastro_plano_de_voos_url
  end
end
