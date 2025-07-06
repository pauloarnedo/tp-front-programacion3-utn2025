import Products from "../models/product.models.js";


// Get view for Products
export const vistaIndex = async (req, res) => {
    
    try {
        const respuestaProductos = await Products.selectAllProducts();

        res.render("index", {
            title: "Listado de productos",
            name: "index",
            products: respuestaProductos[0]
        });

    } catch (error) {
        console.error("Error obteniendo la informacion", error.message);
        res.status(500).json({
            error: "Error interno al obtener la informacion"
        })
    }
}

// Get view for Products con paginación
export const vistaFront = async (req, res) => {
  try {
    const respuestaProductos = await Products.selectAllProducts();
    const productos = respuestaProductos[0];

    // Filtrar solo los productos activos
    const productosActivos = productos.filter(producto => producto.active === 1);

    const perPage = 9;
    const page = parseInt(req.query.page) || 1;

    const totalProductos = productosActivos.length;
    const totalPages = Math.ceil(totalProductos / perPage);

    // Validar que la página no sea menor a 1 ni mayor a totalPages
    const currentPage = Math.min(Math.max(page, 1), totalPages);

    // Obtener productos correspondientes a la página
    const start = (currentPage - 1) * perPage;
    const end = start + perPage;
    const productosPaginados = productosActivos.slice(start, end);

    res.render("front", {
      title: "Listado de productos",
      name: "front",
      products: productosPaginados,
      page: currentPage,
      pages: totalPages
    });
  } catch (error) {
    console.error("Error obteniendo la informacion", error.message);
    res.status(500).json({
      error: "Error interno al obtener la informacion"
    });
  }
};


// Get view for get by id
export const vistaConsultar = (req, res) => {
    res.render("consultar", {
        title: "Consultar producto",
        name: "consultar",
        about: "Consultar producto por id"
    })
}


// Get view for post
export const vistaCrear = (req, res) => {
    res.render("crear", {
        title: "Crear producto",
        name: "crear"
    })
}


// Get view for put
export const vistaModificar = (req, res) => {
    res.render("modificar", {
        title: "Modificar producto",
        name: "modificar",
        about: "Primero buscamos el id, luego generamos un formulario para actualizar los campos"
    })
}


// Get view for delete
export const vistaEliminar = (req, res) => {
    res.render("eliminar", {
        title: "Eliminar producto",
        name: "eliminar",
        about: "Primero buscamos el id, luego generamos un boton para eliminar y un prompt para confirmar"
    })
}