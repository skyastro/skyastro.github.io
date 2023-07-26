// Normally ID will identify a span or div element
// whose content is to specified by passing a key/value pair to the page.
// Intended for HTML pages with minimal JavaScript
// Numbers are assumed to be dates in seconds from 2000.
function DisplayParam(id, key, dft) {
    let elem = document.getElementById(id);
    if (elem == null) {
        return;
    }
    let params = new URLSearchParams(document.location.search);
    let val = params.get(key);
    let nval = Number(val);
    if (!isNaN(nval)) {        
//                        Epoch        Day0/2000   Day0/Unix 
        const millis = (nval / 86400 + 2451544.5 - 2440587.5) * 86400000;
        const dateLocal = new Date(millis).toISOString();                       
        elem.innerHTML =  dateLocal.substring(0,dateLocal.length-14);
        
    } else {
         elem.innerHTML = val;
    }
}

