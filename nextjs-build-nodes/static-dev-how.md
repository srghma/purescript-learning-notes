TODO https://graphql-pokemon.now.sh/?query=query%20%7B%0A%20%20pokemons(first%3A%201000)%20%7B%0A%20%20%20%20id%0A%20%20%7D%0A%7D

```js
# server/hot-reloader
# build/index

async start() {
  await this.clean();
  const configs = await this.getWebpackConfig();

  console.log('-----------------------------------------------------------------------------------')
  console.log('CLIENT_CONFIG')
  console.log('')
  console.log(require('util').inspect(configs[0], {showHidden: false, depth: null, colors: true}))

  console.log('-----------------------------------------------------------------------------------')
  console.log('SERVER_CONFIG')
  console.log('')
  console.log(require('util').inspect(configs[1], {showHidden: false, depth: null, colors: true}))

  const multiCompiler = (0, _webpack.default)(configs);
  const buildTools = await this.prepareBuildTools(multiCompiler);
  this.assignBuildTools(buildTools);
  this.stats = (await this.waitUntilValid()).stats[0];
}

const mappedPages = (0, _entries.createPagesMapping)(pagePaths, config.pageExtensions);

console.log('-----------------------------------------------------------------------------------')
console.log('mappedPages')
console.log('')
console.log(require('util').inspect(mappedPages, {showHidden: false, depth: null, colors: true}))

const entrypoints = (0, _entries.createEntrypoints)(mappedPages, target, buildId, previewProps, config);

console.log('-----------------------------------------------------------------------------------')
console.log('entrypoints')
console.log('')
console.log(require('util').inspect(entrypoints, {showHidden: false, depth: null, colors: true}))

const pageKeys = Object.keys(mappedPages);

console.log('-----------------------------------------------------------------------------------')
console.log('pageKeys')
console.log('')
console.log(require('util').inspect(pageKeys, {showHidden: false, depth: null, colors: true}))
```

```sh
find ./.next -type f \( -name "*.js" -o -name "*.html" -o -name "*.json" \) -exec js-beautify --replace {} \;
find ./node_modules/next/dist -type f \( -name "*.js" -o -name "*.html" -o -name "*.json" \) -exec js-beautify --replace {} \;
js-beautify --replace node_modules/next/dist/bin/next
```

```sh
~/projects/next.js/examples/active-class-name   master  tree --dirsfirst .next
.next
├── cache
│   ├── next-babel-loader
....
│   │   └── ed9676c8d3e02635cceda8be8ea5ac68.json
│   └── next-minifier
....
│       └── a3748547463
├── server
│   ├── static
│   │   └── zPaaV4a_BNeS4MhnhUkVx
│   │       └── pages
│   │           ├── 404.html
│   │           ├── about.html
│   │           ├── _app.js
│   │           ├── _document.js
│   │           ├── _error.js
│   │           └── index.html
│   ├── init-server.js
│   ├── on-error-server.js
│   ├── pages-manifest.json
│   └── ssr-module-cache.js
├── static
│   ├── chunks
│   │   ├── 6ad54575ef4a88f2e95b1bf39ca2971ecc12c165.2b3ba084d4cf6b04c88d.js
│   │   ├── commons.05ec64ae5bd7ac6d1f60.js
│   │   └── framework.98c1b221acb34aa9927b.js
│   ├── runtime
│   │   ├── main-63a2211aad5c638c5d32.js
│   │   ├── polyfills-3e9de6c2fc7cefd2c9d7.js
│   │   └── webpack-b65cab0b00afd201cbda.js
│   └── zPaaV4a_BNeS4MhnhUkVx
│       ├── pages
│       │   ├── about.js
│       │   ├── _app.js
│       │   ├── _error.js
│       │   └── index.js
│       ├── _buildManifest.js
│       └── _ssgManifest.js
├── BUILD_ID
├── build-manifest.json
├── export-marker.json
├── prerender-manifest.json
├── react-loadable-manifest.json
└── routes-manifest.json
```

