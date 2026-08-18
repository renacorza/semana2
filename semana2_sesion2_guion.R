# =============================================================================
# GUION DE CLASE — Semana 2 · Sesión 2: Conceptos de Programación
# Fundamentos de Programación para Análisis Económico · UdeC-EAN
#
# Nombre: [TU NOMBRE]      Fecha: [FECHA]
#
# CÓMO USAR ESTE ARCHIVO (síguelo junto al profesor):
#   - Corre cada línea con  Cmd+Enter (Mac) / Ctrl+Enter (Windows).
#   -  🔵 CORRE Y OBSERVA  -> ya está escrito; córrelo y anota lo que ves.
#   -  ✏️ COMPLETA          -> reemplaza los ____ antes de correr.
#   -  🔮 PREDICE           -> escribe tu respuesta ANTES de ejecutar.
#   -  🟢 TU TURNO          -> mini-reto que resuelves solo/a (2 min).
#   -  👀 SOLO MIRA         -> ejemplo conceptual; aún NO lo corras (lo vemos pronto).
#   -  ✅ Deberías ver      -> output esperado, para confirmar que vas bien.
# =============================================================================


# -----------------------------------------------------------------------------
# BLOQUE A — Variables y tipos de datos
# -----------------------------------------------------------------------------
# Una variable es una CAJA CON NOMBRE donde guardamos un valor para reutilizarlo.
# El operador de asignación en R es  <-  (atajo en RStudio: Alt + - ).

# 🔵 CORRE Y OBSERVA
iva <- 0.19          # se define UNA sola vez (en Excel estaría en 40 celdas)

precio_pasaje  <- 800         # pesos, micro urbano
viajes_al_mes  <- 44          # ida y vuelta, 22 dias habiles
gasto_transporte <- precio_pasaje * viajes_al_mes
gasto_transporte

# ✅ Deberías ver: 35200
# 💡 El nombre describe el contenido -> el código se autodocumenta.
#    `gasto_transporte` se entiende solo; `B7*C2` no.

# 🟢 TU TURNO: crea `salario <- 529000` (el mínimo 2025) y calcula qué
#    proporción de ese salario se va en transporte.



## Verificar el tipo: el error más común del semestre -------------------------
# 🔵 CORRE Y OBSERVA
edad <- 34
class(edad)          # ¿qué tipo es?
is.numeric(edad)     # pregunta sí/no

region <- "Ñuble"
class(region)        # ojo: el texto va entre comillas

# 🔮 PREDICE: la siguiente línea, ¿da un número o un error? ¿por qué?
poblacion <- "480609"       # vino como TEXTO (con comillas)
poblacion + 1               # córrela y compruébalo

# ✅ Deberías ver: Error -> no se puede sumar 1 a un texto.

# ✏️ COMPLETA: convierte `poblacion` a número y súmale 1 (pista: as.numeric()).
____(poblacion) + 1

# 💡 REGLA: antes de calcular, verifica el tipo con class() / is.numeric().
#    💬 ¿Por qué CASEN a veces trae los ingresos como texto?
#       (separadores de miles, símbolos $, celdas vacías…)


# -----------------------------------------------------------------------------
# BLOQUE B — ¿Por qué código en vez de Excel?
# -----------------------------------------------------------------------------
# 👀 SOLO MIRA (aún no tenemos dplyr ni el dataset; lo corremos en la Semana 5):
#    El mismo cálculo —"ingreso promedio por región"— en R es UNA instrucción
#    para TODAS las regiones, y el "cómo" queda escrito:
#
#    casen |>
#      group_by(region) |>
#      summarise(media = mean(ingreso))
#
# Las 4 propiedades que da el código (anótalas):
#   ♻️ Reproducible · 📈 Escalable · 🔍 Auditable · 🤖 Automatizable
#
# 💡 El error de Excel del caso Reinhart-Rogoff (Semana 1) habría sido
#    visible en UNA línea de código.


# -----------------------------------------------------------------------------
# BLOQUE C — Reproducibilidad y documentación
# -----------------------------------------------------------------------------
# Reproducible (definición operativa): otra persona —o tú en 6 meses— toma tu
# carpeta y obtiene el mismo resultado SIN preguntarte nada.
# Ingredientes: datos (data/raw/) + código (scripts/) + proyecto (.Rproj,
#               rutas relativas) + documentación (README + comentarios).

# El comentario responde el POR QUÉ, no el QUÉ (el qué ya lo dice el código).
# 🔵 CORRE Y OBSERVA la diferencia (esto es solo ilustrativo):
precio_neto <- 100000
# ❌ MAL (redundante):
precio_con_iva <- precio_neto * 1.19   # multiplica por 1.19
# ✅ BIEN (explica la decisión):
precio_con_iva <- precio_neto * 1.19   # IVA Chile 19% (Ley 825)
precio_con_iva

# 🟢 TU TURNO: escribe el ENCABEZADO mínimo de un script (en comentarios):
#    autor, fecha y una línea de qué hace. (Es lo que harás hoy en el lab.)



# -----------------------------------------------------------------------------
# MICRO-PROYECTO — ¿cuánto subió DE VERDAD el salario mínimo?
# -----------------------------------------------------------------------------
# ⚠️ Este bloque necesita que hayas abierto el .Rproj (doble clic), y que el CSV
#    de la Sesión 1 esté en data/raw/. Si no, la ruta va a fallar.

# 🔵 CORRE Y OBSERVA — cargar con ruta RELATIVA
datos <- read.csv("data/raw/salario_minimo_chile.csv")

# ✅ Deberías ver: ningún error. Fíjate en lo que NO hay: ni setwd(), ni C:/Users/...

# 🔵 CORRE Y OBSERVA — mirar ANTES de calcular (el hábito profesional)
str(datos)
head(datos)
nrow(datos)

# ✅ Deberías ver: 12 observaciones y 3 variables (anio, salario_minimo, ipc)

# ✏️ COMPLETA: verifica que las dos columnas del cálculo son numéricas.
class(datos$salario_minimo)
class(datos$____)

# 💡 El $ saca UNA columna. Lo vemos en detalle en la Semana 4; hoy solo se usa.
# ⚠️ Si el CSV hubiera traído "$225.000" (texto), class() diría "character"
#    y el cálculo fallaría. Por eso se verifica ANTES.

# ✏️ COMPLETA: deflactar = pasar de pesos nominales a poder de compra constante.
datos$salario_real <- datos$salario_minimo / datos$____ * 100

head(datos)

# 🔮 PREDICE antes de correr lo siguiente: el mínimo nominal subió 135% entre
#    2014 y 2025. ¿Cuánto crees que subió el REAL? ______

(datos$salario_minimo[12] / datos$salario_minimo[1] - 1) * 100    # nominal
(datos$salario_real[12]   / datos$salario_real[1]   - 1) * 100    # real

# ✅ Deberías ver: 135.1 y 43.9
# 💡 Casi dos tercios del alza nominal fueron INFLACIÓN, no mejora real.
#
# ⚠️ HONESTIDAD ANALÍTICA: esto DESCRIBE el poder adquisitivo del mínimo legal.
#    No dice si el reajuste fue suficiente ni qué efecto tuvo en el empleo.

# 🔵 CORRE Y OBSERVA — guardar el resultado
write.csv(datos, "output/salario_real.csv", row.names = FALSE)

# 🟢 TU TURNO: anda a GitHub Desktop. ¿Aparece output/salario_real.csv entre
#    los cambios? ¿Por qué? ______________________________________________


# -----------------------------------------------------------------------------
# BLOQUE D — Live coding con ChatGPT: cómo preguntar
# -----------------------------------------------------------------------------
# Regla de oro (Semana 1): para usar bien la IA hay que entender lo suficiente
# del código como para saber si la respuesta ES correcta.
#
# Una buena pregunta tiene CUATRO partes:
#   1. Contexto       -> "Estoy en R, principiante, con un data frame de CASEN."
#   2. Objetivo       -> "Quiero el ingreso promedio por región."
#   3. Datos/forma    -> "Columnas: region (texto), ingreso (numérico)."
#   4. Formato resp.  -> "Dame el código comentado y explica cada línea."
#
# 🟢 TU TURNO (escríbela aquí como comentario): transforma la pregunta pobre
#    "cómo saco promedios en R" en una pregunta RICA con las 4 partes.
#    MI PREGUNTA RICA:
#    ___________________________________________________________________
#    ___________________________________________________________________
#
# 🚩 Banderas rojas al usar IA:
#    ❶ paquetes fantasma (no instalados)  ❷ alucina nombres de columnas
#    ❸ corre pero responde OTRA pregunta  ❹ copiar sin entender
#
# ⚠️ NUNCA pegues código sin leerlo. Pregúntate: "¿entiendo cada línea?"


# -----------------------------------------------------------------------------
# CIERRE — variable · tipo · código vs Excel · reproducibilidad · prompting
#
# Al laboratorio (2h): el micro-proyecto completo + README + commits.
# T1 (calificada, 6%): proyecto inicial en GitHub, con TU propio cálculo.
# =============================================================================
