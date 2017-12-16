function  showInscrption()
{
  var yellow=0;
  $("body").ready(function()
  {
    setInterval(function(){
      if(yellow==0){
       // $("#titleIndex").annimate(function(){});
       $("#titleIndex").css("color","white");
         yellow=1;
      }
      else
      {
      $("#titleIndex").css("color","#fed136");
      yellow=0;
      }

    },1000);
  })
}
$(document).ready(function()
{

            $('.mainMenu').addClass('zoomIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', 
                function(){$(this).removeClass('zoomIn animated');});

          $('.mainMenu a').click(function()
          {
            $(this).addClass('bounce animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', 
                function(){$(this).removeClass('bounce animated');

              });
          });
          $('.mainMenu a').mouseenter(function(){
            $(this).addClass('bounceIn animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', 
                function(){$(this).removeClass('bounceIn animated');
              });
              });

              
          
});
showInscrption();