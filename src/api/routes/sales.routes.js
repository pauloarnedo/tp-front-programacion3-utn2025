import { Router } from "express";
import { registrarVenta } from "../controllers/sales.controllers.js";


const router = Router();

router.post("/", registrarVenta);



// Exportamos las rutas de los productos
export default router;