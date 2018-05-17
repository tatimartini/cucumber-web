#language:pt

Funcionalidade: Acesso ao portal



Cenário: Verificar acesso com dados corretos
    Dado que acessei a página de login
    E possuo os seguintes dados:
        | Login    | Admin |
        | Password | admin |
    Quando faço login
    Então deve ser direcionado para a página "Dashboard"

Cenário: Verificar acesso com dados incorretos
    Dado que acessei a página de login
    E possuo os seguintes dados:
        | Login    | Admin  |
        | Password | admin1 |
    Quando faço login
    Então deve exibir mensagem "Invalid credentials"

@doing
Cenário: Cadastrar usuário no portal
    Dado que acessei a página de login
    E possuo os seguintes dados:
        | Login    | Admin |
        | Password | admin |
    Quando faço login
    Então deve ser direcionado para a página "Dashboard"
    E acesso o menu para cadastrar usuário
    E possuo os seguintes dados para cadastro:
        | firstName  | Tatiana   |
        | middleName | Martini   |
        | lastName   | Benevento |
    Quando faço cadastro
    Então deve ser direcionado para a página "Personal Details"

#Cenário 2:
#Acessar o site http://opensource.demo.orangehrmlive.com/ e efetuar o login utilizando as credenciais mencionadas
#abaixo, acessar a opção PIM > Add Employee e cadastrar um usuário no site.

#Credenciais: Login:Admin / Password:admin
#Diferencial: Utilizar o conceito de Page-Objects com SitePrism e utilizar Gemfile.

