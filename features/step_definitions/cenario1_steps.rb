Dado("que estou na página perguntas") do
    visit 'https://www.neonpagamentos.com.br/perguntas'
end

Dado("cliquei no item {string}") do |string|
    find('body > main > article > div.container > article > section:nth-child(1) > header > button').click 
end

Quando("clico na pergunta {string}") do |string|
    find('body > main > article > div.container > article > section:nth-child(1) > article > ul > li:nth-child(1) > header > button').click 
end

Então("devo ver a seguinte resposta: {string}") do |string|
    expect(page).to have_content string
end