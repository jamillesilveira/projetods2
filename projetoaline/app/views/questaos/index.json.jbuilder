json.array!(@questaos) do |questao|
  json.extract! questao, :id, :cod, :enunciado, :resposta, :pergunta
  json.url questao_url(questao, format: :json)
end
