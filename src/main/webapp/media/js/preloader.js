document.body.onload = function () {


    setTimeout(function () {
       /*добавляем класс done*/
      var preloader = document.getElementById('page-preloader');
       if (!preloader.classList.contains('done')){
           preloader.classList.add('done');

           var url = "/index";
           $(location).attr('href',url);
           console.log("current location : " + window.location);
       }
   },  /*время до полной загрузки страницы*/
         100000);
    //console.log("preloader");
};