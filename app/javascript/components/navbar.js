const initNavbar = () => {
  const navbarEl = document.querySelector(".navbar-positioning");
  const navbarOffset =
    window.pageYOffset + navbarEl.getBoundingClientRect().top;
  const instanavEl = document.getElementById("insta-navbar");
  const fbnavEl = document.getElementById("fb-navbar");

  function navbarShadow() {
    if (window.pageYOffset >= navbarOffset) {
      navbarEl.classList.add("navbar-shadow");
      // instanavEl.classList.add("hidden");
      // fbnavEl.classList.add("hidden");
      // removeElement("insta-navbar");
      // removeElement("fb-navbar");
    } else {
      navbarEl.classList.remove("navbar-shadow");
      // instanavEl.classList.remove("hidden");
      // fbnavEl.classList.remove("hidden");
    }
  }

  function removeElement(elementID) {
    const element = document.getElementById(elementID);
    element.parentNode.removeChild(element);
  }

  // navbarShadow();
  window.addEventListener("scroll", navbarShadow);
};

export { initNavbar };
