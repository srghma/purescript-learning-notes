$ next build
-----------------------------------------------------------------------------------
mappedPages

{
  '/_app': 'private-next-pages/_app.js',
  '/': 'private-next-pages/index.js',
  '/_error': 'next/dist/pages/_error',
  '/_document': 'next/dist/pages/_document'
}
-----------------------------------------------------------------------------------
entrypoints

{
  client: {
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_app.js': [
      'next-client-pages-loader?page=%2F_app&absolutePagePath=private-next-pages%2F_app.js!',
      '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/client/router.js'
    ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/index.js': 'next-client-pages-loader?page=%2F&absolutePagePath=private-next-pages%2Findex.js!',
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_error.js': 'next-client-pages-loader?page=%2F_error&absolutePagePath=next%2Fdist%2Fpages%2F_error!'
  },
  server: {
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_app.js': [ 'private-next-pages/_app.js' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/index.js': [ 'private-next-pages/index.js' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_error.js': [ 'next/dist/pages/_error' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_document.js': [ 'next/dist/pages/_document' ]
  }
}
-----------------------------------------------------------------------------------
pageKeys

[ '/_app', '/', '/_error', '/_document' ]
-----------------------------------------------------------------------------------
CLIENT_CONFIG

{
  externals: [ 'next' ],
  optimization: {
    checkWasmTypes: false,
    nodeEnv: false,
    splitChunks: {
      chunks: 'all',
      cacheGroups: {
        default: false,
        vendors: false,
        framework: {
          chunks: 'all',
          name: 'framework',
          test: /(?<!node_modules.*)[\\/]node_modules[\\/](react|react-dom|scheduler|prop-types|use-subscription)[\\/]/,
          priority: 40,
          enforce: true
        },
        lib: {
          test: [Function: test],
          name: [Function: name],
          priority: 30,
          minChunks: 1,
          reuseExistingChunk: true
        },
        commons: { name: 'commons', minChunks: 3, priority: 20 },
        shared: {
          name: [Function: name],
          priority: 10,
          minChunks: 2,
          reuseExistingChunk: true
        }
      },
      maxInitialRequests: 25,
      minSize: 20000
    },
    runtimeChunk: { name: 'static/runtime/webpack.js' },
    minimize: true,
    minimizer: [
      TerserPlugin {
        cpus: 7,
        distDir: '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
        workerThreads: false,
        options: {
          warningsFilter: [Function: warningsFilter],
          sourceMap: false,
          cache: true,
          terserOptions: {
            parse: { ecma: 8 },
            compress: { ecma: 5, warnings: false, comparisons: false, inline: 2 },
            mangle: { safari10: true },
            output: {
              ecma: 5,
              safari10: true,
              comments: false,
              ascii_only: true
            }
          }
        }
      },
      CssMinimizerPlugin {
        __next_css_remove: true,
        options: {
          postcssOptions: { map: { inline: false, annotation: false } }
        }
      }
    ]
  },
  context: '/home/srghma/projects/next.js/examples/with-redux-persist',
  node: { setImmediate: false },
  entry: {
    'static/runtime/main.js': './node_modules/next/dist/client/next.js',
    'static/runtime/polyfills.js': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/client/polyfills.js',
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_app.js': [
      'next-client-pages-loader?page=%2F_app&absolutePagePath=private-next-pages%2F_app.js!',
      '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/client/router.js'
    ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/index.js': 'next-client-pages-loader?page=%2F&absolutePagePath=private-next-pages%2Findex.js!',
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_error.js': 'next-client-pages-loader?page=%2F_error&absolutePagePath=next%2Fdist%2Fpages%2F_error!'
  },
  output: {
    path: '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
    filename: [Function: filename],
    libraryTarget: 'var',
    hotUpdateChunkFilename: 'static/webpack/[id].[hash].hot-update.js',
    hotUpdateMainFilename: 'static/webpack/[hash].hot-update.json',
    chunkFilename: 'static/chunks/[name].[contenthash].js',
    strictModuleExceptionHandling: true,
    crossOriginLoading: undefined,
    futureEmitAssets: true,
    webassemblyModuleFilename: 'static/wasm/[modulehash].wasm'
  },
  performance: false,
  resolve: {
    extensions: [ '.mjs', '.js', '.jsx', '.json', '.wasm' ],
    modules: [ 'node_modules' ],
    alias: {
      'next/head': 'next/dist/next-server/lib/head.js',
      'next/router': 'next/dist/client/router.js',
      'next/config': 'next/dist/next-server/lib/runtime-config.js',
      'next/dynamic': 'next/dist/next-server/lib/dynamic.js',
      next: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next',
      'private-next-pages': '/home/srghma/projects/next.js/examples/with-redux-persist/pages',
      'private-dot-next': '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
      'unfetch$': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/fetch/index.js',
      'isomorphic-unfetch$': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/fetch/index.js',
      'whatwg-fetch$': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/fetch/whatwg-fetch.js',
      'object-assign$': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object-assign.js',
      'object.assign/auto': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object.assign/auto.js',
      'object.assign/implementation': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object.assign/implementation.js',
      'object.assign$': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object.assign/index.js',
      'object.assign/polyfill': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object.assign/polyfill.js',
      'object.assign/shim': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/polyfills/object.assign/shim.js',
      url: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/native-url/dist/index.js'
    },
    mainFields: [ 'browser', 'module', 'main' ],
    plugins: [
      {
        apply: [Function: nothing],
        makePlugin: [Function (anonymous)],
        moduleLoader: [Function (anonymous)],
        topLevelLoader: { apply: [Function: nothing] },
        bind: [Function (anonymous)],
        tsLoaderOptions: [Function (anonymous)],
        forkTsCheckerOptions: [Function (anonymous)]
      }
    ]
  },
  resolveLoader: {
    alias: {
      'emit-file-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/emit-file-loader',
      'error-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/error-loader',
      'next-babel-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-babel-loader',
      'next-client-pages-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-client-pages-loader',
      'next-data-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-data-loader',
      'next-serverless-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-serverless-loader',
      'noop-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/noop-loader',
      'next-plugin-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-plugin-loader'
    },
    modules: [ 'node_modules' ],
    plugins: [
      {
        apply: [Function: nothing],
        makePlugin: [Function (anonymous)],
        moduleLoader: [Function (anonymous)],
        topLevelLoader: { apply: [Function: nothing] },
        bind: [Function (anonymous)],
        tsLoaderOptions: [Function (anonymous)],
        forkTsCheckerOptions: [Function (anonymous)]
      }
    ]
  },
  module: {
    rules: [
      {
        test: /\.(tsx|ts|js|mjs|jsx)$/,
        include: [
          '/home/srghma/projects/next.js/examples/with-redux-persist',
          /next[\\/]dist[\\/]next-server[\\/]lib/,
          /next[\\/]dist[\\/]client/,
          /next[\\/]dist[\\/]pages/,
          /[\\/](strip-ansi|ansi-regex)[\\/]/
        ],
        exclude: [Function: exclude],
        use: {
          loader: 'next-babel-loader',
          options: {
            isServer: false,
            distDir: '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
            pagesDir: '/home/srghma/projects/next.js/examples/with-redux-persist/pages',
            cwd: '/home/srghma/projects/next.js/examples/with-redux-persist',
            cache: true,
            babelPresetPlugins: [],
            hasModern: false,
            development: false
          }
        }
      },
      {
        oneOf: [
          {
            test: /a^/,
            loader: 'noop-loader',
            options: { __next_css_remove: true }
          },
          {
            test: /\.(css|scss|sass)$/,
            issuer: { test: /pages[\\/]_document\./ },
            use: {
              loader: 'error-loader',
              options: {
                reason: 'CSS \u001b[1mcannot\u001b[22m be imported within \u001b[36mpages/_document.js\u001b[39m. Please move global styles to \u001b[36mpages/_app.js\u001b[39m.'
              }
            }
          },
          {
            sideEffects: false,
            test: /\.module\.css$/,
            issuer: {
              include: [
                '/home/srghma/projects/next.js/examples/with-redux-persist'
              ],
              exclude: /node_modules/
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/mini-css-extract-plugin/dist/loader.js',
                options: { publicPath: '/_next/' }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: {
                  importLoaders: 1,
                  sourceMap: true,
                  onlyLocals: false,
                  modules: {
                    mode: 'pure',
                    getLocalIdent: [Function: getCssModuleLocalIdent]
                  }
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              }
            ]
          },
          {
            sideEffects: false,
            test: /\.module\.(scss|sass)$/,
            issuer: {
              include: [
                '/home/srghma/projects/next.js/examples/with-redux-persist'
              ],
              exclude: /node_modules/
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/mini-css-extract-plugin/dist/loader.js',
                options: { publicPath: '/_next/' }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: {
                  importLoaders: 3,
                  sourceMap: true,
                  onlyLocals: false,
                  modules: {
                    mode: 'pure',
                    getLocalIdent: [Function: getCssModuleLocalIdent]
                  }
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/resolve-url-loader/index.js',
                options: { sourceMap: true }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/sass-loader/dist/cjs.js',
                options: { sourceMap: true, sassOptions: {} }
              }
            ]
          },
          {
            test: [ /\.module\.css$/, /\.module\.(scss|sass)$/ ],
            use: {
              loader: 'error-loader',
              options: {
                reason: 'CSS Modules \u001b[1mcannot\u001b[22m be imported from within \u001b[1mnode_modules\u001b[22m.\n' +
                  'Read more: https://err.sh/next.js/css-modules-npm'
              }
            }
          },
          {
            sideEffects: true,
            test: /(?<!\.module)\.css$/,
            issuer: {
              include: '/home/srghma/projects/next.js/examples/with-redux-persist/pages/_app.js'
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/mini-css-extract-plugin/dist/loader.js',
                options: { publicPath: '/_next/' }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: { importLoaders: 1, sourceMap: true }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              }
            ]
          },
          {
            sideEffects: true,
            test: /(?<!\.module)\.(scss|sass)$/,
            issuer: {
              include: '/home/srghma/projects/next.js/examples/with-redux-persist/pages/_app.js'
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/mini-css-extract-plugin/dist/loader.js',
                options: { publicPath: '/_next/' }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: { importLoaders: 3, sourceMap: true }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/resolve-url-loader/index.js',
                options: { sourceMap: true }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/sass-loader/dist/cjs.js',
                options: { sourceMap: true, sassOptions: {} }
              }
            ]
          },
          {
            test: [ /(?<!\.module)\.css$/, /(?<!\.module)\.(scss|sass)$/ ],
            issuer: { include: [ /node_modules/ ] },
            use: {
              loader: 'error-loader',
              options: {
                reason: 'Global CSS \u001b[1mcannot\u001b[22m be imported from within \u001b[1mnode_modules\u001b[22m.\n' +
                  'Read more: https://err.sh/next.js/css-npm'
              }
            }
          },
          {
            test: [ /(?<!\.module)\.css$/, /(?<!\.module)\.(scss|sass)$/ ],
            use: {
              loader: 'error-loader',
              options: {
                reason: 'Global CSS \u001b[1mcannot\u001b[22m be imported from files other than your \u001b[1mCustom <App>\u001b[22m. Please move all global CSS imports to \u001b[36mpages/_app.js\u001b[39m.\n' +
                  'Read more: https://err.sh/next.js/css-global'
              }
            }
          },
          {
            issuer: { test: /\.(css|scss|sass)$/ },
            exclude: [ /\.(js|mjs|jsx|ts|tsx)$/, /\.html$/, /\.json$/ ],
            use: {
              loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/file-loader/cjs.js',
              options: { name: 'static/media/[name].[hash].[ext]' }
            }
          }
        ]
      }
    ],
    strictExportPresence: true
  },
  plugins: [
    ChunkNamesPlugin {},
    DefinePlugin {
      definitions: {
        'process.env.NODE_ENV': '"production"',
        'process.crossOrigin': undefined,
        'process.browser': 'true',
        'process.env.__NEXT_TEST_MODE': undefined,
        'process.env.__NEXT_EXPORT_TRAILING_SLASH': 'false',
        'process.env.__NEXT_MODERN_BUILD': 'false',
        'process.env.__NEXT_GRANULAR_CHUNKS': 'true',
        'process.env.__NEXT_BUILD_INDICATOR': 'true',
        'process.env.__NEXT_PRERENDER_INDICATOR': 'true',
        'process.env.__NEXT_PLUGINS': 'false',
        'process.env.__NEXT_STRICT_MODE': 'false',
        'process.env.__NEXT_REACT_MODE': '"legacy"',
        'process.env.__NEXT_ROUTER_BASEPATH': '""',
        'process.env.__NEXT_FID_POLYFILL': 'false'
      }
    },
    ReactLoadablePlugin { filename: 'react-loadable-manifest.json' },
    DropClientPage { ampPages: Set(0) {} },
    HashedModuleIdsPlugin {
      options: {
        context: null,
        hashFunction: 'md4',
        hashDigest: 'base64',
        hashDigestLength: 4
      }
    },
    IgnorePlugin {
      options: {
        checkResource: [Function: checkResource],
        checkContext: [Function: checkContext]
      },
      checkIgnore: [Function: bound checkIgnore]
    },
    BuildManifestPlugin {
      buildId: '3jyQGN6sm2R2wLnjTfCZd',
      clientManifest: true,
      modern: false
    },
    NextMiniCssExtractPlugin {
      options: {
        filename: 'static/css/[contenthash].css',
        moduleFilename: [Function: moduleFilename],
        ignoreOrder: true,
        chunkFilename: 'static/css/[contenthash].css'
      },
      __next_css_remove: true
    }
  ],
  mode: 'production',
  name: 'client',
  target: 'web',
  devtool: false
}
-----------------------------------------------------------------------------------
SERVER_CONFIG

{
  externals: [ [Function (anonymous)] ],
  optimization: {
    checkWasmTypes: false,
    nodeEnv: false,
    splitChunks: false,
    runtimeChunk: undefined,
    minimize: false,
    minimizer: [
      TerserPlugin {
        cpus: 7,
        distDir: '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
        workerThreads: false,
        options: {
          warningsFilter: [Function: warningsFilter],
          sourceMap: false,
          cache: true,
          terserOptions: {
            parse: { ecma: 8 },
            compress: { ecma: 5, warnings: false, comparisons: false, inline: 2 },
            mangle: { safari10: true },
            output: {
              ecma: 5,
              safari10: true,
              comments: false,
              ascii_only: true
            }
          }
        }
      },
      CssMinimizerPlugin {
        __next_css_remove: true,
        options: {
          postcssOptions: { map: { inline: false, annotation: false } }
        }
      }
    ]
  },
  context: '/home/srghma/projects/next.js/examples/with-redux-persist',
  node: { setImmediate: false },
  entry: {
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_app.js': [ 'private-next-pages/_app.js' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/index.js': [ 'private-next-pages/index.js' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_error.js': [ 'next/dist/pages/_error' ],
    'static/3jyQGN6sm2R2wLnjTfCZd/pages/_document.js': [ 'next/dist/pages/_document' ],
    'init-server.js': 'next-plugin-loader?middleware=on-init-server!',
    'on-error-server.js': 'next-plugin-loader?middleware=on-error-server!'
  },
  output: {
    path: '/home/srghma/projects/next.js/examples/with-redux-persist/.next/server',
    filename: [Function: filename],
    libraryTarget: 'commonjs2',
    hotUpdateChunkFilename: 'static/webpack/[id].[hash].hot-update.js',
    hotUpdateMainFilename: 'static/webpack/[hash].hot-update.json',
    chunkFilename: '[name].[contenthash].js',
    strictModuleExceptionHandling: true,
    crossOriginLoading: undefined,
    futureEmitAssets: true,
    webassemblyModuleFilename: 'static/wasm/[modulehash].wasm'
  },
  performance: false,
  resolve: {
    extensions: [ '.js', '.mjs', '.jsx', '.json', '.wasm' ],
    modules: [ 'node_modules' ],
    alias: {
      'next/head': 'next/dist/next-server/lib/head.js',
      'next/router': 'next/dist/client/router.js',
      'next/config': 'next/dist/next-server/lib/runtime-config.js',
      'next/dynamic': 'next/dist/next-server/lib/dynamic.js',
      next: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next',
      'private-next-pages': '/home/srghma/projects/next.js/examples/with-redux-persist/pages',
      'private-dot-next': '/home/srghma/projects/next.js/examples/with-redux-persist/.next'
    },
    mainFields: [ 'main', 'module' ],
    plugins: [
      {
        apply: [Function: nothing],
        makePlugin: [Function (anonymous)],
        moduleLoader: [Function (anonymous)],
        topLevelLoader: { apply: [Function: nothing] },
        bind: [Function (anonymous)],
        tsLoaderOptions: [Function (anonymous)],
        forkTsCheckerOptions: [Function (anonymous)]
      }
    ]
  },
  resolveLoader: {
    alias: {
      'emit-file-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/emit-file-loader',
      'error-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/error-loader',
      'next-babel-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-babel-loader',
      'next-client-pages-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-client-pages-loader',
      'next-data-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-data-loader',
      'next-serverless-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-serverless-loader',
      'noop-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/noop-loader',
      'next-plugin-loader': '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/build/webpack/loaders/next-plugin-loader'
    },
    modules: [ 'node_modules' ],
    plugins: [
      {
        apply: [Function: nothing],
        makePlugin: [Function (anonymous)],
        moduleLoader: [Function (anonymous)],
        topLevelLoader: { apply: [Function: nothing] },
        bind: [Function (anonymous)],
        tsLoaderOptions: [Function (anonymous)],
        forkTsCheckerOptions: [Function (anonymous)]
      }
    ]
  },
  module: {
    rules: [
      {
        test: /\.(tsx|ts|js|mjs|jsx)$/,
        include: [
          '/home/srghma/projects/next.js/examples/with-redux-persist',
          /next[\\/]dist[\\/]next-server[\\/]lib/,
          /next[\\/]dist[\\/]client/,
          /next[\\/]dist[\\/]pages/,
          /[\\/](strip-ansi|ansi-regex)[\\/]/
        ],
        exclude: [Function: exclude],
        use: {
          loader: 'next-babel-loader',
          options: {
            isServer: true,
            distDir: '/home/srghma/projects/next.js/examples/with-redux-persist/.next',
            pagesDir: '/home/srghma/projects/next.js/examples/with-redux-persist/pages',
            cwd: '/home/srghma/projects/next.js/examples/with-redux-persist',
            cache: true,
            babelPresetPlugins: [],
            hasModern: false,
            development: false
          }
        }
      },
      {
        oneOf: [
          {
            test: /a^/,
            loader: 'noop-loader',
            options: { __next_css_remove: true }
          },
          {
            test: /\.(css|scss|sass)$/,
            issuer: { test: /pages[\\/]_document\./ },
            use: {
              loader: 'error-loader',
              options: {
                reason: 'CSS \u001b[1mcannot\u001b[22m be imported within \u001b[36mpages/_document.js\u001b[39m. Please move global styles to \u001b[36mpages/_app.js\u001b[39m.'
              }
            }
          },
          {
            sideEffects: false,
            test: /\.module\.css$/,
            issuer: {
              include: [
                '/home/srghma/projects/next.js/examples/with-redux-persist'
              ],
              exclude: /node_modules/
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: {
                  importLoaders: 1,
                  sourceMap: true,
                  onlyLocals: true,
                  modules: {
                    mode: 'pure',
                    getLocalIdent: [Function: getCssModuleLocalIdent]
                  }
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              }
            ]
          },
          {
            sideEffects: false,
            test: /\.module\.(scss|sass)$/,
            issuer: {
              include: [
                '/home/srghma/projects/next.js/examples/with-redux-persist'
              ],
              exclude: /node_modules/
            },
            use: [
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/css-loader/dist/cjs.js',
                options: {
                  importLoaders: 3,
                  sourceMap: true,
                  onlyLocals: true,
                  modules: {
                    mode: 'pure',
                    getLocalIdent: [Function: getCssModuleLocalIdent]
                  }
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/postcss-loader/index.js',
                options: {
                  ident: '__nextjs_postcss',
                  plugins: [
                    [Function: creator] {
                      process: [Function (anonymous)]
                    },
                    [Function (anonymous)] {
                      postcssPlugin: 'postcss-preset-env',
                      postcssVersion: '7.0.26'
                    }
                  ],
                  sourceMap: true
                }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/resolve-url-loader/index.js',
                options: { sourceMap: true }
              },
              {
                loader: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/sass-loader/dist/cjs.js',
                options: { sourceMap: true, sassOptions: {} }
              }
            ]
          },
          {
            test: [ /\.module\.css$/, /\.module\.(scss|sass)$/ ],
            use: {
              loader: 'error-loader',
              options: {
                reason: 'CSS Modules \u001b[1mcannot\u001b[22m be imported from within \u001b[1mnode_modules\u001b[22m.\n' +
                  'Read more: https://err.sh/next.js/css-modules-npm'
              }
            }
          },
          {
            test: [ /(?<!\.module)\.css$/, /(?<!\.module)\.(scss|sass)$/ ],
            use: '/home/srghma/projects/next.js/examples/with-redux-persist/node_modules/next/dist/compiled/ignore-loader/index.js'
          },
          {
            test: [ /(?<!\.module)\.css$/, /(?<!\.module)\.(scss|sass)$/ ],
            issuer: { include: [ /node_modules/ ] },
            use: {
              loader: 'error-loader',
              options: {
                reason: 'Global CSS \u001b[1mcannot\u001b[22m be imported from within \u001b[1mnode_modules\u001b[22m.\n' +
                  'Read more: https://err.sh/next.js/css-npm'
              }
            }
          },
          {
            test: [ /(?<!\.module)\.css$/, /(?<!\.module)\.(scss|sass)$/ ],
            use: {
              loader: 'error-loader',
              options: {
                reason: 'Global CSS \u001b[1mcannot\u001b[22m be imported from files other than your \u001b[1mCustom <App>\u001b[22m. Please move all global CSS imports to \u001b[36mpages/_app.js\u001b[39m.\n' +
                  'Read more: https://err.sh/next.js/css-global'
              }
            }
          }
        ]
      }
    ],
    strictExportPresence: true
  },
  plugins: [
    ChunkNamesPlugin {},
    DefinePlugin {
      definitions: {
        'process.env.NODE_ENV': '"production"',
        'process.crossOrigin': undefined,
        'process.browser': 'false',
        'process.env.__NEXT_TEST_MODE': undefined,
        'process.env.__NEXT_EXPORT_TRAILING_SLASH': 'false',
        'process.env.__NEXT_MODERN_BUILD': 'false',
        'process.env.__NEXT_GRANULAR_CHUNKS': 'true',
        'process.env.__NEXT_BUILD_INDICATOR': 'true',
        'process.env.__NEXT_PRERENDER_INDICATOR': 'true',
        'process.env.__NEXT_PLUGINS': 'false',
        'process.env.__NEXT_STRICT_MODE': 'false',
        'process.env.__NEXT_REACT_MODE': '"legacy"',
        'process.env.__NEXT_ROUTER_BASEPATH': '""',
        'process.env.__NEXT_FID_POLYFILL': 'false',
        'global.GENTLY': 'false'
      }
    },
    HashedModuleIdsPlugin {
      options: {
        context: null,
        hashFunction: 'md4',
        hashDigest: 'base64',
        hashDigestLength: 4
      }
    },
    IgnorePlugin {
      options: {
        checkResource: [Function: checkResource],
        checkContext: [Function: checkContext]
      },
      checkIgnore: [Function: bound checkIgnore]
    },
    PagesManifestPlugin { serverless: false },
    NextJsSsrImportPlugin {
      options: {
        outputPath: '/home/srghma/projects/next.js/examples/with-redux-persist/.next/server'
      }
    },
    NextJsSsrImportPlugin {}
  ],
  mode: 'production',
  name: 'server',
  target: 'node',
  devtool: false
}
Creating an optimized production build

Compiled successfully.

Warning: You have opted-out of Automatic Static Optimization due to `getInitialProps` in `pages/_app`. This does not opt-out pages with `getStaticProps`
Read more: https://err.sh/next.js/opt-out-auto-static-optimization

Automatically optimizing pages

Page                                                           Size     First Load JS
┌ λ /                                                          4.93 kB        74.4 kB
├   /_app                                                      2.36 kB        69.4 kB
└ λ /404                                                       3.15 kB        72.6 kB
+ First Load JS shared by all                                  69.4 kB
  ├ static/pages/_app.js                                       2.36 kB
  ├ chunks/961dc6580d8be09e827120adf561293344ea7676.d8afe6.js  9.63 kB
  ├ chunks/f030cf12aaadc5ab3906cf00413639c85fabd1c4.8e3eee.js  10.4 kB
  ├ chunks/framework.01fb8c.js                                 40.3 kB
  ├ runtime/main.f941db.js                                     5.98 kB
  └ runtime/webpack.b65cab.js                                  746 B

λ  (Server)  server-side renders at runtime (uses getInitialProps or getServerSideProps)
○  (Static)  automatically rendered as static HTML (uses no initial props)
●  (SSG)     automatically generated as static HTML + JSON (uses getStaticProps)

Done in 5.93s.
