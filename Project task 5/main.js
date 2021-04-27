const realFileBtn = document.getElementById("real-file");
const customBtn = document.getElementById("custom-button");
const customTxt = document.getElementById("custom-text");

customBtn.addEventListener("click", function() {
  realFileBtn.click();
});

realFileBtn.addEventListener("change", function() {
    if (realFileBtn.value) {
      var path = customTxt.innerHTML = realFileBtn.value.match(
        /[\/\\]([\w\d\s\.\-\(\)]+)$/
      )[1];
      getFile(path);
    } else {
      customTxt.innerHTML = "No file chosen, yet.";
    }
});

// ------------------------------------------------------------------------------
// ------------------------------------------------------------------------------

let toggleNavStatus = false;

let toggleNav = function() {
    let getSidebar = document.querySelector(".nav-sidebar");
    let getSidebarUl = document.querySelector(".nav-sidebar ul");
    let getSidebarTitle = document.querySelector(".nav-sidebar span");
    //let getSidebarLinks = document.querySelectorAll(".nav-sidebar a");
    let getButtons = document.querySelector(".saveBtn");
    let getButtons1 = document.querySelector(".loadBtn");
    let getButtons2 = document.querySelector(".addBtn");

    if (toggleNavStatus === false) {
        getSidebarUl.style.visibility = "visible";
        getSidebar.style.width = "272px";
        getSidebarTitle.style.opacity = "0.5";

        // let arrayLength = getSidebarLinks.length;
        // for (var i = 0; i < arrayLength; i++) {
        //     getSidebarLinks[i].style.opacity = "1";
            
        // }
        getButtons.style.opacity = "1";
        getButtons1.style.opacity = "1";
        getButtons2.style.opacity = "1";
        toggleNavStatus = true;
    }
    else if (toggleNavStatus === true) {
        getSidebar.style.width = "50px";
        getSidebarTitle.style.opacity = "0";

        // let arrayLength = getSidebarLinks.length;
        // for (var i = 0; i < arrayLength; i++) {
        //     getSidebarLinks[i].style.opacity = "0";
            
        // }
        getButtons.style.opacity = "0";
        getButtons1.style.opacity = "0";
        getButtons2.style.opacity = "0";
        getSidebarUl.style.visibility = "hidden";

        toggleNavStatus = false;
    }
}
// ------------------------------------------------------------------------------
//-------------------------------------------------------------------------------

function getFile(name){
    if (window.XMLHttpRequest)
 {// code for IE7+, Firefox, Chrome, Opera, Safari
 xmlhttp=new XMLHttpRequest();
 }
else
 {// code for IE6, IE5
 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
 }
    xmlhttp.open("GET", name , false);
    xmlhttp.send();
    xmlDoc=xmlhttp.responseXML;
    console.log(xmlDoc);
    //alert("You loaded the " + name);
    show();
  }

  

  function show() {
      var main = document.getElementById('demo');
      var x = xmlDoc.getElementsByTagName('laptop');
      for (i=0;i<x.length;i++) {
        var divGame = document.createElement('div');
        divGame.className = 'pc';
        main.appendChild(divGame);
        let id = i; 
        console.log(id);

        var deleteBtn = document.createElement("button");
        deleteBtn.innerHTML = '<i class="delete-btn"></i>';
        deleteBtn.className = 'delete-btn';
        divGame.appendChild(deleteBtn);
        deleteBtn.addEventListener("click", function() { 
            removePosition(id);
        });

        var editBtn = document.createElement("button");
        editBtn.innerHTML = '<i class="edit-btn"></i>';
        editBtn.className = 'edit-btn';
        divGame.appendChild(editBtn);
        editBtn.addEventListener("click", function() { 
            editPosition(id);
        });

        var title = document.createElement('p');
        title.style.fontSize = "25px";
        title.innerHTML = x[i].getElementsByTagName("fullName")[0].childNodes[0].nodeValue;
        divGame.appendChild(title);

        var line = document.createElement('hr');
        line.className = "underline";
        divGame.appendChild(line);

        var ean = document.createElement('p');
        ean.innerHTML = x[i].getElementsByTagName("ean")[0].childNodes[0].nodeValue;
        divGame.appendChild(ean);

        var CPU = document.createElement('p');
        CPU.innerHTML = x[i].getElementsByTagName("CPU")[0].childNodes[0].nodeValue;
        divGame.appendChild(CPU);

        var graphics = document.createElement('p');
        graphics.innerHTML = x[i].getElementsByTagName("graphics")[0].childNodes[0].nodeValue;
        divGame.appendChild(graphics);

        var premiere = document.createElement('p');
        premiere.innerHTML = x[i].getElementsByTagName("premiere")[0].childNodes[0].nodeValue;
        divGame.appendChild(premiere);

        var price = document.createElement('p');
        price.innerHTML = x[i].getElementsByTagName("price")[0].childNodes[0].nodeValue;
        divGame.appendChild(price);

        var priceCurrency = document.createElement('p');
        priceCurrency.innerHTML = x[i].getElementsByTagName("price")[0].getAttribute("currency");
        divGame.appendChild(priceCurrency);

        var idref = document.createElement('p');
        idref.innerHTML = x[i].getElementsByTagName("makeInList")[0].getAttribute("idref");
        divGame.appendChild(idref);
      }
  }


   function saveFile() {
     console.log("elo");
     const textToBLOB = new Blob([new XMLSerializer().serializeToString(xmlDoc)], { type: 'text/plain' });
     const sFileName = 'store.xml';
     let newLink = document.createElement("a");
     newLink.download = sFileName;
    if (window.webkitURL != null) {
        newLink.href = window.webkitURL.createObjectURL(textToBLOB);
    } else {
        newLink.href = window.URL.createObjectURL(textToBLOB);
        newLink.style.display = "none";
        document.body.appendChild(newLink);
    }   

    newLink.click();
    show();

}

function removePosition(f) {
  y = xmlDoc.getElementsByTagName("laptop")[f];
  y.parentNode.removeChild(y);
  alert(f);
  clear('demo');
  show();
}

function editPosition(n) {
  z = xmlDoc.getElementsByTagName("laptop")[n];
  y = xmlDoc.getElementsByTagName("fullName")[n];
  x = y.textContent;

  var name = prompt("Enter new name", x);
  xmlDoc.getElementsByTagName("fullName")[n].childNodes[0].nodeValue = name;

  var name1 = prompt("Enter new price", x);
  xmlDoc.getElementsByTagName("price")[n].childNodes[0].nodeValue = name1;

  var name2 = prompt("Enter new currency", x);
  xmlDoc.getElementsByTagName("price")[n].setAttribute("currency", name2);


  alert("Position " + n + " was edited.");
  clear('demo');
  show();
}

 function addPosition() {
  newNode = xmlDoc.createElement("laptop");
  y = xmlDoc.getElementsByTagName("laptops")[0];
  y.appendChild(newNode);

  let z = xmlDoc.getElementsByTagName("laptop");
  newNode.setAttribute("id", z.length);

  title = xmlDoc.createElement("fullName");
  var name = prompt("Enter name", "");
  text = xmlDoc.createTextNode(name);
  title.appendChild(text);
  newNode.appendChild(title);

  ean = xmlDoc.createElement("ean");
  var name = prompt("Enter ean number", "");
  text = xmlDoc.createTextNode(name);
  ean.appendChild(text);
  newNode.appendChild(ean);

  CPU = xmlDoc.createElement("CPU");
  var name = prompt("Enter CPU", "");
  text = xmlDoc.createTextNode(name);
  CPU.appendChild(text);
  newNode.appendChild(CPU);

  graphics = xmlDoc.createElement("graphics");
  var name = prompt("Enter graphics name", "");
  text = xmlDoc.createTextNode(name);
  graphics.appendChild(text);
  newNode.appendChild(graphics);

  premiere = xmlDoc.createElement("premiere");
  var name = prompt("Enter yy-mm-dd of the premiere", "");
  text = xmlDoc.createTextNode(name);
  premiere.appendChild(text);
  newNode.appendChild(premiere);

  price = xmlDoc.createElement("price");
  var name = prompt("Enter price", "");
  text = xmlDoc.createTextNode(name);
  price.appendChild(text);
  newNode.appendChild(price);

  var crnc = prompt("Enter currency PLN/EUR/USD", "");
  price.setAttribute("currency", crnc);

  ajdi = xmlDoc.createElement("makeInList");
  newNode.appendChild(ajdi);

  var zzz = prompt("Enter idref m1-m9", "");
  ajdi.setAttribute("idref", zzz);
 
  clear('demo');
  show();
 }

 function clear(elementID) {
    document.getElementById(elementID).innerHTML = "";
}
