//-------------------------------------
// Scripts for zebra tables
// Author: Stephen Poley
// See http://www.xs4all.nl/~sbpoley/webmatters/zebra-tables.html
// ------------------------------------

function paintZebra() {
   if (document.getElementsByTagName) {
      tables = document.getElementsByTagName("table");
      for (j = 0; j < tables.length; j++) {
         if (tables[j].className.indexOf('zebra') > - 1) // if the classname includes 'zebra'
         {
            for (k = 0; k < tables[j].rows.length; k = k + 2) {
               tables[j].rows[k].className = 'even';
            }
         }
      }
   }
}
function toggle(toggled, toggler) {
   if (document.getElementById) {
      var currentStyle = document.getElementById(toggled).style;
      var togglerStyle = document.getElementById(toggler).style;
      if (currentStyle.display == "block") {
         currentStyle.display = "none";
         togglerStyle.backgroundImage = "url(/services/styles/trClosed.gif)";
      } else {
         currentStyle.display = "block";
         togglerStyle.backgroundImage = "url(/services/styles/triangleOpen.gif)";
      }
      return false;
   } else {
      return true;
   }
}