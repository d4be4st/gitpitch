# Testing Best Practices

### Rezultati ankete

---

## Treba li svaki expect biti u svojem zasebnom it?

- Vecina je za ne, pogotovo kad se testiraju related stvari

---

## Kako testirati response koji controlleri vrate?

- Http status
- JSON Shemu bez sadrzaja (ako imate neku kompleksu logiku to testirat kroz unit testove) u request testovima
- ukljuciti render_views u kontrolerskim

?code=src/question2.rb&lang=ruby&title=Question 2


