node {
    stage('Clone') {
        git branch: 'main',
            url: 'https://github.com/medusa06/automatisation.git'
    }
    stage('Build Docker image') {
        steps {
            script {
                docker.build('sofien-roundcube', '-f roundcube/Dockerfile')
            }
        }
    }
    stage('Ansible') {#      ansiblePlaybook (
          colorized: true, 
          become: true,             
          playbook: 'playbooks/deploy-roundcube.yaml',
          inventory: 'hosts/hosts.ini'
      )
    }
}
