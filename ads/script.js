var adFiles = [
    /*"dev-pirates-1.html",*/
    "premium-1.html",
    "premium-1.html",
    "error-ad.html"
];

function getRandomAd() {
    var randomIndex = Math.floor(Math.random() * adFiles.length);
    return adFiles[randomIndex];
}

function displayAd(adPath) {
    console.log("Advertisment:", adPath);
}

function runRandomAd() {
    var randomAd = getRandomAd();
    displayAd(randomAd);
}

runRandomAd();
