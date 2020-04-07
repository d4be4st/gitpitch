@title[Intro]

# How our servers work?

@snap[south-west span-100 subtitle]
STJEPAN HADJIĆ
@snapend

---

@title[App vs Web Server]

## @color[#E1473B](App vs Web Server)

@ul
- Web server
  * HTML, JS, CSS, Images
  * Apache, @color[#E1473B](Nginx)
- App server
  * Backend
  * @color[#E1473B](Passenger), unicorn, puma, thin, webrick
@ulend

---

@title[Nginx]

## @color[#E1473B](Nginx)

@ul
* Web server
* Has an asynchronous, event-driven architecture
* https://www.nginx.com/blog/inside-nginx-how-we-designed-for-performance-scale/
@ulend

+++

@title[Nginx]

## @color[#E1473B](host.conf)

```
server {
  listen 80;
  server_name atlas.pmiapps.com;

  location / {
    return 301 https://$server_name$request_uri;
  }
}

server {
  listen 443 ssl;
  server_name atlas.pmiapps.com;

  access_log /var/log/nginx/atlas.pmiapps.com.log combined;
  error_log /var/log/nginx/atlas.pmiapps.com.err;
  ssl_certificate /etc/letsencrypt/live/atlas.pmiapps.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/atlas.pmiapps.com/privkey.pem;

  add_header Strict-Transport-Security "max-age=15768000; includeSubDomains; preload;";
  add_header X-Content-Type-Options nosniff;
  add_header X-XSS-Protection "1; mode=block";

  root /home/atlas_production/www/atlas.pmiapps.com/current/public;

  location / {
    passenger_enabled on;
    passenger_app_env production;
  }
}
```

+++

@title[Nginx]

## @color[#E1473B](cache.conf)

```
location ~ \.(js|css|png|jpg|jpeg|gif|ico|xml|swf|flv|eot|ttf|woff|pdf|xls|htc|svg)$ {
  add_header Pragma "public";
  add_header Cache-Control "public, must-revalidate, proxy-revalidate";
  expires   30d;
}
location ~* \.(eot|otf|ttf|woff|woff2?)$ {
  add_header Access-Control-Allow-Origin *;
  add_header Pragma "public";
  add_header Cache-Control "public, must-revalidate, proxy-revalidate";
  expires    30d;
}
```

---

@title[Passenger]

## @color[#E1473B](Passenger)

@ul
* Application server
* Standalone or @color[#E1473B](nginx module)
* at its core Passenger is a process manager
* 2 concurrency models
@ulend

Note:
- Passenger launches the application as external processes, and manages them. 
- Passenger load balances traffic between processes, shuts down processes when they're no longer needed or when they misbehave, keeps them running and restarts them when they crash, etc.
- process – single-threaded, multi-processed I/O concurrency. Each application process only has a single thread and can only handle 1 request at a time. This is the concurrency model that Ruby applications traditionally used. It has excellent compatibility (can work with applications that are not designed to be thread-safe) but is unsuitable for workloads in which the application has to wait for a lot of external I/O (e.g. HTTP API calls), and uses more memory because each process has a large memory overhead.
- thread – multi-threaded, multi-processed I/O concurrency. Each application process has multiple threads (customizable via passenger_thread_count. This model provides much better I/O concurrency and uses less memory because threads share memory with each other within the same process. However, using this model may cause compatibility problems if the application is not designed to be thread-safe.

---

@title[Questions?]

## @color[#E1473B](Questions?)
