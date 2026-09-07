---
layout: home
title: Sviluppatore iOS indipendente
permalink: /it/
lang: it
alternate_url: /
---

<section class="home-hero">
  <p class="eyebrow">Sviluppatore iOS indipendente · Italia</p>
  <h1 class="display-title">Creo app curate per <span class="soft">la vita di ogni giorno.</span></h1>
  <p class="lead">Sono Francesco. Progetto e sviluppo esperienze native che rendono più semplici le abitudini, più sane le piante e un po’ più piacevoli i momenti di pausa.</p>
  <div class="home-actions"><a class="button" href="/it/progetti/">Scopri le mie app <span aria-hidden="true">&nbsp;↗</span></a><a class="button secondary" href="/it/chi-sono/">Chi sono</a></div>
</section>

<section aria-labelledby="selected-work-it">
  <div class="section-heading"><h2 id="selected-work-it">Progetti in evidenza</h2><a href="/it/progetti/">Tutti i progetti →</a></div>
  <div class="project-grid">
    <a class="project-card planoma" href="/it/planoma/"><div class="project-card-top"><img class="project-icon" src="/img/planoma-icon.jpg" alt="Icona di Planoma"><span class="project-arrow" aria-hidden="true">↗</span></div><div class="project-card-copy"><h3 class="project-name">Planoma</h3><p>Costruisci abitudini durature con routine serene, progressi chiari e widget sempre vicini.</p></div></a>
    <a class="project-card monstera" href="/it/monstera/"><div class="project-card-top"><img class="project-icon" src="/img/monstera-icon.png" alt="Icona di Monstera"><span class="project-arrow" aria-hidden="true">↗</span></div><div class="project-card-copy"><h3 class="project-name">Monstera</h3><p>Un compagno attento per ogni pianta della tua casa.</p></div></a>
    <a class="project-card blokko" href="/blokko/"><div class="project-card-top"><img class="project-icon" src="/blokko/icon.png" alt="Icona di Blokko"><span class="project-arrow" aria-hidden="true">↗</span></div><div class="project-card-copy"><h3 class="project-name">Blokko</h3><p>Un puzzle a blocchi da giocare con calma, una mossa alla volta.</p></div></a>
    <a class="project-card glico" href="/it/glico/"><div class="project-card-top"><img class="project-icon" src="/img/glico-icon.png" alt="Icona di Glico"><span class="project-arrow" aria-hidden="true">↗</span></div><div class="project-card-copy"><h3 class="project-name">Glico</h3><p>Un diario glicemico privato e diretto, con le informazioni che contano.</p></div></a>
  </div>
</section>

{% assign italian_posts = site.posts | where: "lang", "it" %}{% if italian_posts.size > 0 %}<section class="home-notes" aria-labelledby="notes-title-it"><div class="section-heading"><h2 id="notes-title-it">Note</h2><span class="post-meta">Swift, design e il lavoro dietro alle app.</span></div><ul class="post-list">{% for post in italian_posts limit:3 %}<li><span class="post-meta">{{ post.date | date: "%b %Y" }}</span><h3><a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a></h3></li>{% endfor %}</ul></section>{% endif %}
