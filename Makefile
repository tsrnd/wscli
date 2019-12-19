.PHONY: clean build run test

clean:
	@rm -rf .build

build:
	@swift build

run:
	@swift run --skip-build ws $(ARGS)

test:
	@swift test
