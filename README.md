Episode 11
Infrastructure Setup using Localstack and Terraform
Youtube video: https://youtu.be/2IUrUkH4mvQ



rodar docker-compose: 

docker-compose up -d --build

rodar scripts dentro da pasta infrastructure:

zip-it.sh // para gerar as lambdas zipadas que estao dentro da pasta lambdas

prepare.sh // depois de iniciado o docker-compose para criar as depencias que sao geradas atraves das pastas (lambdas, policies)

remove.sh // caso deseje deletar todos os zips gerados na pasta lambdas