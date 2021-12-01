SHELL := /bin/bash -euxo pipefail

build:
	docker build -t fuhrysteve/postgresql-client:latest .

push:
	docker push fuhrysteve/postgresql-client:latest
