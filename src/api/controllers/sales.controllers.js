// Importando modelo
import Sales from "../models/sales.models.js";

// POST /ventas - Registrar una nueva venta
export const registrarVenta = async (req, res) => {
  try {
    const carrito = req.body.carrito;
    const usuario = req.body.usuario;

    // Validaciones básicas
    if (!carrito || !Array.isArray(carrito) || carrito.length === 0) {
      return res.status(400).json({
        error: "El carrito está vacío o es inválido"
      });
    }

    // Calcular total de la venta
    const total = carrito.reduce(
      (acc, prod) => acc + prod.quantity * parseFloat(prod.price),
      0
    );

    // Registrar venta en la base de datos
    const [ventaResult] = await Sales.insertNewSale(usuario, total);
    const ventaId = ventaResult.insertId;

    // Registrar cada detalle de producto en la venta
    for (const item of carrito) {
      await Sales.insertSaleDetail(
        ventaId,
        item.id,
        item.quantity,
        parseFloat(item.price)
      );
    }

    // Éxito
    res.status(201).json({
      message: "Venta registrada correctamente",
      ventaId
    });

  } catch (error) {
    console.error("Error al registrar la venta", error);

    res.status(500).json({
      error: "Error interno del servidor al registrar la venta"
    });
  }
};