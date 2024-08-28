const container = document.querySelector('.card-container');
const button = document.querySelectorAll('i');
let firstCardWidth =  document.querySelector('.card-project').offsetWidth;
console.log(button);

button.forEach(function(btn) {
  btn.addEventListener('click', function(){
    console.log(btn.id);
    container.scrollLeft += btn.id === 'kiri' ? -firstCardWidth : firstCardWidth;
  });
});