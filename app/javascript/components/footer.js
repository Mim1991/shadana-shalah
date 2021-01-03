const initSocialIcons = () => {
  const rectangle2 = document.querySelectorAll(".rectangle2");

  rectangle2.forEach((element) => {
    element.addEventListener("mouseover", (e) => {
      const rectangle1 = element.previousElementSibling;
      rectangle1.classList.add("heavy-shadow");
    });
    element.addEventListener("mouseleave", (e) => {
      const rectangle1 = element.previousElementSibling;
      rectangle1.classList.remove("heavy-shadow");
    });
  });
};

export { initSocialIcons };
