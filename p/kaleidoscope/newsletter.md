---
layout: page
title: Department Newsletters
description: 
image: 
nav-menu: false
show_tile: false
---

<style>
.timeline {
  position: relative;
  max-width: 700px;
  margin: 2rem auto;
  padding: 1rem;
  transform: scale(0.85);  /* uniform shrink */
  transform-origin: top center;
}

.timeline ul {
  padding: 0;
  list-style: none;
  margin: 0;
}

.timeline ul li {
  opacity: 0;
  position: relative;
  margin: 1rem 0;
  padding-left: 24px;
  transition: all 0.6s ease-out;
  transform: translateY(20px);
}

.timeline ul li.in-view {
  opacity: 1;
  transform: none;
}

.timeline ul li::before {
  content: '';
  position: absolute;
  left: 0;
  top: 0.4rem;
  width: 10px;
  height: 10px;
  background: #007acc;
  border-radius: 50%;
  box-shadow: 0 0 0 2px #007acc44;
}

.timeline-content {
  background: #fff;
  color: #222;
  padding: 0.6rem 1rem;
  border-radius: 6px;
  box-shadow: 0 1px 6px rgba(0, 0, 0, 0.05);
  font-family: system-ui, sans-serif;
  font-size: 0.85rem;
}

.timeline-content h3 {
  font-size: 1rem;
  margin: 0.3rem 0;
  color: #007acc;
}

.timeline-content p {
  margin: 0.3rem 0 0.6rem 0;
}

.timeline-content img {
  width: 100%;
  max-height: 140px;
  object-fit: cover;
  border-radius: 4px;
  margin-bottom: 0.6rem;
}

.timeline-content a {
  color: #007acc;
  font-weight: bold;
  text-decoration: none;
  font-size: 0.85rem;
}
</style>

<div class="inner">
  <header class="major">
    <h2>Department Newsletters</h2>
    <p>Scroll through the timeline to explore our past editions</p>
  </header>

  <div class="timeline">
    <ul>
      {% for issue in site.data.newsletters %}
        <li>
          <div class="timeline-content">
            {% if issue.thumb %}
              <img src="{{ issue.thumb }}" alt="Thumbnail for {{ issue.title }}">
            {% endif %}
            <h3>{{ issue.title }}</h3>
            {% if issue.desc %}
              <p>{{ issue.desc }}</p>
            {% endif %}
            <a href="{{ issue.file }}" target="_blank">📄 View PDF</a>
          </div>
        </li>
      {% endfor %}
    </ul>
  </div>
</div>

<script>
  function isElementInViewport(el) {
    const rect = el.getBoundingClientRect();
    return rect.top <= (window.innerHeight - 100);
  }

  function revealTimelineItems() {
    const items = document.querySelectorAll('.timeline ul li');
    items.forEach(item => {
      if (isElementInViewport(item)) {
        item.classList.add('in-view');
      }
    });
  }

  document.addEventListener("DOMContentLoaded", revealTimelineItems);
  window.addEventListener("scroll", revealTimelineItems);
</script>

