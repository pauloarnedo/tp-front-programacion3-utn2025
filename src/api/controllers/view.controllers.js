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

// Get view for Products
export const vistaFront = async (req, res) => {
    
    try {
        const respuestaProductos = await Products.selectAllProducts();

        let orden = req.query.orden || 'az'; // valor por defecto
        let productosOrdenados = [...respuestaProductos[0]]; // copiamos el array para no mutarlo

        if (orden === 'az') {
            productosOrdenados.sort((a, b) => a.name.localeCompare(b.name));
        } else if (orden === 'za') {
            productosOrdenados.sort((a, b) => b.name.localeCompare(a.name));
        }

        res.render("front", {
            title: "Listado de productos",
            name: "front",
            products: productosOrdenados,
            order: orden
        });

    } catch (error) {
        console.error("Error obteniendo la informacion", error.message);
        res.status(500).json({
            error: "Error interno al obtener la informacion"
        })
    }
}


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