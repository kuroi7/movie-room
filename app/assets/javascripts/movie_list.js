// fetch('https://api.themoviedb.org/3/movie/550?api_key=4d53cee11e3a0a4c6a08ae27d63058c4&language=en-US&page=1')
fetch('https://api.themoviedb.org/3/movie/now_playing?api_key=4d53cee11e3a0a4c6a08ae27d63058c4&language=en-US&page=1')
  .then(response => {
  return response.json();
  })
  .then(data => {
    //取得したJSONデータの処理
    console.log(data);
  })
  .catch(error => {
    //エラー発生時の処理
    console.log('error');
  });

  // data.results.map(movie => {
  //   const row = document.createElement('div');
  //   row.setAttribute('class', 'item');
  
  //   const title = document.createElement('p');
  //   title.setAttribute('class', 'title');
  //   title.textContent = movie.title;
  
  //   const poster = document.createElement('img');
  //   poster.src = `https://image.tmdb.org/t/p/w300_and_h450_bestv2/${movie.poster_path}`;
  
  //   container.appendChild(row);
  //   row.appendChild(poster);
  //   row.appendChild(title);
  // });