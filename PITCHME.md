@title[Intro]

# Observability

@snap[south-west span-100 subtitle]
STJEPAN HADJIĆ
@snapend

---

@title[Definition]

#### @color[#E1473B](Observability is a measure of how well internal states of a system can be inferred from knowledge of its external outputs.)

Note:
a measure of how well we can understand a system from the work it does.

---?image=img/observability.png&size=100% 100%&position=bottom

@title[Three pillars]

Note:
- 2013: The Twitter Observability team describes their mission
- 2016: The (four) Pillars of Observability at Twitter
- 2017: The Three Pillars of Observability
- 2020: redfiend
- Observability is when you’re able to understand the internal state of a system from the data it provides, and you can explore that data to answer any question about what happened and why.

---

@title[Warning]

## @color[#E1473B](Not debugging!)

---

@title[Monitoring]

## @color[#E1473B](Monitoring Tools)

@ul[](false)
* New Relic
* Datadog
* Scout
* Skylight
@ulend

---

@title[Logs]

## @color[#E1473B](Logs Tools)

@ul[](false)
* New Relic
* Logz.io
* Graylog
* ELK
@ulend

Note:
New relic logs: 75$/month/daily GB

---?image=img/grafana.jpg&size=100% 80%&position=bottom

@title[Our stack]

@snap[north span-100 subtitle]
## @color[#E1473B](Grafana + Prometheus + Loki)
@snapend

---

@title[Grafana]

## @color[#E1473B](Grafana)

@ul[](false)
* A way to organize all your sources
* Dashboard 
* Alerts
@ulend

Note: 
* Lots of sources
* Conencts to cloudwatch, postgres
* Beautiful graphs
* with all kinds of panels
* 3rd party plugins

---

@title[Prometheus]

## @color[#E1473B](Prometheus)

Time series database

@img[prometheus](img/prometheus.jpg)

---

@title[Prometheus Data]

## @color[#E1473B](Data)

```
# HELP ruby_http_requests_total Total HTTP requests from web app.
# TYPE ruby_http_requests_total counter
ruby_http_requests_total{controller="core/dashboard/audiences",action="index",status="200"} 23
ruby_http_requests_total{controller="core/dashboard/audiences",action="new",status="200"} 3
ruby_http_requests_total{controller="core/dashboard/audiences",action="users",status="200"} 26
ruby_http_requests_total{controller="core/dashboard/audiences",action="create",status="302"} 3
```

---

@title[Loki]

## @color[#E1473B](Loki)

@ul[](false)
* log aggregation system inspired by Prometheus.
@ulend

@img[loki](img/loki.png)

---

@title[How to]

## @color[#E1473B](How to)

@ul[](false)
* monitoring ec2 instance (grafana + prometheus + loki)
* per system exporters (node_exporter)
* per system promtail
* per application exporters (gem)
* per application promtail
@ulend

---

@title[Questions?]

## @color[#E1473B](Questions?)
