### Quick spike for Django frameworks


#### TODO List

Step1: ok
- Env Setup
  - Docker & docker-compose
  - django
    - run in docker
    - requirements.txt support
    - connect with docker postgres
    - one env settings
    - server could be started
  - Makefile   

Step2:
- View Support
  - template engine
  - 404 page
  - login page
  - user profile page

Step3:
- API server
  - path design
  - integrated with model & view
  - add template engine  

Step4:
- Multiple ENV support
  - development
    - docker postgres
  - staging
    - RDS postgres support
  - production
    - RDS postgres support

Step5:
- Cache components
  - redis
  - redis-commander

Step6:
- Security check
  - automate check

Step7:
- Deploy ECS (cfn)
- Deploy Kubernetes


#### References
- https://wsvincent.com/django-docker-postgresql/
- https://github.com/jazzband/django-configurations
