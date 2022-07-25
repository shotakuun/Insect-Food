window.addEventListener("scroll", function () {
  const headerFixed = document.getElementById("header-fixed");
  headerFixed.classList.toggle("scroll-nav", window.scrollY > 250);
});
