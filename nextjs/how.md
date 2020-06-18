# <Link> preload

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/client/page-loader.js#L247

https://web.dev/route-prefetching-in-nextjs/#how-automatic-prefetching-works

# Page code splitting

https://webpack.js.org/guides/code-splitting/

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/build/index.ts#L202-L225

https://github.com/zeit/next.js/blob/3036463080d7905aa22da46e63f6c50dd50adc3c/packages/next/build/index.ts#L312

# how page is prefetched

1. where from

https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/next-server/lib/router/router.ts#L726-L759

2. MEAT!!!!

note 2g

https://github.com/zeit/next.js/blob/7dbdf1d89e/packages/next/client/page-loader.js#L337-L353

3. IF i'm going to implement granual chunking

https://github.com/zeit/next.js/blob/7dbdf1d89e/packages/next/client/page-loader.js#L83-L92

# how page is loaded

1. https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/client/link.tsx#L204

2. https://github.com/vercel/next.js/blob/f92571d502877ecc5d85307e9b97de5ccf68af09/packages/next/next-server/lib/router/router.ts#L363-L377

3. component is fetched here https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/next-server/lib/router/router.ts#L604

4. how `this.pageLoader.loadPage(route)` is done

4.1 event handler is registered https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/client/page-loader.js#L205

4.2 script is added to the page, error is emitted https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/client/page-loader.js#L266

4.3 OR

registerPage is called https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/client/page-loader.js#L272

here https://github.com/zeit/next.js/blob/7dbdf1d89eef004170d8f2661b4b3c299962b1f8/packages/next/client/index.js#L58

4.4. MEAT!!!!

`window.__NEXT_P` created here https://github.com/zeit/next.js/blob/7dbdf1d89eef004170d8f2661b4b3c299962b1f8/packages/next/client/index.js#L58-L63

PUSH IS REPLACED WITH REGISTER!!

rendered here https://github.com/zeit/next.js/blob/b88f20c90bf4659b8ad5cb2a27956005eac2c7e8/packages/next/build/entries.ts#L131

plugin here https://github.com/vercel/next.js/blob/b88f20c90bf4659b8ad5cb2a27956005eac2c7e8/packages/next/build/webpack/loaders/next-client-pages-loader.ts


------------------

# next/data?

https://github.com/zeit/next.js/blob/5a0dcbc95b/packages/next/build/webpack/loaders/next-data-loader.ts

https://github.com/zeit/next.js/blob/42a328f3e44a560d45821a582beb257fdeea10af/packages/next/build/webpack/loaders/next-babel-loader.js#L146

SUMMARY: have no idea
