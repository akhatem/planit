'use strict'

$(document).on("turbolinks:load", function () {
    console.log("Inside");

    var itemIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var items = document.getElementsByClassName("item");
        for (i = 0; i < items.length; i++) {
            items[i].style.display = "none";
        }
        itemIndex++;
        if (itemIndex > items.length) { itemIndex = 1 }
        items[itemIndex - 1].style.display = "block";
        setTimeout(showSlides, 3000); // Change image every 3 seconds
    }
});