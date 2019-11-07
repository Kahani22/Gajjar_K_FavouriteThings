// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
let userButtons = document.querySelectorAll('.u-link'),
    lightBox = document.querySelector('.lightbox');

    // function renderSocialMedia(media) {
    //     return `<ul class="u-social">
    //                 ${media.map(item => `<li>${item}</li>`).join("")}
    //             </ul>`;
    // }

function parseUserData(movie) {
    let targetDiv = lightBox.querySelector('.lb-content');
    let targetImg = lightBox.querySelector('img');
    let bioContent = `
     
        <h4>IMDb Rating: ${movie.IMDb_Rating}</h4>
        <h4>Genre: ${movie.Genre}</h4>
        <h4>Director: ${movie.Director}</h4>
        <h4>Release Date: ${movie.Release_Date}</h4>   
        <p>${movie.bio}</p>
        
    `;
    targetDiv.innerHTML = bioContent;
    targetImg.src = movie.currentSrc;
    lightBox.classList.add('show-lb');
}

function getUserData(e) {
    e.preventDefault();
    // 1, 2, or 3 depending on which anchor tag u click
    let url = `/${this.getAttribute('href')}`,
        currentImg = this.previousElementSibling.getAttribute('src');
    // this goes and fetches the database content (or API endp)
    fetch(url)
        .then(res => res.json())
        .then(data => {
            console.log(data);
            data.currentSrc = currentImg;
            parseUserData(data);
        })
        .catch((err) => console.log(err));
}

userButtons.forEach(button => button.addEventListener('click',getUserData));
lightBox.querySelector('.close').addEventListener('click', function() {
    lightBox.classList.remove('show-lb');
})

})();