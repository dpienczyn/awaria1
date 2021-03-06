					AWARIA - System rejestrowania usterek i napraw
----------------------------------------------------------------------------------------------------------------------------
## Analiza projektu

### Diagram ERD

Diagram ERD *(ang. Entity-Relationship Diagram)* - rodzaj graficznego przedstawienia związków pomiędzy encjami używany w projektowaniu systemów informacyjnych do przedstawienia konceptualnych modeli danych używanych w systemie.

![Diagram ERD](https://github.com/dpienczyn/awaria1/ERD.pdf)

### Diagram przepływu danych

Diagram przepływu danych *(ang. ang. DFD – Data Flow Diagram)* - graficzna prezentacja przepływu danych w procesie. Na proces składają się następujące elementy:

* Funkcje
* Magazyny danych
* Terminatory
* Przepływy

![Diagram DFD](https://github.com/dpienczyn/awaria1/UseCase.pdf)

## Specyfikacja wymagań

### Wymagania funkcjonalne

Wymagania funkcjonalne - opisują funkcjonalność, którą system ma realizować, na przykład formatowanie tekstu lub modulowanie sygnału. Czasami są znane jako możliwości.

* użytkownik może uwierzytelnić sie za pomocą hasła i adresu e-mail
* użytkownik może zmienić hasło pod warunkiem wpisania poprawnego, starego hasła
* edycja/usunięcie użytkownika
* edycja/dodanie/usunięcie zgłoszenia
* edycja/dodanie/usunięcie działu
* edycja/dodanie/usunięcie stanowiska
* edycja/dodanie/usunięcie zgłoszenia-aktywności
* możliwość nadania uprawnień administratora i pracownika
* przeszukiwanie danych w czasie rzeczywistym
* automatyczne informowanie użytkownika za pomoca adresu e-mail o:
- przyjęciu usterki
- rozpoczęciu naprawy usterki
- zakończeniu naprawy usterki
* automatyczne informowanie użytkownika za pomocą adresu e-mail o poprawnej rejestracji w systemie
* zapisywanie wykonywanych operacji w bazie
* przejrzysty interfejs
* możliwość generowania PDF
* statystyki informujące o ilości zgłoszeń, ilości zgłoszeń według daty, rozkładzie zgłoszeń na dni tygodnia oraz rejestracji użytkowników według dnia
* podział zgłoszeń na zrealizowane i niezrealizowane
* przypisane kody QR do zgłoszeń

### Wymagania niefunkcjonalne 

Wymagania pozafunkcjonalne - specyfikują kryteria osądzania działania systemu. Są one znane jako wymagania jakościowe.

* niezawodność systemu
* przeglądarka internetowa
* dostęp do internetu



# Aplikacja w Ruby on Rails wspomagająca pracę serwisu

#### Specyfikacja:
* Ruby: 2.3.1,
* Rails: 5.0.0.1,
* Baza Danych: PostgreSQL,
* Wdrożenie: [Heroku](https://awaria.herokuapp.com/)

#### Wykorzystane Gemy:
1. Devise ~4.2.0,
1. Bootstrap-sass ~3.3.7,
1. Chartkick ~2.2.1,
1. Groupdate ~3.1.1,
1. Barby ~0.6.5,
1. Rqrcode ~0.10.1,
1. Prawn ~2.1,
1. Prawn-table ~0.1.0,
1. Will_paginate ~3.1.5,
1. Will_paginate-bootstrap ~1.0.1.

#### Autorzy:
Opis wkładu każdego z członków zespołu [link](https://github.com/kamilpek/ror-awaria/blob/master/docs/opis.pdf).
1. [Dominika Pienczyn](https://github.com/dpienczyn),
1. [Marcin Dawidowski](https://github.com/mdawidowski),
1. [Kamil Pek](https://github.com/kamilpek).

#### Dostęp do demo:
1. Adres: [awaria-system.herokuapp.com](https://awaria-system.herokuapp.com/)
1. Administrator: admin@pl/adminpl,
1. Użytkownik: user@pl/userpl,
1. Pracownik: prac@pl/pracpl.

*Trójmiasto, 21.01.2017.*
