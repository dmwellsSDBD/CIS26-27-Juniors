/* ==========================================================
   EXTRA CREDIT: phone menu toggle
   The site works without this file. When it runs, it adds
   a "js" class to <html> so the CSS can hide the links on
   phones behind a Menu button.
   ========================================================== */

document.documentElement.classList.add("js");

const menuButton = document.querySelector(".menu-toggle");
const navLinks = document.querySelector(".nav-links");

menuButton.addEventListener("click", function () {
    const isOpen = navLinks.classList.toggle("open");
    menuButton.setAttribute("aria-expanded", isOpen);
    menuButton.textContent = isOpen ? "Close" : "Menu";
});
