@title[Intro]

@snap[midpoint]
# Oauth 2.0
@snapend

@snap[south-west span-100 subtitle]
STJEPAN HADJIĆ
@snapend

---

@title[Why]

## @color[#E1473B](why?)
#### a client needs to access some resource on behalf of the user

---

@title[What]

## @color[#E1473B](what?)
#### OAuth is an open standard for delegation and authorization on the internet.

---

@title[How]

## @color[#E1473B](how?)
### Access Token
#### Access Token represents the consent the user gave, allowing the client to access its data on behalf of the user.

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

Note:

- Resource Owner: the entity that can grant access to a protected resource. Typically this is the end-user.
- Application: an application requesting access to a protected resource on behalf of the Resource Owner.
- Resource Server: the server hosting the protected resources. This is the API you want to access.
- Authorization Server: the server that authenticates the Resource Owner, and issues Access Tokens after getting proper authorization. In this case, Auth0.
- User Agent: the agent used by the Resource Owner to interact with the Application, for example a browser or a native application.

---?image=img/auth-sequence-client-credentials.png&size=80% 90%&position=bottom

@title[Client Credentials Flow]

@snap[north span-100]
#### @color[#E1473B](Client Credentials Flow)
@snapend

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

---?image=img/auth-sequence-auth-code.png&size=70% 90%&position=bottom

@title[Authorization Code Flow]

@snap[north span-100]
#### @color[#E1473B](Authorization Code Flow)
@snapend

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

---?image=img/password-grant.png&size=80% 90%&position=bottom

@title[Resource Owner Password Credentials Flow]

@snap[north span-100]
#### @color[#E1473B](Resource Owner Password Credentials Flow)
@snapend

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

---?image=img/auth-sequence-implicit.png&size=100% 90%&position=bottom

@title[Implicit Flow]

@snap[north span-100]
#### @color[#E1473B](Implicit Flow)
@snapend

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

---?image=img/auth-sequence-auth-code-pkce.png&size=60% 90%&position=bottom

@title[Authorization Code Flow with PKCE]

@snap[north span-100]
#### @color[#E1473B](Authorization Code Flow with PKCE)
@snapend

---

@title[Questions?]

## @color[#E1473B](Questions?)
