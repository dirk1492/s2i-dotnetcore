VERSION = 1.0
NAME = dil001/s2i-dotnetcore
TYPES = sdk runtime

build:
	for type in $(TYPES) ; do \
	   docker build -f Dockerfile.$$type -t $(NAME)-$$type:$(VERSION) . ; \
	done

push:
	for type in $(TYPES) ; do \
	   docker push $(NAME)-$$type:$(VERSION) ; \
	done

clean:
	for type in $(TYPES) ; do \
	   docker rmi $(NAME)-$$type:$(VERSION) ; \
	done
	
