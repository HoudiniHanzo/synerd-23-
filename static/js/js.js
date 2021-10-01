/* Functions and Variables for Slideshow
    
    A slideshow of 3 images. The <img> tag with the element
    id "a_slideshow" is placed for the variable slideshow.
    Images are placed in an array and are itterated through
    the function setTimeout(). One gone through, the index
    will reset thus returning to the first image of the slide.

*/

var slideshow = document.getElementById("a_slideshow");
var slideArray = [];
var index_i = 0;
var time = 2400;

var ss_img1 = "{% static 'img/slide1.jpg'%}";
var ss_img2 = "{% static 'img/slide2.jpg'%}"; 
var ss_img3 = "{% static 'img/slide3.jpg'%}"; 

slideArray[0] = ss_img1; // from: https://pixabay.com/photos/money-donation-donate-profit-give-652560/
slideArray[1] = ss_img2; // from: https://pixabay.com/photos/donate-control-money-support-civil-5281984/
slideArray[2] = ss_img3; // from: https://pixabay.com/photos/hand-hold-reach-place-846092/

function set_slideshow() {
    slideshow.setAttribute("src", slideArray[index_i]);
    if (index_i < slideArray.length - 1) {
        index_i++;
    }
    else {
        index_i = 0;
    }
    setTimeout("set_slideshow()", time);
}