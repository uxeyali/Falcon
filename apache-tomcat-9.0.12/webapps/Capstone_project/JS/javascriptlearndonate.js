

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
    
 document.getElementById("open").onclick = openNav;
    
    document.getElementById("close").onclick = closeNav;
}


window.onload = init;