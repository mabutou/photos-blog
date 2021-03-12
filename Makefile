build: build-images build-index build-web

build-images:
	time ./bin/imagic.sh

build-index:
	time node src/scripts/gen.js

build-web:
	time npm run build

build-wrangler:
	time wrangler publish