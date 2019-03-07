node {

stage('Clone the repository')
{
checkout scm
}


stage('Build Docker Image')

{
sh "docker build -t devops_exam:version1 ."
}
  
stage('Push the image to Dockerhub'){
sh "docker login -u 'tkimutai1' -p 'Yamaha250'"
sh "docker tag devops_exam:version1 tkimutai1/devops_exam:version1"
sh "docker push tkimutai1/devops_exam:version1"
}


stage('Deploy')
{
sh "docker run -d -p 6714:80/tcp devops_exam:version1"
}




}
