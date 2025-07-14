---
layout: post
title: Experiences
description: Seniors talk about their internships, research projects and positions of responsibility
image: assets/images/Experiences.jpeg
nav-menu: true
show_tile: true
---

<!-- Main -->
<div id="main" class="alt">

<!-- Floating Cat GIF Link -->
<div id="mybox" style="position: relative;">
  <img src="/assets/images/cat/bathingcat.gif" alt="Bathing Cat" class="floating-cat" onclick="goToCatWorld()" />
</div>

<!-- Content -->
<div class="row">
	<div class="6u$ 12u$(small)">
		<h3><a href="exp/coreinternships.html">Research Internships</a></h3>
		<p>Seniors review their research internships outside IITB and talk about their apping experiences</p>
	</div>
	<div class="6u 12u$(small)">
		<h3><a href="exp/noncore.html">Industry Internships</a></h3>
		<p>Seniors talk about placements and internships in fields like finance, consultancy and analytics</p>
	</div>
	<div class="6u$ 12u$(small)">
		<h3><a href="exp/ta.html">Teaching Assistant</a></h3>
		<p>Seniors talk about their Teaching experiences </p>
	</div>
</div>

<!-- Cat Animation Style -->
<style>
.floating-cat {
  width: 100px;
  cursor: pointer;
  position: absolute;
  bottom: 0;
  right: 0;
  transition: transform 0.2s ease;
}

.floating-cat:hover {
  transform: scale(1.5) rotate(-1deg);
}
</style>

<!-- JavaScript Redirect -->
<script>
function goToCatWorld() {
    window.location.href = 'games/pool.html';
}
</script>
