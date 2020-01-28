node{
     	stage('SCM') {
           //git clone
         git 'https://github.com/openmrs/openmrs-core.git'
      }
      stage('Build package') {
         //Build maven package
        sh 'mvn package'
      }
	 stage('Test Result') {
         //Show Test results
        junit 'target/surefire-reports/*.xml' 
     } 
     stage('Archive') {
       // Archiving artifacts.
       archiveArtifacts 'target/*.jar'
     }
}
