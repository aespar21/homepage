REMOTEUSER ?= clyde
REMOTEHOST ?= okeeffe.stat.duke.edu
REMOTEDIR ?= ~/.public_html
REMOTE ?= $(REMOTEUSER)@$(REMOTEHOST):$(REMOTEDIR)

.PHONY: clean
clean:
	rm -rf _site/*

pull:
	curl -o _data/publications.json 'https://scholars.duke.edu/widgets/api/v0.9/people/publications/all.json?uri=https://scholars.duke.edu/individual/per4233252&formatting=detailed&style=yes&start=&end='

push: build
	rsync -az _site/* $(REMOTE)

build:  pull
	jekyll build

unbind:
	lsof -wni tcp:4000

serve:
	jekyll serve --watch --baseurl ''


