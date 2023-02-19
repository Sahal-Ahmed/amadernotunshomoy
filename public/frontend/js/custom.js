$(function (){
    $('.datepicker').datepicker();
});


    
$('.slider').slick({
    dots: true,
    arrows:false,
  infinite: true,
  speed: 100,
  autoplay:true,
  slidesToShow: 2,
  slidesToScroll: 1,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]
});

$(window).scroll(function () {
    // var menuheight = $('#navbar').height();
if ($(this).scrollTop() > 1){  
    $('#navbar').addClass("stickyTop");
    $('#hidden-menu').removeClass("d-none")
  }
  else{
    $('#navbar').removeClass("stickyTop");
     $('#hidden-menu').addClass("d-none")
  }
});
	
// // When the user scrolls the page, execute myFunction
// window.onscroll = function() {myFunction()};

// // Get the navbar
// var navbar = document.getElementById("navbar");

// // Get the offset position of the navbar
// var sticky = navbar.offsetTop;

// // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
// function myFunction() {
//   if (window.pageYOffset >= sticky) {
//     navbar.classList.add("stickyTop");
//   } else {
//     navbar.classList.remove("sticky-top");
//   }
// }
$('.resturant').slick({
  infinite: true,
	dots: true,
	arrows: false,
	autoplay: true,
	autoplaySpeed: 3000,
	fade: true,
	fadeSpeed: 1000
});



function starters() {
    document.getElementById("starters").classList.remove("d-none");
    document.getElementById("salad").classList.add("d-none");
    document.getElementById("dinner").classList.add("d-none");
    document.getElementById("lunch").classList.add("d-none");
    
}
function salad() {
    document.getElementById("starters").classList.add("d-none");
    document.getElementById("salad").classList.remove("d-none");
    document.getElementById("dinner").classList.add("d-none");
    document.getElementById("lunch").classList.add("d-none");
}

function dinner() {
    document.getElementById("starters").classList.add("d-none");
    document.getElementById("salad").classList.add("d-none");
    document.getElementById("dinner").classList.remove("d-none");
    document.getElementById("lunch").classList.add("d-none");
}
function lunch() {
    document.getElementById("starters").classList.add("d-none");
    document.getElementById("salad").classList.add("d-none");
    document.getElementById("dinner").classList.add("d-none");
    document.getElementById("lunch").classList.remove("d-none");
}