import connection from "../database/db.js";

const insertNewSale = async (usuario, total) => {
  const sql = `INSERT INTO ventas (usuario, total) VALUES (?, ?)`;
  return await connection.query(sql, [usuario, total]);
};

const insertSaleDetail = async (ventaId, productoId, cantidad, precioUnitario) => {
  const sql = `INSERT INTO detalle_ventas (venta_id, producto_id, cantidad, precio_unitario) VALUES (?, ?, ?, ?)`;
  return await connection.query(sql, [ventaId, productoId, cantidad, precioUnitario]);
};

export default {
    insertNewSale,
    insertSaleDetail
}