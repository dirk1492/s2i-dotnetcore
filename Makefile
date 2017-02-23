SUBDIRS = 1.0 1.1

build:
	for dir in $(SUBDIRS) ; do \
	   $(MAKE) -C $$dir build ; \
	done

push:
	for dir in $(SUBDIRS) ; do \
	   $(MAKE) -C $$dir push ; \
	done

clean:
	for dir in $(SUBDIRS) ; do \
	   $(MAKE) -C $$dir clean ; \
	done

	docker rm $(docker ps -a | grep Exited | awk '{ print $1 }')
	docker rmi $(docker images | grep "^<none>" | awk '{ print $3 }')
	
