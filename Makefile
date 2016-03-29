# Definitions

# Steps (must use tabs)
all: test

test:
	mkdir test_output
	./trimToNearest.py -t test_input/target.bed -l test_input/cnv.files -m test_output/markers.txt -s test_output/segments.txt
	diff test_output/markers.txt expected_output/markers.txt
	diff test_output/segments.txt expected_output/segments.txt
