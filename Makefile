build/%.iso: build/%.cfg
	./build-configuration-iso.sh build/$*.cfg build/$*.iso

build/%.cfg: kickstart.cfg.j2
	ansible-playbook -i Inventory.txt -l $* playbooks/install.yaml

.PHONY: clean
clean:
	rm -rf build/*
