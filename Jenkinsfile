node {
    stage 'Checkout'

    checkout scm

    stage 'Gradle Static Analysis'
    sh './gradlew build'

    withSonarQubeEnv {
        sh "./gradlew clean sonarqube"
    }
}    
