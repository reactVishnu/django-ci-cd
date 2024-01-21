#!bin/bash

cd /var/lib/jenkins/workspace/django-cicd/

source env/bin/activate

cd your_project/
python3 manage.py test