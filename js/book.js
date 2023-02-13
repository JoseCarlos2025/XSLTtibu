var xhttp = new XMLHttpRequest();
function Result(value){
showResult(xhttp.responseXML,value);
}
xhttp.open("GET", "book.xml", true);
xhttp.send(); 

function showResult(xml,value) {
    var txt = "";
    var array = ["/bookstore/book/title","/bookstore/book/editorial","/bookstore/book/writer","/bookstore/book[price<30]/price","/bookstore/book[price>30]/price","/bookstore/book[price=30]/price"];
    path = array[value];
    if (xml.evaluate) {
        var nodes = xml.evaluate(path, xml, null, XPathResult.ANY_TYPE, null);
        var result = nodes.iterateNext();
        while (result) {
            txt += result.childNodes[0].nodeValue + "<br>";
            result = nodes.iterateNext();
        } 
    // Code For Internet Explorer
    } else if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        xml.setProperty("SelectionLanguage", "XPath");
        nodes = xml.selectNodes(path);
        for (i = 0; i < nodes.length; i++) {
            txt += nodes[i].childNodes[0].nodeValue + "<br>";
        }
    }
    document.getElementById("demo").innerHTML = txt;
}