
// Account login
var LoginForm = document.getElementById("LoginForm");
var RegisterForm = document.getElementById("RegisterForm");
var Indicator = document.getElementById("Indicator");

function register(){
    LoginForm.style.transform = "translateX(0px)";
    RegisterForm.style.transform = "translateX(0px)";
     Indicator.style.transform = "translateX(100px)";
}

function login(){
    LoginForm.style.transform = "translateX(300px)";
    RegisterForm.style.transform = "translateX(300px)";
     Indicator.style.transform = "translateX(0px)";
}
// Account login - end

// image slider - start

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 3000); // Change image every 3 seconds
}

// image slider - end 


// Search bar - start