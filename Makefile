PROJECT_NAME := multidirectional_graph

build:
	python setup.py sdist
	python setup.py bdist_wheel
	twine upload dist/*
	rm -r build
	rm -r dist
	rm -r $(PROJECT_NAME).egg-info/