function agregarAlCarrito(producto) {
    let carrito = JSON.parse(sessionStorage.getItem("carrito")) || [];
    let productoExistente = carrito.find(item => item.id === producto.id);

    if (productoExistente) {
        productoExistente.quantity++;
    } else {
        producto.quantity = 1;
        carrito.push(producto);
    }

    sessionStorage.setItem("carrito", JSON.stringify(carrito));
    mostrarCarrito();
}

function mostrarCarrito() {
    const carrito = JSON.parse(sessionStorage.getItem("carrito")) || [];
    const contenedor = document.getElementById("carrito-container");

    contenedor.innerHTML = "";

    if (carrito.length === 0) {
        contenedor.innerHTML = "<p>El carrito está vacío.</p>";
        return;
    }

    let tabla = document.createElement("table");
    tabla.innerHTML = `
        <thead>
        <tr>
        <th>Imagen</th>
        <th>Producto</th>
        <th>Precio</th>
        <th>Cantidad</th>
        <th>Total</th>
        <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        ${carrito
        .map(item => `
        <tr>
        <td><img src="${item.image}" alt="${item.name}" width="50"></td>
        <td>${item.name}</td>
        <td>$${item.price}</td>
        <td>${item.quantity}</td>
        <td>$${(item.quantity * parseFloat(item.price)).toFixed(2)}</td>
        <td>
        <button onclick="actualizarCantidad(${item.id}, 'restar')">-</button>
        <button onclick="actualizarCantidad(${item.id}, 'sumar')">+</button>
        <button onclick="eliminarProducto(${item.id})">🗑️</button>
        </td>
        </tr>
        `)
        .join("")}
        </tbody>
    `;

    contenedor.appendChild(tabla);
    const total = carrito.reduce((acc, item) => acc + item.quantity * parseFloat(item.price), 0);
    const totalTexto = document.createElement("p");
    totalTexto.innerHTML = `<div class="total"><strong>Total del carrito: $${total.toFixed(2)}</strong><div class="confirmar-container"><button id="confirmar-compra">Confirmar compra</button></div></div>`;
    contenedor.appendChild(totalTexto);
    document.getElementById("confirmar-compra").addEventListener("click", confirmarCompra);
}
mostrarCarrito();

function actualizarCantidad(id, accion) {
  let carrito = JSON.parse(sessionStorage.getItem("carrito")) || [];

  const producto = carrito.find(item => item.id === id);
  if (!producto) return;

  if (accion === "sumar") {
    producto.quantity++;
  } else if (accion === "restar") {
    producto.quantity--;
    if (producto.quantity <= 0) {
      carrito = carrito.filter(item => item.id !== id);
    }
  }

  sessionStorage.setItem("carrito", JSON.stringify(carrito));
  mostrarCarrito();
}

function eliminarProducto(id) {
  let carrito = JSON.parse(sessionStorage.getItem("carrito")) || [];
  carrito = carrito.filter(item => item.id !== id);
  sessionStorage.setItem("carrito", JSON.stringify(carrito));
  mostrarCarrito();
}

async function finalizarCompra(){
  const carrito = JSON.parse(sessionStorage.getItem("carrito")) || [];
  const usuario = localStorage.getItem("usuario");

  if (!usuario) {
    alert("Debés iniciar sesión para comprar.");
    return;
  }

  if (carrito.length === 0) {
    alert("El carrito está vacío.");
    return;
  }

  try {
    const response = await fetch("/ventas", {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({ carrito, usuario })
    });

    const data = await response.json();

    if (response.ok) {
      confirmarCompraExitosa();
    } else {
      alert("Error al registrar la compra: " + (data.error || "Error desconocido"));
    }
  } catch (error) {
    console.error("Error al enviar la compra", error);
    alert("Error de conexión al registrar la compra.");
  }
}

function confirmarCompraExitosa() {
  const modal = document.getElementById("modal-compra");
  modal.classList.remove("hidden");
  localStorage.removeItem("usuario");
  sessionStorage.removeItem("carrito");

  document.getElementById("btn-reiniciar").addEventListener("click", () => {
    //localStorage.removeItem("usuario");
    //sessionStorage.removeItem("carrito");
    location.reload();
  });

  document.getElementById("btn-imprimir").addEventListener("click", () => {
    alert("Función de impresión aún no implementada.");
  });
}

function confirmarCompra(){
  let div = document.querySelector(".confirmar-container");
  let boton = document.getElementById("confirmar-compra");
  if (boton) {
    div.innerHTML = '<button class="finalizarCompra">✔️</button><button class="cancelarCompra">❌</button>';
  }
  document.querySelector(".finalizarCompra").addEventListener("click", function(){
    finalizarCompra();
  });
  document.querySelector(".cancelarCompra").addEventListener("click", function(){
    mostrarCarrito();
  });
}

document.addEventListener("DOMContentLoaded", () => {
  const modalUsuario = document.getElementById("modal-usuario");
  const inputNombre = document.getElementById("nombre-usuario-input");
  const btnGuardar = document.getElementById("btn-guardar-usuario");

  const usuarioGuardado = localStorage.getItem("usuario");

  if (!usuarioGuardado) {
    modalUsuario.classList.remove("hidden");

    btnGuardar.addEventListener("click", () => {
      const nombre = inputNombre.value.trim();

      if (nombre.length < 2) {
        alert("Por favor ingresá un nombre válido");
        return;
      }

      localStorage.setItem("usuario", nombre);
      modalUsuario.classList.add("hidden");
    });
  } else {
    modalUsuario.classList.add("hidden");
  }
});