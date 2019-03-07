pipeline {
  agent any
  stages {
    stage('Bootstrap') {
      steps {
        bat(script: 'bootstrap_llvm.bat', returnStatus: true, returnStdout: true)
      }
    }
  }
}