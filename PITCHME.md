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

![Request and Response](http://take.ms/3OI1q)

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

### BONUS: Na kolko nacina mozete logoutat usera?

---

### Kako podjeliti session izmedu dvije domene?

---

![Session Store](http://take.ms/a6Cz5)

---

![Cookie Store](http://take.ms/6TZTZ)

---

![Rack Session Absctract](http://take.ms/PU39I)

---

![Stackoverflow](http://take.ms/O63qt)

---

![Github](http://take.ms/tvSTS)

---

![Cookie](http://take.ms/LiuzI)

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

;; GIBBERISH
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

![](http://take.ms/zXSmj)

---

## Routes

---

```ruby
config.paths['config/routes.rb'].unshift(
  *Dir[Rails.root.join('config', 'routes', '*.rb')]
)
```

---

```ruby
# app/config/routes/public.rb
Rails.application.routes.draw do
  devise_for :users

  root 'public/home#home'

  namespace :public, path: '/(:locale)' do
    resource :dashboard
  end
end
```

---

```ruby
Rails.application.routes.draw do
  constraints subdomain: 'api' do
    resources :accounts
  end

  resources :users
  resources :accounts
end
```
---

```ruby
app.lvh.me/users => 200 OK
api.lvh.me/users => 200 OK
```

---

# CORS?

---

# kthxby
