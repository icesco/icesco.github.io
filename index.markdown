---
layout: home
title: Independent iOS Developer
lang: en
alternate_url: /it/
---

<section class="home-hero">
  <p class="eyebrow">Independent iOS developer · Italy</p>
  <h1 class="display-title">I make thoughtful apps for <span class="soft">everyday life.</span></h1>
  <p class="lead">I’m Francesco. I design and build native experiences that make routines simpler, plants healthier, and quiet moments a little more playful.</p>
  <div class="home-actions">
    <a class="button" href="/projects/">Explore my apps <span aria-hidden="true">&nbsp;↗</span></a>
    <a class="button secondary" href="/about/">About me</a>
  </div>
</section>

<section aria-labelledby="selected-work">
  <div class="section-heading">
    <h2 id="selected-work">Selected work</h2>
    <a href="/projects/">View all projects →</a>
  </div>
  <div class="project-grid">
    <a class="project-card planoma" href="/planoma/">
      <div class="project-card-top"><img class="project-icon" src="/img/planoma-icon.jpg" alt="Planoma app icon"><span class="project-arrow" aria-hidden="true">↗</span></div>
      <div class="project-card-copy"><h3 class="project-name">Planoma</h3><p>Build lasting habits with calm routines, meaningful progress and widgets that stay close.</p></div>
    </a>
    <a class="project-card monstera" href="/monstera/">
      <div class="project-card-top"><img class="project-icon" src="/img/monstera-icon.png" alt="Monstera app icon"><span class="project-arrow" aria-hidden="true">↗</span></div>
      <div class="project-card-copy"><h3 class="project-name">Monstera</h3><p>A considered companion for every plant in your home.</p></div>
    </a>
    <a class="project-card blokko" href="/blokko/en/">
      <div class="project-card-top"><img class="project-icon" src="/blokko/icon.png" alt="Blokko app icon"><span class="project-arrow" aria-hidden="true">↗</span></div>
      <div class="project-card-copy"><h3 class="project-name">Blokko</h3><p>A block puzzle made for one quiet move at a time.</p></div>
    </a>
    <a class="project-card glico" href="/glico/">
      <div class="project-card-top"><img class="project-icon" src="/img/glico-icon.png" alt="Glico app icon"><span class="project-arrow" aria-hidden="true">↗</span></div>
      <div class="project-card-copy"><h3 class="project-name">Glico</h3><p>Private, focused blood glucose tracking with the insights that matter.</p></div>
    </a>
  </div>
</section>

{% assign english_posts = site.posts | where: "lang", "en" %}
{% if english_posts.size > 0 %}
<section class="home-notes" aria-labelledby="notes-title">
  <div class="section-heading"><h2 id="notes-title">Notes</h2><span class="post-meta">Swift, design and the work behind the apps.</span></div>
  <ul class="post-list">
    {% for post in english_posts limit:3 %}
      <li><span class="post-meta">{{ post.date | date: "%b %Y" }}</span><h3><a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a></h3></li>
    {% endfor %}
  </ul>
</section>
{% endif %}
