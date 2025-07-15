---
layout: post
title: Kaleidoscope
description: AMAs with profs, Alumni Directory, Talks and Information Sessions
image: assets/images/ka.jpg
nav-menu: true
---

<!-- Main -->
<div id="main" class="alt">

<!-- Floating Cat GIF Link -->
<div id="mybox" style="position: relative;">
  <img src="/assets/images/sleepcat.gif" alt="Eepy Cat" class="floating-cat" onclick="goToCatWorld()" />
</div>

<!-- Content Section -->
<div class="row">
  <br>
  <div class="6u 12u$(small)">
    <h3><a href="kaleidoscope/ama.html">Ask Me Anything!</a></h3>
    <p>Listen in as faculty members talk about their research and get candid about their lives and experiences</p>
  </div>
  <div class="6u$ 12u$(small)">
    <h3><a href="kaleidoscope/alumni.html">Alumni Directory</a></h3>
    <p>Find out what your seniors did after they graduated from this department, and how to contact them</p>
  </div>

  <div class="4u$ 12u$(medium)">
    <h3><a href="kaleidoscope/newsletter.html">Newsletter</a></h3>
    <p>Can't keep up with what's happening? FOMO much? Here's the Newsletter so you're all caught up!</p>
  </div>
</div>

<!-- Cat Animation Style -->
<style>
.floating-cat {
  width: 100px;
  cursor: pointer;
  position: absolute;
  bottom: 20px;
  right: 50em;
  transition: transform 0.2s ease;
}

.floating-cat:hover {
  transform: scale(1.2) rotate(-2deg);
}
</style>

<!-- JavaScript Redirect -->
<script>
function goToCatWorld() {
    window.location.href = 'games/pacman.html';
}
</script>