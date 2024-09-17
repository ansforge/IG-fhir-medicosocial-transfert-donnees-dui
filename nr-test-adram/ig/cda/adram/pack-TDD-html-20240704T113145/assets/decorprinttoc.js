/*

	decorprinttoc.js creates a toc based on html tags h1, h2... h8
	and intersperses a <ol> <li><a href>...</a></li>...</ol>
	at element id tocContainer
	
	Copyright (C) 2012-2012  Dr. Kai U. Heitmann
    
    This program is free software; you can redistribute it and/or modify it under the terms 
    of the GNU General Public License as published by the Free Software Foundation; 
    either version 3 of the License, or (at your option) any later version.
    
    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; 
    without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
    See the GNU General Public License for more details.
    
    See http://www.gnu.org/licenses/gpl.html

	KHeitmann 2012-07-15

*/

function getText(e)
{
    var text = "";
    for (var x = e.firstChild; x != null; x = x.nextSibling)
    {
		if (x.nodeType == x.TEXT_NODE)
		{
			text += x.data;
		}
		else if (x.nodeType == x.ELEMENT_NODE)
		{
			text += getText(x);
		}
    }
    return text;
}

function maketoc()
{

	var toc = document.getElementById('tocContainer');

	var headertags = {
    	h1:1,
    	h2:1,
    	h3:1,
    	h4:1,
    	h5:1,
    	h6:1,
    	h7:1,
    	h8:1
	};
	var headings = [];

	function walk( root ) {
    	if( root.nodeType === 1 && root.nodeName !== 'script' ) {
        	if( headertags.hasOwnProperty(root.nodeName.toLowerCase()) ) {
            	headings.push( root );
        	} else {
            	for( var i = 0; i < root.childNodes.length; i++ ) {
                	walk( root.childNodes[i] );
            	}
        	}
    	}
	}

	walk( document.body );

	var ol = document.createElement("ol");
	ol.setAttribute("class", "toc");
	for( var i = 0; i < headings.length; i++ ) {
    	var li = document.createElement("li");
    	var nodename = headings[i].nodeName;
    	li.setAttribute("class", "toclevel-" + nodename.substring(1));
    	var text = document.createTextNode(getText(headings[i]));
		var link = document.createElement("a");
		headings[i].setAttribute("id", "ch" + i);
		link.setAttribute("href", "#ch" + i);
		link.appendChild(text);
		li.appendChild(link);
		ol.appendChild(li); 
	}
	toc.appendChild(ol); 
	
}