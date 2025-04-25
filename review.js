const stars = document.querySelectorAll('.star');
const starInput = document.getElementById('stars');

stars.forEach((star, index) => {
    star.addEventListener('click', () => {
        starInput.value = index + 1;
        stars.forEach((s, i) => {
            s.classList.toggle('active', i <= index);
            s.innerHTML = i <= index ? '★' : '☆';
        });
    });
});
