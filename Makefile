.PHONY: all clean

all: build

build: patch
	@echo "\033[32mBuilding source...\033[0;0m"
	cd dwl; make
	@echo "\033[32;1mEverything done.\033[0;0m"

patch: clean
	@echo "\033[32mApplying patches to DWL...\033[0;0m"
	sh -c "./scripts/apply-patches.sh"

clean:
	@echo "\033[32mGetting DWL's source...\033[0;0m"
	sh -c "./scripts/checkout-dwl.sh"
