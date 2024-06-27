document.addEventListener("DOMContentLoaded", function() {
    var swiper = new Swiper(".slide-content", {
      slidesPerView: 1,
      spaceBetween: 30,
      slidesPerGroup: 1,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".aboutpaggination",
        clickable: true,
      },
      navigation: {
        nextEl: ".aboutnext",
        prevEl: ".aboutprev",
      },
      breakpoints: {
        520: {
          slidesPerView: 2,
          slidesPerGroup: 2,
        },
        950: {
          slidesPerView: 3,
          slidesPerGroup: 3,
        },
      },
    });
  });
  