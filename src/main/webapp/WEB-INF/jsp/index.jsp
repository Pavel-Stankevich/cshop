<%@ page language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" tagdir="/WEB-INF/tags" %>
<ui:html title="index">

  ---
  layout: templates-f6-xy-grid
  name: Foundation For Sites
  ---

  <!-- Start Top Bar -->
  <div class="title-bar" data-responsive-toggle="mainNavigation" data-hide-for="medium">
    <div class="title-bar-left">
      <button class="menu-icon" type="button" data-toggle="mainNavigation"></button>
      <div class="title-bar-title">Menu</div>
    </div>
    <div class="title-bar-right">
      Marketing Site
    </div>
  </div>

  <div class="top-bar" id="mainNavigation">
    <div class="top-bar-left">
      <ul class="menu vertical medium-horizontal">
        <li class="menu-text hide-for-small-only">Marketing Site</li>
        <li><a href="#">One</a></li>
        <li><a href="#">Two</a></li>
      </ul>
    </div>
    <div class="top-bar-right">
      <ul class="menu vertical medium-horizontal">
        <li><a href="#">Three</a></li>
        <li><a href="#">Four</a></li>
        <li><a href="#">Five</a></li>
        <li><a href="#">Six</a></li>
      </ul>
    </div>
  </div>
  <!-- End Top Bar -->

  <div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
    <ul class="orbit-container">
      <button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
      <button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
      <li class="is-active orbit-slide">
        <img class="orbit-image" src="https://placehold.it/2000x750&text=1st" alt="Space">
        <figcaption class="orbit-caption">Space, the final frontier.</figcaption>
      </li>
      <li class="orbit-slide">
        <img class="orbit-image" src="https://placehold.it/2000x750&text=2nd" alt="Space">
        <figcaption class="orbit-caption">Lets Rocket!</figcaption>
      </li>
      <li class="orbit-slide">
        <img class="orbit-image" src="https://placehold.it/2000x750&text=3nd" alt="Space">
        <figcaption class="orbit-caption">Encapsulating</figcaption>
      </li>
      <li class="orbit-slide">
        <img class="orbit-image" src="https://placehold.it/2000x750&text=4nd" alt="Space">
        <figcaption class="orbit-caption">Outta This World</figcaption>
      </li>
    </ul>
    <nav class="orbit-bullets">
      <button class="is-active" data-slide="0"><span class="show-for-sr">First slide details.</span><span class="show-for-sr">Current Slide</span></button>
      <button data-slide="1"><span class="show-for-sr">Second slide details.</span></button>
      <button data-slide="2"><span class="show-for-sr">Third slide details.</span></button>
      <button data-slide="3"><span class="show-for-sr">Fourth slide details.</span></button>
    </nav>
  </div>

  <br>
  <div class="text-center">
    <h2>Our Newest Products</h2>
    <hr>
  </div>

  <article class="grid-container">
    <div class="grid-x grid-margin-x small-up-2 medium-up-2 large-up-4">
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/500x600">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button expanded">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/500x600">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button expanded">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/500x600">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button expanded">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/500x600">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button expanded">Buy</a>
      </div>
    </div>

    <hr>

    <div class="grid-x cell">
      <div class="callout small-12 primary">
        <h3>Really big special this week on items.</h3>
      </div>
    </div>

    <hr>

    <div class="text-center">
      <h2>Some Other Neat Products</h2>
      <hr>
    </div>

    <div class="grid-x grid-margin-x small-up-2 medium-up-3 large-up-6">
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
      <div class="cell">
        <img class="thumbnail" src="https://placehold.it/300x400">
        <h5>Nulla At Nulla Justo, Eget</h5>
        <p>$400</p>
        <a href="#" class="button small expanded hollow">Buy</a>
      </div>
    </div>

    <hr>
    <div class="grid-x align-bottom">
      <div class="medium-4 cell">
        <h4>Top Products</h4>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
      <div class="medium-4 cell">
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
      <div class="medium-4 cell">
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
        <div class="media-object">
          <div class="media-object-section">
            <img class="thumbnail" src="https://placehold.it/100x100">
          </div>
          <div class="media-object-section">
            <h5>Nunc Eu Ullamcorper Orci</h5>
            <p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque.</p>
          </div>
        </div>
      </div>
    </div>
  </article>
  <br>
  <footer class="callout large secondary">
    <article class="grid-container">
      <div class="grid-x">
        <div class="large-4 cell">
          <h5>Vivamus Hendrerit Arcu Sed Erat Molestie</h5>
          <p>Curabitur vulputate, ligula lacinia scelerisque tempor, lacus lacus ornare ante, ac egestas est urna sit amet arcu. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed molestie augue sit.</p>
          </h4>
        </div>
        <div class="large-3 large-offset-2 cell">
          <ul class="menu vertical">
            <li><a href="#">One</a></li>
            <li><a href="#">Two</a></li>
            <li><a href="#">Three</a></li>
            <li><a href="#">Four</a></li>
          </ul>
        </div>
        <div class="large-3 cell">
          <ul class="menu vertical">
            <li><a href="#">One</a></li>
            <li><a href="#">Two</a></li>
            <li><a href="#">Three</a></li>
            <li><a href="#">Four</a></li>
          </ul>
        </div>
    </article>
  </footer>

</ui:html>
