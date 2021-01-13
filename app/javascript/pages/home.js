const slideUp = {
  distance: "30%",
  origin: "bottom",
  opactity: 0,
  reset: true,
  duration: 900,
  easing: "ease-out",
};

const slideFromLeft = {
  distance: "10%",
  origin: "left",
  opactity: 0,
  // delay: 50,
  reset: true,
  duration: 900,
  easing: "ease-out",
};

const slideFromRight = {
  distance: "10%",
  origin: "right",
  opactity: 0,
  delay: 30,
  reset: true,
  duration: 900,
  easing: "ease-out",
};

const revealCards = () => {
  ScrollReveal().reveal(".tl-stack", slideFromLeft);
  ScrollReveal().reveal(".tr-stack", slideFromRight);
  ScrollReveal().reveal(".bl-stack", Object.assign(slideUp, { delay: 80 }));
  ScrollReveal().reveal(".brl-stack", Object.assign(slideUp, { delay: 110 }));
};

const revealBlog = () => {
  ScrollReveal().reveal(
    ".reveal-blog-one",
    Object.assign(slideUp, { delay: 100 })
  );
  ScrollReveal().reveal(
    ".reveal-blog-two",
    Object.assign(slideUp, { delay: 300 })
  );
  ScrollReveal().reveal(
    ".reveal-blog-three",
    Object.assign(slideUp, { delay: 500 })
  );
};

export { revealBlog };
export { revealCards };
