const slideUp = {
  distance: "150%",
  origin: "bottom",
  opactity: null,

  reset: true,
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
