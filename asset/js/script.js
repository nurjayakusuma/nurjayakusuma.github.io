// const container = document.querySelector('.card-container');
// const button = document.querySelectorAll('i');
// let firstCardWidth =  document.querySelector('.card-project').offsetWidth;
// console.log(button);

// button.forEach(function(btn) {
//   btn.addEventListener('click', function(){
//     console.log(btn.id);
//     container.scrollLeft += btn.id === 'kiri' ? -firstCardWidth : firstCardWidth;
//   });
// });

const swiper = new Swiper('.swiper', {
  // Optional parameters
  direction: 'horizontal',
  loop: true,
  speed: 500,
  autoplay: {
    delay: 5000
  },
  
  slidesPerView: 4,
  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
  },

  // Navigation arrows
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },

  // And if we need scrollbar
  scrollbar: {
    el: '.swiper-scrollbar',
  },
});