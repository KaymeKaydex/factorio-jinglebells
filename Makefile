MOD_NAME=jinglebells
VERSION=$$(jq -r .version info.json)
MOD_FULL_NAME=$(MOD_NAME)_$(VERSION)

build:
	@echo building mod $(MOD_FULL_NAME)
	@mkdir $(MOD_FULL_NAME)
	@cp thumbnail.png $(MOD_FULL_NAME)
	@find ./ -name "*.json" -name "*.lua" -exec cp {} $(MOD_FULL_NAME) \;
	zip -r $(MOD_FULL_NAME).zip $(MOD_FULL_NAME)
	@rm -rf $(MOD_FULL_NAME)
	@echo builded $(MOD_FULL_NAME).zip

install:
	cp -f $(MOD_FULL_NAME).zip "/Users/maksim.konovalov/Library/Application Support/factorio/mods/$(MOD_FULL_NAME).zip"