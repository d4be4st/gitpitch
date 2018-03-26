# Go home Rails, you are drunk!

---

## Sessions

---

In computer science, in particular networking, a **session** is a semi-permanent interactive information interchange, also known as a dialogue, a conversation or a meeting, between two or more communicating devices, or **between a computer and user**.

---

In computer science, in particular networking, a **session** is a **semi-permanent** interactive information interchange, also known as a dialogue, a conversation or a meeting, between two or more communicating devices, or **between a computer and user**.

---

### Statefulness

---

An **cookie** is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing.

---

```ruby
Rails.application.config.session_store :cookie_store,
  key: '_truck_web_session'
```
---

Slika requset responsa sa cookijima

---

```json
{
  "session_id": "833642bd2d4aca55954acfa706f9fdd7",
  "user_return_to": "/classes/76/lessons/21/docs/182",
  "warden.user.user.key": [[1],"$2a$10$bFsXlgshTEuVQzb3Rj6FLe"],
  "_csrf_token": "PBoIi4cPDHr/5+B0FQGDW7qYfVcK7CFRWpbFimGRIQA=",
}
```

---

BONUS: Na kolko nacina mozete usera logoutat?

---

Kako podjeliti session izmedu dvije domene?

---

Slika session store page

---

Slika cookie store pagea

---

stackoverflow slika

---

Slika cookie jar github pagea

---

```ruby
Rails.application.config.session_store :cookie_store,
  key: '_truck_web_session', tld_length: 2, domain: :all
```

---

Kako developat sa ovakvim settingom?

---

```sh
➜ dig lvh.me

; <<>> DiG 9.8.3-P1 <<>> lvh.me
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 46459
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 5, ADDITIONAL: 10

;; QUESTION SECTION:
;lvh.me.                                IN      A

;; ANSWER SECTION:
lvh.me.                 877     IN      A       127.0.0.1
```

---

```ruby
rails server -b lvh.me
```
---

## Routes

---

```ruby
config.paths['config/routes.rb'].unshift(
  *Dir[Rails.root.join('config', 'routes', '*.rb')]
)
```

---

Devise problemi

---

## Cors
