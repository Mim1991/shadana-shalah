const initProfilePic = () => {
  const profilePhoto = document.querySelector(".avatar-photo");

  function socialPopups() {
    console.log(profilePhoto);
  }

  profilePhoto.addEventListener(`mouseover`, socialPopups);
};

export { initProfilePic };
