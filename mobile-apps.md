# meta

## images

https://content.altexsoft.com/media/2018/02/Xamarin-vs-Ionic-vs-React_main-1.png

https://i.pinimg.com/564x/91/88/8e/91888e60f17af9a3cb351561dd1b3cde.jpg

https://www.mindk.com/blog/wp-content/uploads/2018/08/Fiction-vs-Non-Fiction-min-e1533549763538.png

## posts

https://www.altexsoft.com/blog/engineering/xamarin-vs-react-native-vs-ionic-vs-nativescript-cross-platform-mobile-frameworks-comparison/

snabbdom with ios - nothing

# cordova

https://cordova.apache.org/docs/en/latest/guide/hybrid/plugins/index.html


# capacitor

capacitor vs cordova - capacitor is [have less glue](https://www.youtube.com/watch?v=9SMDqWam_B0)

# native script

doesnt use cordova and webviews

xml instead of html, css, native runtime

you can reuse packages from npm, CocoaPods, and Gradle (builer, JVM, Android, C++, Swift, Objective C, and other ecosystems)

React Native requires you to build bridge APIs. NativeScript directly injects iOS and Android APIs into JavaScript Virtual Machines.

------------

how react-nativescript is working

https://github.com/shirakaba/react-nativescript/blob/d617cab1e373e4b217c28ebcf7e18896dd5a694f/react-nativescript/src/client/HostConfig.ts#L456-L469

https://github.com/shirakaba/react-nativescript/blob/d617cab1e373e4b217c28ebcf7e18896dd5a694f/react-nativescript/src/client/ReactNativeScript.ts#L168

how nativescript-angular is working

https://github.com/NativeScript/nativescript-angular/blob/35ca4fa681389390480c74e330bc93a074dbe02e/nativescript-angular/directives/action-bar.ts#L102

https://github.com/NativeScript/nativescript-angular/blob/35ca4fa681389390480c74e330bc93a074dbe02e/nativescript-angular/directives/action-bar.ts#L82

https://github.com/NativeScript/nativescript-angular/blob/e0d19b3749050d09dfee0829d5fa85f53e16b922/tests/app/main.ts#L123


how xml is parsed https://github.com/NativeScript/NativeScript/blob/bd9828a0367b30bd332070c92a5f2f921461c5a8/nativescript-core/ui/builder/builder.ts#L572-L586

# react native

doesn’t use a WebView-based wrapper

React Native uses JIT compilation (js is compiled to java bitecode) for Android but it doesn’t provide AOT for iOS. In case of iOS, it doesn’t compile but interprets the JavaScript code.

JavaScriptCore virtual machine both for iOS and Android


android bridge (toast) - http://reactnative.dev/docs/native-modules-android.html

ios bridge (calendar) - http://reactnative.dev/docs/native-modules-ios.html

https://thoughtbot.com/blog/elm-native-ui-in-production - elm to react native

------------

how to create custom renderer

https://github.com/facebook/react/blob/master/packages/react-reconciler/README.md

https://medium.com/@agent_hunt/introduction-to-react-native-renderers-aka-react-native-is-the-java-and-react-native-renderers-are-828a0022f433

# ionic

cordova (webview)

sass

angularjs and others

test in browser

jit bitecode for android, WKWebView browser for ios (too with JIT conversion of JS code down to machine code)

# other
http://www.rubymotion.com/
https://tabris.com/

framework7 - https://github.com/polendri/purescript-halogen-framework7/blob/master/src/Framework7.purs
