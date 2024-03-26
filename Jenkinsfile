node{
    stage('Ansible') {
      ansiblePlaybook (
          colorized: true, 
          become: true,             
          playbook: 'playbooks/deploy-app.yaml',
          inventory: 'hosts/hosts.ini'
      )
    }
}
