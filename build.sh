#!/usr/bin/env bash

java -jar ./tools/ClosureCompiler.jar \
    --js_output_file ./dist/ccm.min.js \
    --js ./src/Constants.js \
        ./src/extensions.js \
        ./src/CustomContextMenuItem.js \
        ./src/CustomContextMenu.js