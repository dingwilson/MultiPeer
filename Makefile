all: 

docs:
	rm -rf docs
	jazzy --config .jazzy.yml --min-acl internal
	cp -r Assets docs/
