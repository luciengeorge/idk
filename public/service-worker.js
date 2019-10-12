// CODELAB: Add list of files to cache here.
const CACHE_NAME = 'my-site-cache-v1';
const FILES_TO_CACHE = [
  '/offline.html',
];

// CODELAB: Precache static resources here.
self.addEventListener('install', (evt) => {
  evt.waitUntil(
      caches.open(CACHE_NAME).then((cache) => {
        console.log('[ServiceWorker] Pre-caching offline page');
        return cache.addAll(FILES_TO_CACHE);
      })
  );
});

// CODELAB: Remove previous cached data from disk.
self.addEventListener('activate', (evt) => {
  evt.waitUntil(
      caches.keys().then((keyList) => {
        return Promise.all(keyList.map((key) => {
          if (key !== CACHE_NAME) {
            console.log('[ServiceWorker] Removing old cache', key);
            return caches.delete(key);
          }
        }));
      })
  );
});

// CODELAB: Add fetch event handler here.
self.addEventListener('fetch', (evt) => {
  if (evt.request.mode !== 'navigate') {
    // Not a page navigation, bail.
    return;
  }
  evt.respondWith(
    fetch(evt.request)
      .catch(() => {
        return caches.open(CACHE_NAME)
          .then((cache) => {
            return cache.match('offline.html');
          });
      })
  );
});
