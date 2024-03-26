node {
    stage('Clone') {
        git 'https://github.com/medusa06/automatisation.git', branch: 'main'
    }
    stage('Ansible') {
      ansiblePlaybook (
          colorized: true, 
          become: true,             
          playbook: 'playbooks/deploy-app.yaml',
          inventory: 'hosts/hosts.ini'
      )
    }
}
