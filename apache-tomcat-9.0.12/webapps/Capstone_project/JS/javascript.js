"use strict";

var countermal = 1;
var counterpov = 1;
var counterlab = 1;
var counterab = 1;

//Button function for malnutrition
function changeButtonMal() {
    if (countermal === 1) {
        document.getElementById("labelMal").className = "imagClickedMal txt";
        countermal = 2;
    } else {
        document.getElementById("labelMal").className = "imagMal txt";
        countermal = 1;
    }
}

//Button function for Poverty
function changeButtonPov() {
    if (counterpov === 1) {                                    document.getElementById("labelPov").className = "imagClickedPov txt";
        counterpov = 2;
    } else {
        document.getElementById("labelPov").className = "imagPov txt";
        counterpov = 1;
    }
}

//Button function for Abuse
function changeButtonAb() {
    if (counterab === 1) {                                    document.getElementById("labelAb").className = "imagClickedAbu txt";
        counterab = 2;
    } else {
        document.getElementById("labelAb").className = "imagAbu txt";
        counterab = 1;
    }
}

//Button function for Labour
function changeButtonLab() {
    if (counterlab === 1) {                                    document.getElementById("labelLab").className = "imagClickedLab txt";
        counterlab = 2;
    } else {
        document.getElementById("labelLab").className = "imagLab txt";
        counterlab = 1;
    }
}

//Disable text select for elements- need this for my labels
function disableSelection(element) {
    if (typeof element.onselectstart != 'undefined') {
                    element.onselectstart = function() { return false; };
                } else if (typeof element.style.MozUserSelect != 'undefined') {
                    element.style.MozUserSelect = 'none';
                } else {
                    element.onmousedown = function() { return false; };
                }
            }



/* Set the width of the side navigation to 250px */
function openNav() {
   document.getElementById("mySidenav").style.width = "250px";
    
}

/* Set the width of the side navigation to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
   
}


function init() {
    //map events to event handlers
    
    //checkbox/label to function to change the look of it
    document.getElementById("mal").onclick = changeButtonMal;
    document.getElementById("pov").onclick = changeButtonPov;
    document.getElementById("ab").onclick = changeButtonAb;
    document.getElementById("lab").onclick = changeButtonLab;
    
    //to disable text select on all labels
    var labels = document.getElementsByTagName('label');
   
    for (var i = 0; i < labels.length; i++) {
                    disableSelection(labels[i]);
                }
    
   document.getElementById("open").onclick = openNav;
    
    document.getElementById("close").onclick = closeNav;
    
}

window.onload = init;