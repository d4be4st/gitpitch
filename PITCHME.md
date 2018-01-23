# Testing Best Practices

### Rezultati ankete

---

### Treba li svaki expect biti u svojem zasebnom it?

- Vecina je za ne, pogotovo kad se testiraju related stvari |

---

### Kako testirati response koji controlleri vrate?

- Http status
- JSON Shemu bez sadrzaja (ako imate neku kompleksu logiku to testirat kroz unit testove) u request testovima
- ukljuciti render_views u kontrolerskim

---?code=src/request_spec.rb&lang=ruby&title=Request spec

---?code=src/controller_spec.rb&lang=ruby&title=Controller spec

---

### Izbjegabati koristenje `let`, `subject` i `before` konstrukata?

- Koristiti `let` i `subject`

---?code=src/let_spec.rb&lang=ruby

---

### Trebaju li factory sadrzavat asocijacije

- Potrebni su jer vam trebaju validni objekti. |
- S druge strane ljudi su opekli na njima. |
- Prijedlog: Za parente koristiti `traits`, za ostale koristi `build`

---?code=src/factories.rb&lang=ruby

