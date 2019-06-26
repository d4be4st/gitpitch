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

---?image=img/oauth-buttons.png&size=100% 50%

---?image=img/oauth2-grants-flow.png&size=50% 100%

@title[Grants]

@snap[west]
## @color[#E1473B](grants)
@snapend

Note:

- Resource Owner: the entity that can grant access to a protected resource. Typically this is the end-user.
- Application: an application requesting access to a protected resource on behalf of the Resource Owner.
- Resource Server: the server hosting the protected resources. This is the API you want to access.
- Authorization Server: the server that authenticates the Resource Owner, and issues Access Tokens after getting proper authorization.
- User Agent: the agent used by the Resource Owner to interact with the Application, for example a browser or a native application.

---?image=img/auth-sequence-client-credentials.png&size=80% 90%&position=bottom

@title[Client Credentials Flow]

@snap[north span-100]
#### @color[#E1473B](Client Credentials Flow)
@snapend

Note:

- With machine-to-machine (M2M) applications, such as CLIs, daemons, or services running on your back-end, the system authenticates and authorizes the app rather than a user.
- For this scenario, typical authentication schemes like username + password or social logins don't make sense.
- Instead, M2M apps use the Client Credentials Flow, in which they pass along their Client ID and Client Secret to authenticate themselves and get a token.

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

Note:
- exchanges an Authorization Code for a token.
- returns an optional Refresh token

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

Note:
- can be used directly as an authorization grant to obtain an Access Token,
- This grant should only be used when there is a high degree of trust between the user and the application and when other authorization flows are not available.
- This grant type can eliminate the need for the application to store the user credentials for future use, by exchanging the credentials with a long-lived Access Token or Refresh Token.

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

Note:
- Since the SPA is a public client, it is unable to securely store information such as a Client Secret.
- in which issued tokens are short-lived. Refresh Tokens are not available in this flow.

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

Note:
- Proof Key for Code Exchange (PKCE)
- require additional security because they:
- Cannot securely store a Client Secret. Decompiling the app will reveal the Client Secret. The Client Secret is bound to the app and is the same for all users and devices.
- May make use of a custom URL scheme to capture redirects (e.g., MyApp://) potentially allowing malicious applications to receive an Authorization Code from your Authorization Server.

---

@title[Questions?]

## @color[#E1473B](Questions?)
