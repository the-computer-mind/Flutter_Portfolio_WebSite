'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "1f1b2ab40fa3dcc168e258fdba15391d",
"assets/assets/images/blob_ash.png": "f76b87a8dd8bb4ad017b441854541a2b",
"assets/assets/images/blob_bean_ash.png": "bc902ac538eedf1abc48457bbf064fd1",
"assets/assets/images/blob_black.png": "14198d608b7f0980998d329cd353e290",
"assets/assets/images/blob_drumstick_black.png": "381f70d9f8dd4fbbb720214fa02939a2",
"assets/assets/images/blob_femur_ash.png": "b899f92250a0f7220db5c45bea2080c8",
"assets/assets/images/blob_small_bean_ash.png": "411605e065607a48e110cedc91bebd82",
"assets/assets/images/blog_01.jpg": "b389b26f607941e1da72814bffea44d7",
"assets/assets/images/blog_02.jpeg": "344b07cd58ca8c4fc3cab08e4aa8a5c2",
"assets/assets/images/blog_02.jpg": "01c4b84663980a0b4f55f4bd196492bd",
"assets/assets/images/blog_03.jpg": "4fea7f86ce68e4f18fd94a4fd015ef96",
"assets/assets/images/blog_1.jpg": "cd78990246f63c4d64ca5c26bcf31289",
"assets/assets/images/blog_3.jpg": "5f88a99b651c6dbad988d684c6fc41b3",
"assets/assets/images/box_cover_dark.png": "34f90bdba46732221c608605016c40d5",
"assets/assets/images/box_cover_gold.png": "a58f0270c1fd04d7eae1217c7e5645b9",
"assets/assets/images/dev_aboutme.png": "a1e722a3768923b5cade787c08d26459",
"assets/assets/images/dev_aboutme1.png": "21ea8f79cfc69b619c767fa9573b5295",
"assets/assets/images/dev_aboutme2.png": "e0554ee22dc928b6e29b9f8b5721388d",
"assets/assets/images/dev_award.png": "9330277f7c4279bb73c0f637f6871af1",
"assets/assets/images/dev_header.png": "6e4b03020cee4b554c35ef65a45b0a05",
"assets/assets/images/dots_globe_grey.png": "bb16bba932c2e98f3dbe3e6b1b6a864b",
"assets/assets/images/dots_globe_yellow.png": "d908b032e1a46382b6e6c2baf92e188c",
"assets/assets/images/dots_globe_yellow2.png": "d1394584431e43b6973ca031de59a284",
"assets/assets/images/ghana_flag.png": "b0afee866ab3333560a0072c5d53bce2",
"assets/assets/images/hi_there.png": "1ac6f5101b6a5511f4ad8f8965a49f89",
"assets/assets/images/icon_box.jpg": "7a18b9b091db5fe0fc16c76a3ffd5db2",
"assets/assets/images/logo_dark.png": "172c6851a256eb6ca04d9b99cc231ac8",
"assets/assets/images/logo_light.png": "708b0d915b6cededbda03f881683e529",
"assets/assets/images/portfolio_01.jpg": "43e7af9f9e24c8c4db73ee7d493c04f4",
"assets/assets/images/portfolio_02.jpg": "9beba509a25cfb96362aeb7e98335e58",
"assets/assets/images/portfolio_03.jpg": "45d7db96b72f25b4c76740e5dec2208e",
"assets/assets/images/portfolio_04.jpg": "ff07b0c6397e19d0cf30b03df9f196d2",
"assets/assets/images/portfolio_05.jpg": "9e5fedca2725d59b2692670505c8e7e5",
"assets/assets/images/portfolio_06.jpg": "015d9a88eeaa1a0f5e39b81d32e1bf87",
"assets/assets/images/shofick_1.jpg": "e2215f4d78334b3679799c86d0b864d1",
"assets/FontManifest.json": "cab905cb3aac16cd8f8b52a8d504c382",
"assets/fonts/MaterialIcons-Regular.otf": "95db9098c58fd6db106f1116bae85a0b",
"assets/images/BIODATA.pdf": "0098a2c4f561807c9f0064ccb22dd185",
"assets/images/deedy_resume.pdf": "7abb4d1961631143d23600178b3cb8f5",
"assets/images/pic1.jpeg": "f7e0c7d62056cc3137bc0cc17f6bc57c",
"assets/images/pic10.jpg": "018ba627ba61a1f9f56bd8bb52a9a387",
"assets/images/pic101.png": "e2bed538041a197d6c44537b30d1a26d",
"assets/images/pic102.gif": "c0224f6324f10974e0482820b1fe8a9d",
"assets/images/pic103.png": "a0d5184f8ba106025f0e3a2a168db839",
"assets/images/pic104.png": "fed0d69678a987180c5f88908bc0d978",
"assets/images/pic105.png": "96385896ceff1f85b15ed6984a1be730",
"assets/images/pic106.png": "c2b2c7bd15ba676b42b146cf0257a8e9",
"assets/images/pic107.jfif": "a20876a9adbf141c66610b7852422e8a",
"assets/images/pic108.jfif": "ccd28b4c096d1977d027f14708e0e7a7",
"assets/images/pic109.jfif": "0631080de0efd9d3fc49852662e783cc",
"assets/images/pic11.jpg": "59ba0916147e71c5ad34eacb4e2d7df7",
"assets/images/pic110.jfif": "886435a9874555d371649e0bddf26eff",
"assets/images/pic111.gif": "88612f94478814faac69b0c63a4780fb",
"assets/images/pic112.jfif": "fdf64ddd6b3459eca1afc9bc5902e270",
"assets/images/pic113.jfif": "2befdab3740fa4cbe2de3dc7a798a49f",
"assets/images/pic114.png": "17beab7c354f1e71ff2801109b8f0edb",
"assets/images/pic115.png": "550c98a93dd1c3125e4614ee3151e3ea",
"assets/images/pic116.jfif": "fef16bfc930bbb9e3eb2553ed1da8b6c",
"assets/images/pic117.png": "7e928df851c015cc5f450da2f48411ec",
"assets/images/pic118.jpeg": "8d44ad2ab33d538cba0efac7852b5f6b",
"assets/images/pic119.jpeg": "6d49ab73d023784d5036c78c45ab3967",
"assets/images/pic120.png": "ea39b948bcc12495cc2825782b9e645f",
"assets/images/pic121.png": "1f3bbe6d1220201e931afd6b91970a8f",
"assets/images/pic2.jpg": "93e932fcbb9c1db1e0a5829686bb746c",
"assets/images/pic3.png": "14b61ff3fbf71e2aa236380ee44a2d85",
"assets/images/pic4.jpg": "62faf8feb0638161021fb8f822453071",
"assets/images/pic5.jpg": "ecddcb730edf455705e72a6b66130033",
"assets/images/pic501.png": "4b16cfe4e55171a08a01126ba4495ef2",
"assets/images/pic506.png": "3c62dca1da5ea47cee95324888147879",
"assets/images/pic6.jpg": "b4c58c2d54b612e2c83596b109a71793",
"assets/images/pic7.jpg": "67944bdffd3e281e1750a4b89f312fe1",
"assets/images/pic8.jpg": "29041bd87a06ac88a870978d0ff531ae",
"assets/images/pic9.jpg": "3afc29061b7096887276615bde19a7b0",
"assets/images/shofick_pic.jpg": "e2215f4d78334b3679799c86d0b864d1",
"assets/NOTICES": "69c4625bcfcfb851a219dae8248b822f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/feather_icons/fonts/feather.ttf": "ad5435302c3c2d1f23f275d0f22d36c6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "b37ae0f14cbc958316fac4635383b6e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "5178af1d278432bec8fc830d50996d6f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "aa1ec80f1b30a51d64c72f669c1326a7",
"icons/logo.png": "508623330cb0250a035dd873fcc2ab9b",
"index.html": "7268be91c3a076632a515ac77276c548",
"/": "7268be91c3a076632a515ac77276c548",
"main.dart.js": "647ca104827024b0b63d384e22436a9f",
"manifest.json": "36489b17746c311dd09db8c27d40fa31",
"version.json": "0e8588d084d0b8819192f7e4b2dd0ea3"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
