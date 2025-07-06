import { Router } from "express";
import { vistaConsultar, vistaCrear, vistaEliminar, vistaIndex, vistaModificar, vistaFront } from "../controllers/view.controllers.js";

const router = Router();

// Ruta de las vistas EJS
router.get("/", vistaIndex);

router.get("/consultar", vistaConsultar);

router.get("/crear", vistaCrear);

router.get("/modificar", vistaModificar);

router.get("/eliminar", vistaEliminar);

router.get("/front", vistaFront);


// Exportar las rutas de las vistas
export default router;