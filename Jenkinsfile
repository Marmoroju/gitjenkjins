pipeline {
    agent any
        stages {
            stage('Backup da pasta atual') {
                steps { 
                    sh 'sudo cp -R /var/www/html/ /home/vagrant/bkp/backup_${BUILD_ID}'
                }
            }

            stage('Atualização do index') {
                steps {
                    sh 'sudo cp -R /var/lib/jenkins/workspace/html_job/app /var/www/html/'
                }
            }

            stage('Restart do Apache') {
                steps {
                    sh 'sudo systemctl restart apache2'
                }
            }
        }
}