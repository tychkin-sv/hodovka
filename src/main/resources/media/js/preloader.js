document.body.onload = function () {
    setTimeout(function () {
       /*добавляем класс done*/
      var preloader = document.getElementById('page-preloader');
       if (!preloader.classList.contains('done')){
           preloader.classList.add('done');
       }
   },  /*время до полной загрузки страницы*/
         2000);
    console.log("preloader");
};