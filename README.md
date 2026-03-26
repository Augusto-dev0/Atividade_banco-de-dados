# 📚 Tarefinha para Casa - Banco de Dados

Projeto desenvolvido como atividade da disciplina **Banco de Dados** (3º período).

## 📋 Sobre a Atividade 

O objetivo da tarefa era criar um banco de dados MySQL com **duas partes**:

### Parte 1 (Primeiro PDF)
- Criar as tabelas **postal** e **empregado**
- Inserir todos os dados conforme o modelo fornecido
- Estabelecer a conexão entre as tabelas através de chave estrangeira (`CEP`)

### Parte 2 (Segundo PDF - Completa)
- Criar as 4 tabelas completas:
  - `postal`
  - `empregado`
  - `despesa`
  - `comissao`
- Inserir todos os registros das tabelas
- Definir todas as chaves primárias (PK) e chaves estrangeiras (FK)

**Atenção especial:** Toda chave estrangeira referencia corretamente sua chave primária.

## 🛠️ Tecnologias Utilizadas
- MySQL 8.0
- VS Code + extensão MySQL
- SQL (DDL + DML)

```sql
-- Exemplo rápido para testar
SHOW TABLES;
SELECT * FROM empregado;
