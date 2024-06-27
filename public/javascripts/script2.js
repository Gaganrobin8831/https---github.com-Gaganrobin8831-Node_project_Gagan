document.addEventListener("DOMContentLoaded", function() {
    var swiper = new Swiper(".Tour_slide-content", {
      slidesPerView: 2,
      spaceBetween: 30,
      slidesPerGroup: 2,
      loop: true,
      loopFillGroupWithBlank: true,
      pagination: {
        el: ".tourdetailbtn",
        clickable: true,
      },
      navigation: {
        nextEl: ".tourdetailnext",
        prevEl: ".tourdetailprev",
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
  