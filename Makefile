.PHONY: all install uninstall remove build debug clean

all: build

install: build
	@echo "\033[31mInstalling DWL...\033[0;0m"
	cd dwl; make install

uninstall: remove
remove:
	@echo "\033[31mRemoving DWL...\033[0;0m"
	cd dwl; make uninstall

build: patch
	@echo "\033[32mBuilding source...\033[0;0m"
	cd dwl; make

debug: patch
	@echo "\033[33mMaking sure we build for debug...\033[0;0m"
	sh -c "./scripts/chmod.sh"
	@echo "\033[33mBuilding source...\033[0;0m"
	cd dwl; make

patch: clean
	@echo "\033[32mApplying patches to DWL...\033[0;0m"
	sh -c "./scripts/patch.sh"

clean:
	@echo "\033[32mGetting DWL's source...\033[0;0m"
	sh -c "./scripts/checkout.sh"
