start:
	python3 manage.py runserver --settings=config.settings.dev

dev-install:
	pip install -r requirements/dev.txt

dev-m:
	python3 manage.py migrate --settings=config.settings.dev

dev-makem:
	python3 manage.py makemigrations --settings=config.settings.dev

dev-showm:
	python3 manage.py showmigrations --settings=config.settings.dev

dev-sqlm:
	python3 manage.py sqlmigrate $(a) $(m) --settings=config.settings.dev

dev-dbshell:
	python3 manage.py dbshell --settings=config.settings.dev

dev-shell:
	python3 manage.py shell --settings=config.settings.dev

dev-super:
	python3 manage.py createsuperuser --settings=config.settings.dev

prod-install:
	pip install -r requirements/prod.txt
prod-m:
	python3 manage.py migrate --settings=config.settings.prod

prod-makem:
	python3 manage.py makemigrations --settings=config.settings.prod

prod-showm:
	python3 manage.py showmigrations --settings=config.settings.prod
prod-gunicorn:
	gunicorn --env DJANGO_SETTINGS_MODULE=settings.prod --bind 0.0.0.0:8000 -c config/prod/prod.py --log-file -	

