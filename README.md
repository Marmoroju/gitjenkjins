# Abmbiente teste de Integração contínua com Jenkins e Vagrant

Ao término da instalação `reinicie a VM` e depois execute o comando abaixo dentro da VM para recuperar a hash de acesso ao Jenkins

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
### Passos para configurar o Jenkins

1. Acesse o Jenkins pelo navegador 
2. Adicione a hash recuperada da VM
3. Instale as extensões sugeridas e aguarde finalizar
4. Crie seu usuário e senha
5. Configure a URL (Mesmo IP de onde estará instalado)


### Gerar Token no Git (Necessário para repositórios privados)

1. Acessar conta do repositório no Github
2. Settings
3. <> Developer Settings
4. Personal Access Token 
5. Tokens (Classic) 
6. Preencher com nome, tempo de expiração e dar permissões
7. Permissões:
    7.1 - repo - all
    7.2 - admin:org - read:org
    7.3 - user - user:email
8. Gerar Token (Salvar hash, ela será utilizada nas jobs do Jenkins para os repositórios daquela conta)

### Criação de Jobs

1. Nova tarefa
2. Escolha um nome da Job
3. Escolha o tipo de job
    3.1 - Multibranch Pipeline - Menor consumo para várias branchs

### Configuração da Job

1. 
2. Branch Sources:
    - Github Credenciais
    - Adiciona nome do usuário no Github
    - Adiciona o Token de Acesso
    - Repositório
        - Adicione o Repositório que será apontado
        - Valide o acesso
        - Aguarde o retorno "Credentials ok. Connected to https://github.com/repo"
3. Build Configuration:        
    - O arquivo Jenkinsfile deve estar no mesmo repositório
4. Salve e aguarde o scan que fará a checagem.




