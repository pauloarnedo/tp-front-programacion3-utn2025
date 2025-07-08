//Ordenamiento de productos. Esto va en el back o se elimina
/*document.getElementById("orden").addEventListener("change", function () {
const tipoOrden = this.value;
const lista = document.getElementById("productos-lista");
const items = Array.from(lista.querySelectorAll("li"));

items.sort((a, b) => {
const nombreA = a.querySelector("h3").textContent.trim().toLowerCase();
const nombreB = b.querySelector("h3").textContent.trim().toLowerCase();
const precioA = parseFloat(a.querySelector("p").textContent.replace(/[^0-9.]/g, ""));
const precioB = parseFloat(b.querySelector("p").textContent.replace(/[^0-9.]/g, ""));

switch (tipoOrden) {
case "az":
return nombreA.localeCompare(nombreB);
case "za":
return nombreB.localeCompare(nombreA);
case "precio-asc":
return precioA - precioB;
case "precio-desc":
return precioB - precioA;
default:
return 0;
}
});

// Limpiamos y reinsertamos los elementos ordenados
lista.innerHTML = "";
items.forEach(item => lista.appendChild(item));
});*/
//}