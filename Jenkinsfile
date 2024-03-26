node {
    stage('Clone') {
        git branch: 'main',
            url: 'https://github.com/medusa06/automatisation.git'
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
