node {
    stage('Clone') {
        git branch: 'bilell',
            url: 'https://github.com/medusa06/automatisation.git'
    }
    stage('ls') {
        sh 'ls -l'
    }
    stage('docker build') {
        sh 'docker build -t bisarti/roundcubemail .'
    }
    stage('Ansible') {
        ansiblePlaybook (
            colorized: true, 
            become: true,             
            playbook: 'playbooks/deploy-rc.yaml',
            inventory: 'hosts/hosts.ini'
        )
    }
}
