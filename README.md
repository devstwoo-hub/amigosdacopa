# Amigos da Copa

Versao separada do bolao, apontando para o novo projeto Supabase.

## Configurar banco

1. Abra o SQL Editor do Supabase novo.
2. Rode `schema-amigosdacopa.sql`.
3. Publique esta pasta no Cloudflare Pages.
4. Entre no app, crie seu cadastro e marque seu e-mail como admin:

```sql
update public.participants
set is_admin = true
where email = 'seu-email@exemplo.com';
```

## Importar jogos

No admin, cole o conteudo de `worldcup-2026-seed-pt.csv` e clique em importar.

## Banco usado

```text
https://tqhiaqkgtmsipigisxdu.supabase.co
```
