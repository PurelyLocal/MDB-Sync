# Define variables
SRC_DIR = src
BUILD_DIR = build
DIST_DIR = dist
PLUGIN_NAME = mdbsync-plugin

# Build command
build:
	@echo "Building the project..."
	npm run build

# Release command
release: build
	@echo "Releasing the project..."
	mkdir -p $(DIST_DIR)
	cp -r $(BUILD_DIR)/* $(DIST_DIR)/

# Clean command
clean:
	@echo "Cleaning up..."
	rm -rf $(BUILD_DIR) $(DIST_DIR)

# Shortcuts
.PHONY: all
all: clean build release
