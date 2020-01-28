node{
     stage('SCM') {
         //git clone
         git 'https://github.com/Ramparitala/spring-petclinic.git'
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
     stage('COPY artifacts into EFS') {
     //Copying artifacts into EFS Volume
     sh 'sudo cp target/*.jar /deliverables'
   }
}
