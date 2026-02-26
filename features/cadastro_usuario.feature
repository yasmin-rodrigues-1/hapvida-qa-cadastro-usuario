Feature: Cadastro de Usuário

  Como um usuário
  Quero preencher o formulário de cadastro com nome, e-mail e senha
  Para criar uma conta no sistema

  # US01 — Cadastro com dados válidos

  Scenario: CT001 - Validar o cadastro do novo usuário com dados válidos.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "yasmin.rodrigues@email.com" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then o sistema deve criar a conta;
    And deve exibir uma mensagem de sucesso.

  Scenario: CT002 - Validar o comportamento consistente após cadastro com sucesso.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "yasmin.rodrigues1@email.com" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then deve ser exibida uma mensagem de sucesso;
    And o formulário deve ser limpo ou o usuário deve ser redirecionado conforme comportamento definido.
    # Exemplo: limpar os campos ou redirecionar o usuário

  # US02 — Validação de campos obrigatórios

  Scenario: CT003 - Validar o bloqueio do envio quando o campo nome estiver vazio.
    Given que estou na tela de Cadastro de Usuário.
    When deixo o campo nome em branco;
    And informo "yasmin.rodrigues2@email.com" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro;
    Then o envio deve ser bloqueado;
    And deve ser exibida mensagem de campo obrigatório para o campo nome.

  Scenario: CT004 - Validar o bloqueio do envio quando o campo e-mail estiver vazio.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And deixo o campo e-mail em branco;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then o envio deve ser bloqueado;
    And deve ser exibida mensagem de campo obrigatório para o campo e-mail.

  Scenario: CT005 - Validar o bloqueio de envio quando o campo senha estiver vazio.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "yasmin.rodrigues3@email.com" no campo e-mail;
    And deixo o campo senha em branco;
    And submeto o formulário de cadastro.
    Then o envio deve ser bloqueado;
    And deve ser exibida mensagem de campo obrigatório para o campo senha.

  # US03 — Validação de formato de e-mail

  Scenario: CT006 - Validar rejeição do e-mail sem o caractere @.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "yasmin.rodrigues4email.com" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then o envio deve ser bloqueado;
    And deve ser exibida mensagem clara informando formato de e-mail inválido.

  Scenario: CT007 - Validar rejeição do e-mail com espaço no meio.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "yasmin rodrigues@5email.com" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then o envio deve ser bloqueado;
    And deve ser exibida mensagem clara informando formato de e-mail inválido.

  Scenario: CT008 - Validar aceite do e-mail válido com +tag e domínio .com.br.
    Given que estou na tela de Cadastro de Usuário.
    When informo "Yasmin Rodrigues" no campo nome;
    And informo "nome.sobrenome+tag@dominio.com.br" no campo e-mail;
    And informo "teste123" no campo senha;
    And submeto o formulário de cadastro.
    Then o sistema deve criar a conta;
    And deve exibir uma mensagem de sucesso.
