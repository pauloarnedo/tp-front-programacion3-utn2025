let foco = document.getElementById("foco");

function aplicarTema() {
    const tema = localStorage.getItem("tema") || "claro";
    document.body.classList.remove("claro", "oscuro");
    document.body.classList.add(tema);

    if(tema == "claro"){
        foco.src = "/img/light_on.png";
    }
    else{
        foco.src = "/img/light_off.png";
    }
}
function cambiarTema() {
    const temaActual = localStorage.getItem("tema") || "claro";
    const nuevoTema = temaActual === "claro" ? "oscuro" : "claro";
    localStorage.setItem("tema", nuevoTema);
    aplicarTema();
}
// Aplica el tema cuando se carga la página
window.addEventListener("DOMContentLoaded", aplicarTema);

foco.addEventListener("click", function(){
    cambiarTema();
});