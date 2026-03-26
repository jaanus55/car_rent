<!DOCTYPE html>
<html lang="et">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Autorent – Bootstrap 5 makett</title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
  />
  <style>
    body {
      background-color: #f8f9fa;
    }

    .hero {
      min-height: 70vh;
      display: flex;
      align-items: center;
      background: linear-gradient(135deg, #ffffff, #eef2f7);
    }

    .hero-img {
      width: 100%;
      height: 420px;
      object-fit: cover;
      border-radius: 1rem;
      box-shadow: 0 1rem 2rem rgba(0, 0, 0, 0.08);
    }

    .car-card img {
      height: 200px;
      object-fit: cover;
    }

    .section-title {
      font-weight: 700;
      margin-bottom: 1.5rem;
    }

    footer {
      background: #212529;
      color: #fff;
    }
  </style>
</head>
<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">
    <div class="container">
      <a class="navbar-brand fw-bold" href="#">Autorent</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#mainNavbar"
        aria-controls="mainNavbar"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="mainNavbar">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Avaleht</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#autod">Autod</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#hinnad">Hinnad</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#kontakt">Kontakt</a>
          </li>
        </ul>

        <form class="d-flex" role="search">
          <input
            class="form-control me-2"
            type="search"
            placeholder="Otsi autot"
            aria-label="Search"
          />
          <button class="btn btn-outline-light" type="submit">Otsi</button>
        </form>
      </div>
    </div>
  </nav>

  <!-- Hero -->
  <section class="hero py-5">
    <div class="container">
      <div class="row align-items-center g-4">
        <div class="col-lg-6">
          <span class="badge bg-primary mb-3">Uus hooaeg, uued pakkumised</span>
          <h1 class="display-5 fw-bold mb-3">Leia endale sobiv rendiauto kiiresti ja mugavalt</h1>
          <p class="lead text-secondary mb-4">
            Kaasaegne autorendi lahendus igapäevaseks sõiduks, tööreisiks või nädalavahetuse puhkuseks.
            Vali endale sobiv auto ja broneeri mõne klikiga.
          </p>
          <div class="d-flex gap-3 flex-wrap">
            <a href="#autod" class="btn btn-primary btn-lg">Vaata autosid</a>
            <a href="#kontakt" class="btn btn-outline-dark btn-lg">Võta ühendust</a>
          </div>
        </div>
        <div class="col-lg-6">
          <img
            src="https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&w=1200&q=80"
            alt="Rendiauto"
            class="hero-img"
          />
        </div>
      </div>
    </div>
  </section>

  <!-- Cars Grid -->
  <section id="autod" class="py-5">
    <div class="container">
      <div class="d-flex justify-content-between align-items-center flex-wrap gap-2 mb-4">
        <h2 class="section-title mb-0">Saadaolevad autod</h2>
        <p class="text-muted mb-0">Näidismakett hilisemaks andmete sidumiseks</p>
      </div>

      <div class="row g-4">
        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1494976388531-d1058494cdd8?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="BMW 3" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">BMW 3 Seeria</h5>
              <p class="card-text text-muted">Automaat • Diisel • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">45€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1552519507-da3b142c6e3d?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Audi A4" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Audi A4</h5>
              <p class="card-text text-muted">Automaat • Bensiin • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">49€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1549399542-7e3f8b79c341?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Volkswagen Golf" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Volkswagen Golf</h5>
              <p class="card-text text-muted">Manuaal • Diisel • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">39€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1502877338535-766e1452684a?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Toyota RAV4" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Toyota RAV4</h5>
              <p class="card-text text-muted">Automaat • Hübriid • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">59€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1511919884226-fd3cad34687c?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Mercedes C" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Mercedes C-Class</h5>
              <p class="card-text text-muted">Automaat • Diisel • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">62€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1504215680853-026ed2a45def?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Skoda Octavia" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Skoda Octavia</h5>
              <p class="card-text text-muted">Manuaal • Diisel • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">42€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1489824904134-891ab64532f1?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Ford Focus" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Ford Focus</h5>
              <p class="card-text text-muted">Automaat • Bensiin • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">37€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-12 col-md-6 col-xl-3">
          <div class="card car-card h-100 shadow-sm border-0">
            <img src="https://images.unsplash.com/photo-1502161254066-6c74afbf07aa?auto=format&fit=crop&w=900&q=80" class="card-img-top" alt="Volvo XC60" />
            <div class="card-body d-flex flex-column">
              <h5 class="card-title">Volvo XC60</h5>
              <p class="card-text text-muted">Automaat • Hübriid • 5 kohta</p>
              <div class="mt-auto d-flex justify-content-between align-items-center">
                <span class="fw-bold">68€ / päev</span>
                <a href="#" class="btn btn-sm btn-primary">Vaata</a>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Pagination -->
      <nav class="mt-5" aria-label="Autode leheküljed">
        <ul class="pagination justify-content-center">
          <li class="page-item disabled">
            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Eelmine</a>
          </li>
          <li class="page-item active"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item">
            <a class="page-link" href="#">Järgmine</a>
          </li>
        </ul>
      </nav>
    </div>
  </section>

  <!-- Prices -->
  <section id="hinnad" class="py-5 bg-white border-top">
    <div class="container">
      <h2 class="section-title">Hinnad</h2>
      <div class="row g-4">
        <div class="col-md-4">
          <div class="card h-100 border-0 shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Soodusklass</h5>
              <p class="display-6 fw-bold">al. 35€</p>
              <p class="text-muted">Soodsad ja ökonoomsed autod linnasõiduks.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 border-0 shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Keskmine klass</h5>
              <p class="display-6 fw-bold">al. 49€</p>
              <p class="text-muted">Mugavad autod igapäevaseks kasutuseks ja reisideks.</p>
            </div>
          </div>
        </div>
        <div class="col-md-4">
          <div class="card h-100 border-0 shadow-sm">
            <div class="card-body">
              <h5 class="card-title">Premium</h5>
              <p class="display-6 fw-bold">al. 65€</p>
              <p class="text-muted">Premium valik nõudlikumale kliendile.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- Contact -->
  <section id="kontakt" class="py-5">
    <div class="container">
      <div class="row g-4">
        <div class="col-lg-6">
          <h2 class="section-title">Kontakt</h2>
          <p class="text-muted">
            Küsimuste või broneeringu sooviga võta meiega ühendust.
          </p>
          <ul class="list-unstyled">
            <li><strong>Email:</strong> info@autorent.ee</li>
            <li><strong>Telefon:</strong> +372 5555 5555</li>
            <li><strong>Aadress:</strong> Näidistänav 10, Tallinn</li>
          </ul>
        </div>
        <div class="col-lg-6">
          <div class="card border-0 shadow-sm">
            <div class="card-body p-4">
              <form>
                <div class="mb-3">
                  <label class="form-label">Nimi</label>
                  <input type="text" class="form-control" placeholder="Sinu nimi" />
                </div>
                <div class="mb-3">
                  <label class="form-label">E-post</label>
                  <input type="email" class="form-control" placeholder="nimi@email.com" />
                </div>
                <div class="mb-3">
                  <label class="form-label">Sõnum</label>
                  <textarea class="form-control" rows="4" placeholder="Kirjuta siia..."></textarea>
                </div>
                <button type="submit" class="btn btn-dark">Saada</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <footer class="py-4">
    <div class="container text-center">
      <small>© 2026 Autorent. Kõik õigused kaitstud.</small>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
