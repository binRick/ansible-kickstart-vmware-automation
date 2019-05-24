build/%.iso: build/%.cfg
	./build-configuration-iso.sh build/$*.cfg build/$*.iso

build/%.cfg: kickstart.cfg.j2
	ansible-playbook --limit $* template-kickstart.yml

.PHONY: clean
clean:
	rm -rf build/*