## Testing Best Practices

#### Rezultati ankete

---

#### Sto staviti u spec_helper, a što u rails_helper - trebaju li nam oba uopće?

- Vecina vas ne vidi zasto postoje dva filea
- 99% vremena vam treba cijeli rails kad testirate

---

#### Treba li svaki expect biti u svojem zasebnom it?

- Vecina je za ne, pogotovo kad se testiraju related stvari |

---

#### Kako testirati response koji controlleri vrate?

- Http status
- JSON Shemu bez sadrzaja (ako imate neku kompleksu logiku to testirat kroz unit testove) u request testovima
- ukljuciti render_views u kontrolerskim

---?code=src/request_spec.rb&lang=ruby&title=Request spec

---?code=src/controller_spec.rb&lang=ruby&title=Controller spec

---

#### Izbjegabati koristenje `let`, `subject` i `before` konstrukata?

- Koristiti `let` i `subject`

---?code=src/let_spec.rb&lang=ruby

---

#### Trebaju li factory sadrzavat asocijacije

- Potrebni su jer vam trebaju validni objekti. |
- S druge strane ljudi su opekli na njima. |
- Prijedlog: Za parente koristiti `traits`, za ostale koristi `build` |

---?code=src/factories_factory.rb&lang=ruby&title=Factory

---?lang=ruby&code=src/factories_spec.rb&title=Spec

---

#### Treba li testirati one-linere u modelima, tipa asocijacije i validacije?

- 6 vas je za samo custom validacije |
- 5 vas je za sve |

---

#### Je li potrebno uvijek raditi unit testove za neke manje servise/funkcije koje svakako i sigurno testiramo u integracijskim testovima?

- Ovdje je 6/6 |
- Prijedlog: idite po gut feeling |

---

#### Ako imate situaciju da u objektu imate pozive na druge service objecte(nesto kompleksnija business logika), da li mockate te pozive ili pustite da testovi produ kroz kod?

- Ovdje vise naginjete tome da pustate da prolaze kod, ali ih mockate kad vam testovi postaju prekompleksni/predugo traju.
- Prijedlog je ovdje da se mockaju u unit testovima, a u integracijskim da produ

---

#### shared examples - da/ne/u kojoj mjeri? gdje ih staviti?

- Pokusavajte ih izbjeci jer stvaraju probleme kod debugiranja i znaju postati nepregledni. Minimalno ih koristiti

---

#### koje sve slučajeve treba pokriti kroz testove i dokumentirati (kod API testova)? npr. 200, 400, 404.

- Vecina vas je za pokrivanje sto vise slucaja da korisnik vidi kakve sve errore moze dobiti

---

#### Kako hendlati manipulaciju s fileovima

- ovo je zeznuto i treba vise prouciti

---

#### Fixtures ili Factories

- Factories

---

#### Kako hendlati stvari tipa Elasticseach (lokalne servise koji nisu baza)? - VCR, gledati kao lokalna baza ili nesto trece?

- Vecina vas nije radila s takvim stvarima ali VCR

---

#### Kako najbolje testirat 3rd party APIs. Mocks, VCR ili se jednostavno spojit na API sandbox ako postoji?

- VCR
- ako testirate samo response caseve onda je dovoljno i mockat

---

#### Kako najbolje setupirat capybaru? (u odnosu na VCR, DatabaseCleaner itd) - Ovo je vise pitanje za one koji su radili s capybarom

- Treba probat ovo u 5.1 sa system testingom

---

#### Koliki da je max nested context?

- rubocop-rspec i vas troje kaze 3
- cetvoro kazu da je max 2

---

#### Kako nazivati testove? Npr. it 'should ...' ili nešto drugo?

- Bez should (tako i betterspecs predlaze)

---

#### Kako hendlati servise i funkcije koje ovise o trenutnom vremenu? Koristiti alate kao što je Timecop ili dependency injection, tj. predavanje vremena kao argumenta.

- Vecina vas je za Timecop/railsov time helper

---

#### koristiti expect to change?

- Vecina je za koristenje

---

#### kako testirati autorizaciju? kroz unit ili integracijske testove?

- Vecina vas je za oboje
- Use common sense

---

#### kako testirati mailove? unit/integration/oboje? testiranje mailova kroz integracijske testove - što bi sve trebali provjeriti? (da je poslan, kome je poslan, subject...) Korsitit mailer previews?

- Testirat da li se dovoljno mailova poslalo
- kod stvaranja mailova koristie [mailer preview](http://guides.rubyonrails.org/action_mailer_basics.html#previewing-emails)

---

#### Da li odma na pocetku pokusati pokriti sve edge caseove ili ih postepeno dodavati ako se ikad pojave?

- Postepeno
- Napisati testove za sve edgecaseove koje se sjetite ali ne trebate se pretrgat da ih sve pronadete.

---

#### Da li koristiti tagove za before hookove za neki setup koji se ponavlja? - npr. authenticated: true - napravi sign in s nekim defaultnim userom, tenanted: true - postavi defaultni tenant itd.

- Da
