PROJECT_NAME := multidirectional_graph

build: setup twine clean
	echo build

setup:
	python setup.py sdist
	python setup.py bdist_wheel

twine:
	twine upload dist/*

clean:
	rm -r build
	rm -r dist
	rm -r $(PROJECT_NAME).egg-info/