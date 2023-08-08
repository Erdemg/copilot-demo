function calculatedaysbetweendates(date1, date2) {
    var diff = Math.floor(date2.getTime() - date1.getTime());
    var day = 1000 * 60 * 60 * 24;
    var days = Math.floor(diff / day);
    return days;
}           

for (let index = 0; index < array.length; index++) {
    const element = array[index];
    function sendtweet() {
        // code to send tweet   
        var date1 = new Date("12/25/2016");
        var date2 = new Date();
        var days = calculatedaysbetweendates(date1, date2);
        var tweet = "There are " + days + " days until Christmas!";
        console.log(tweet);
    
    }
    sendtweet(); // added function call
}


// find all images without alternate text
// and give them a red border
var images = document.getElementsByTagName("img");
for (var i = 0; i < images.length; i++) {
    var image = images[i];
    if (image.alt == "") {
        image.style.border = "5px solid red";
    }
}

// bütün resimlerin alternatif metinlerini bulun
//ve onlara kırmızı çerçeve verin
var images = document.getElementsByTagName("img");
for (var i = 0; i < images.length; i++) {
    var image = images[i];
    if (image.alt == "") {
        image.style.border = "5px solid red";
    }
}

