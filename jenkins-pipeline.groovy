node('maven') {
    stage('build') {
        echo 'building app :)'
        openshiftBuild(buildConfig: 'php01', showBuildLogs: 'true')
    }
    stage('verify') {
        echo 'dummy verification....'
    }
    stage('deploy') {
        input 'Manual Approval'
        openshiftDeploy(deploymentConfig: 'php01')
    }
    stage('promoting to QA') {
       echo 'fake stage...'
       sleep 5 
    }
}
