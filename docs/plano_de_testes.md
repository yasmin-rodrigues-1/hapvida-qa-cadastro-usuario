# Plano de Teste — Cadastro de Usuário

## 1. Objetivo
Validar o módulo de Cadastro de Usuário garantindo que:
- O cadastro seja realizado com dados válidos e mensagem de sucesso seja exibida;
- Campos obrigatórios sejam validados com mensagens específicas por campo;
- O formato de e-mail seja validado conforme critérios definidos.

## 2. Escopo

### 2.1 Dentro do escopo
- Tela de cadastro com campos: nome, e-mail e senha;
- Validação de obrigatoriedade; (nome, e-mail, senha)
- Validação de formato de e-mail; (rejeição de formatos inválidos e aceitação de válidos)
- Comportamento pós-cadastro bem-sucedido. (limpar campos ou redirecionar — comportamento consistente)

### 2.2 Fora do escopo
- Confirmação de e-mail, login, recuperação de senha;
- Regras de força de senha. (mínimo/máximo/complexidade)

## 3. Tipos de testes aplicáveis
- Testes funcionais; (fluxo principal e regras)
- Testes negativos/validação; (campos vazios e e-mails inválidos)
- Testes exploratórios; (cenários não mapeados, combinações e bordas)
- Testes de regressão. (reexecução dos cenários críticos após mudanças)

## 4. Estratégia básica de execução
1) Executar o cenário “caminho feliz”; (cadastro com dados válidos)
2) Executar validações de obrigatoriedade por campo e validar mensagens específicas;
3) Registrar evidências (prints/logs) e reportar inconsistências. (funcionais e de UX)

## 5. Riscos Identificados

- Falta de validação adequada pode permitir cadastros inválidos;
- Mensagens genéricas podem impactar a experiência do usuário;
- Ausência de padronização no comportamento pós-sucesso pode gerar inconsistência funcional.
