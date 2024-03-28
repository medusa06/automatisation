node {
    stage('Clone') {
        git branch: 'bilell',
            url: 'https://github.com/medusa06/automatisation.git'
    }
    stage('docker build') {
        sh 'docker build -t bisarti/roundcubemail .'
    }
    stage('docker run') {
        sh 'docker run -d -p 8080:80 bisarti/roundcubemail'
    }
}


