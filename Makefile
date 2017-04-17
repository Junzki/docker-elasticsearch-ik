#!/bin/make
ik_dir=elasticsearch-analysis-ik

ik:
	cd $(ik_dir); mvn package
	cp $(ik_dir)/target/releases/elasticsearch-analysis-ik-5.1.1.zip ./

config:
	cp -r $(ik_dir)/config ./

clean:
	rm -r config
	rm -r $(ik_dir)/target/
