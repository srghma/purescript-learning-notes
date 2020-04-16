# <Link> preload

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/client/page-loader.js#L247

https://web.dev/route-prefetching-in-nextjs/#how-automatic-prefetching-works

# Page code splitting

https://webpack.js.org/guides/code-splitting/

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/build/index.ts#L202-L225

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/build/index.ts#L312

how page is prefetched

1. where from

https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/next-server/lib/router/router.ts#L726-L759

2. meat, 2g too

https://github.com/zeit/next.js/blob/7dbdf1d89e/packages/next/client/page-loader.js#L337-L353

3. IF i'm going to implement granual chunking

https://github.com/zeit/next.js/blob/7dbdf1d89e/packages/next/client/page-loader.js#L83-L92
