
  Dado("que acessei a página de login") do
    visit 'http://opensource.demo.orangehrmlive.com/'
  end
  
  Dado("possuo os seguintes dados:") do |table|
    @login = table.rows_hash
  end
  
  Quando("faço login") do
    fill_in 'txtUsername', with: @login['Login']
    fill_in 'txtPassword', with: @login['Password']
    find('#btnLogin').click
  end
  
  Então("deve ser direcionado para a página {string}") do |string|
    expect(page).to have_content string
  end
  
  Então("deve exibir mensagem {string}") do |string|
    expect(page).to have_content string  
  end

  Dado("que estou na página {string}") do |string|
    expect(page).to have_content string 
  end
  
  Dado("acesso o menu para cadastrar usuário") do
    find('#menu_pim_viewPimModule').hover
    sleep 1
    find('#menu_pim_addEmployee').click
  end

  Dado("possuo os seguintes dados para cadastro:") do |table|
    @cadastro = table.rows_hash
  end

  Quando("faço cadastro") do
    fill_in 'firstName', with: @cadastro['firstName']
    fill_in 'middleName', with: @cadastro['middleName']
    fill_in 'lastName', with: @cadastro['lastName']
    find('#btnSave').click
  end