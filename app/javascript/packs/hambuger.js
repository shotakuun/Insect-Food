document.addEventListener("turbolinks:load", () => {
  const nav = document.getElementById("toggle-nav");
  const btn = document.getElementById("drawer_toggle");

  btn.onclick = () => {
    nav.classList.toggle("open");
    btn.classList.toggle("open");
  };
});
