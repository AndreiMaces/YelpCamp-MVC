# YelpCamp

Platformă pentru descoperirea și partajarea locurilor de campare. Utilizatorii pot explora campgrounduri, adăuga locuri noi și lasă comentarii și review-uri. Aplicația include autentificare (Passport), încărcare imagini (Cloudinary) și hărți (Mapbox).

**Demo:** [https://yelpcamp.macesandrei.com/](https://yelpcamp.macesandrei.com/)

---

## De ce am creat proiectul?

Am urmărit cursul [The Web Developer Bootcamp](https://www.udemy.com/course/the-web-developer-bootcamp/) pe Udemy și am construit aplicația pas cu pas. În aproximativ 3 luni am învățat cum funcționează un server, ce înseamnă o aplicație web, front-end vs back-end, baze de date, sesiuni web și de ce apar cereri de permisiuni pentru cookie-uri pe rețelele sociale.

Am aplicat noțiuni de securitate: SQL injection, cross-site scripting (XSS), Mongo injection și protecția cookie-urilor, astfel încât aplicația să fie mai puțin vulnerabilă la aceste atacuri.

---

## Ce poți face în aplicație?

- Operații CRUD pentru campgrounduri și reviews.
- Înregistrare și autentificare
- Adăugarea de locuri noi de campare (cu locație pe hartă)
- Comentarii și review-uri la campgrounduri

---

## Rulare locală

### Cerințe

- **Node.js** (recomandat v14+)
- **MongoDB** (local sau URI la un serviciu extern)
- Conturi opționale pentru [Cloudinary](https://cloudinary.com/) (imagini) și [Mapbox](https://www.mapbox.com/) (hărți)

### Pași

1. **Clonează repository-ul**
   ```bash
   git clone <url-repository>
   cd YelpCamp-MVC
   ```

2. **Instalează dependențele**
   ```bash
   npm install
   ```

3. **Configurează variabilele de mediu**  
   Creează un fișier `.env` în rădăcina proiectului cu următoarele variabile:

   | Variabilă | Descriere | Exemplu |
   |-----------|-----------|---------|
   | `DB_URL` | URI MongoDB | `mongodb://localhost:27017/yelp-camp` |
   | `SECRET` | Secret pentru sesiuni (Passport/cookies) | un string lung și aleatoriu |
   | `PORT` | Portul serverului (opțional) | `3000` |
   | `MAPBOX_TOKEN` | Token Mapbox pentru hărți (opțional) | `pk.eyJ1...` |
   | `CLOUDINARY_CLOUD_NAME` | Nume cloud Cloudinary (opțional) | |
   | `CLOUDINARY_KEY` | API key Cloudinary (opțional) | |
   | `CLOUDINARY_SECRET` | Secret Cloudinary (opțional) | |

   Fără `DB_URL` și `SECRET`, aplicația folosește valori implicite (MongoDB local și un secret de development).

4. **Pornește aplicația**
   ```bash
   npm start
   ```

   Aplicația va rula la [http://localhost:3000](http://localhost:3000) (sau la portul setat în `PORT`).

---

## Tehnologii

- **Back-end:** Node.js, Express
- **Baze de date:** MongoDB, Mongoose
- **Autentificare:** Passport (Local Strategy), express-session, connect-mongo
- **Template-uri:** EJS, EJS Mate
- **Securitate:** Helmet, express-mongo-sanitize, sanitize-html
- **Validare:** Joi
- **Stocare:** Cloudinary (imagini), Mapbox (hărți)

---

## Licență

ISC
