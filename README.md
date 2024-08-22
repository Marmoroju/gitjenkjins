# Abmbiente para teste de Integração contínua com Jenkins e Vagrant

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
    - repo - all
    - admin:org - read:org
    - user - user:email
8. Gerar Token (Salvar hash, ela será utilizada nas jobs do Jenkins para os repositórios daquela conta)

### Criação de Jobs

1. Nova tarefa
2. Escolha um nome da Job
3. Escolha o tipo de job
    - Multibranch Pipeline - Menor consumo para várias branchs
    - Pipeline (Aponta para uma branch específica)



### Configuração do Pipeline

1. Descrição (O que ela faz?)
2. Opções de Build e Triggers (opcional)
3. Pipeline (Opções):
    - Pipeline script (ad-hoc terminal próprio)
    - Pipeline script from SCM (Jenkinsfile)
        - SCM
            - Git
            - Repository URL (Repositório que será apontado)
        - Credentials
            - Username do Github / Token Gerado    
        - Branches to build
            - */master
        - Script Path
            - Localização do Jenkinsfile (Normalmente no mesmo repo do Git apontado)    
4. Aplicar e Salvar

### Configuração da Multibranch Pipeline

1. Branch Sources:
    - Github Credenciais
    - Adiciona nome do usuário no Github
    - Adiciona o Token de Acesso
    - Repositório
        - Adicione o Repositório que será apontado
        - Valide o acesso
        - Aguarde o retorno "Credentials ok. Connected to https://github.com/repo"
2. Build Configuration:        
    - O arquivo Jenkinsfile deve estar no mesmo repositório
3. Salve e aguarde o scan que fará a checagem.
git add

## Instalação do Sonarqube

Link: https://www.sonarsource.com/products/sonarqube/downloads/
- Community Edition
- Avançar a tela de Download
- Clicar com o botão direito em 'Download Community Edition -->'
- Copiar link do zip (Algo assim: https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip )
- O Download será realizado via wget e unzip

## Instalação do SonarScanner

Link: https://docs.sonarsource.com/sonarqube/latest/analyzing-source-code/scanners/sonarscanner/

- Clicar com o botão direito na distribuição que será instalada
- Copiar o link ( algo assim: https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.1.0.4477-linux-x64.zip )







