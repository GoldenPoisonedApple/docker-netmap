# := 即時評価
PLUGIN_PATH := ~/.docker/cli-plugins
PLUGIN_FILE := docker-netmap

.PHONY: deploy
deploy:
	mkdir -p $(PLUGIN_PATH)
	cp ./docker-netmap $(PLUGIN_PATH)/$(PLUGIN_FILE)
	chmod +x $(PLUGIN_PATH)/$(PLUGIN_FILE)
	echo "----- deploy success -----"

uninstall:
	rm $(PLUGIN_PATH)/$(PLUGIN_FILE)
	echo "----- uninstall success -----"

info:
	docker info