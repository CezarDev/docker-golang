# docker-golang

Aplicação Node.js com Nginx como proxy reverso e MySQL, orquestrada via Docker Compose.

A página exibe **Full Cycle Rocks!** junto com uma lista de nomes inseridos automaticamente na tabela `people` do banco de dados.

## Como executar

```bash
docker compose up
```

Acesse em: [http://localhost:8080](http://localhost:8080)

## Arquitetura

| Serviço  | Descrição                                      | Porta interna |
|----------|------------------------------------------------|---------------|
| nginx    | Proxy reverso, expõe a aplicação na porta 8080 | 80            |
| node     | App Node.js — insere nomes na tabela `people`  | 3000          |
| mysql    | Banco de dados relacional                       | 3306          |
