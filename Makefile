targets := desktop desktop.system desk.acc preview

.PHONY: all $(targets) mount

all: $(targets) mount

# Build all targets
$(targets):
	@tput setaf 3 && echo "Building: $@" && tput sgr0
	@$(MAKE) -C $@ \
	  && (tput setaf 2 && echo "make $@ good" && tput sgr0) \
          || (tput blink && tput setaf 1 && echo "MAKE $@ BAD" && tput sgr0 && false)

# If mount/ exists, populate as a mountable directory for Virtual ][
mount:
	@if [ -d mount ]; then res/mount.sh; fi

# Clean all temporary/target files
clean:
	@for dir in $(targets); do \
	  tput setaf 2 && echo "cleaning $$dir" && tput sgr0; \
	  $(MAKE) -C $$dir clean; \
	done
