function toggleMap (toggled, toggler, assetsdir) {
    if (document.getElementById) {
        var togglerObj = document.getElementById(toggler);
        var togglerStyle = togglerObj.style;
        var togglerimgsrc = togglerObj.getElementsByTagName("img")[0].src;
        if (togglerimgsrc.indexOf("folderopen")>0){
            toggle("fold","tr",toggled);
            togglerObj.getElementsByTagName("img")[0].src = assetsdir + "folder.png";
        } else {
            toggle("unfold","tr",toggled);
            togglerObj.getElementsByTagName("img")[0].src = assetsdir + "folderopen.png";
        }
        return false;
    } else {
    return true;
    }
}

/* toggler use to be a string, but that was unnecessary. The object that triggers the toggle is now "this", eleminating an id in the html
    Support both old and new style by checking input type
*/
function toggleZoom (toggled, toggler, assetsdir) {
    /*alert('toggled type is ' + typeof toggled + ' and toggler type is ' + typeof toggler);*/
    if (document.getElementById) {
        var currentStyle;
        var togglerStyle;
        if (typeof toggled=="object") {currentStyle = toggled.style} else {currentStyle = document.getElementById(toggled).style};
        if (typeof toggler=="object") {togglerStyle = toggler.style} else {togglerStyle = document.getElementById(toggler).style};
        if (currentStyle.display == "block"){
            currentStyle.display = "none";
            togglerStyle.backgroundImage = "url(" + assetsdir + "zoominb.png)";
        } else {
            currentStyle.display = "block";
            togglerStyle.backgroundImage = "url(" + assetsdir + "zoomoutb.png)";
        }
        return false;
    } else {
        return true;
    }
}

function toggleZoomImg (el,zoomType, assetsdir) {
    if (document.getElementById) {
        if (zoomType == "zoomin"){
            el.style.backgroundImage = "url(" + assetsdir + "zoominb.png)";
            /*el.setAttribute('onclick','toggleZoomImg(this,\'zoomout\',\''+assetsdir+'\');');*/
            // below is less destructive for anything else in onclick
            el.setAttribute('onclick', el.getAttribute('onclick').replace('zoomin','zoomout'));
        } else {
            el.style.backgroundImage = "url(" + assetsdir + "zoomoutb.png)";
            /*el.setAttribute('onclick','toggleZoomImg(this,\'zoomin\',\''+assetsdir+'\');');*/
            // below is less destructive for anything else in onclick
            el.setAttribute('onclick', el.getAttribute('onclick').replace('zoomout','zoomin'));
        }
        return false;
    } else {
    return true;
    }
}