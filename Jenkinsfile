node {
    stage('Clone') {
        git branch: 'main',
            url: 'https://github.com/medusa06/automatisation.git'
    }
    stage('ls') {
        sh 'ls -l'
    }
    stage('docker build') {
        sh 'docker build -t rouncube .'
    }
}
