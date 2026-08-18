# Laboratorio Semana 1 — Tu primer script y tu primer commit
### Semana 1 · Fundamentos de Programación para Análisis Económico · UdeC-EAN

> **Esta guía continúa la [guía de instalación](guia_instalacion.md).**
> Allí llegaste hasta la sección 4: R, RStudio y GitHub Desktop instalados y
> funcionando. Aquí vas a **usarlos por primera vez**.
>
> No necesitas saber programar todavía. Vas a escribir **dos líneas** de R.
> Lo que se practica hoy no es el código: es el **flujo de trabajo**.

---

## Antes de empezar: revisa que tengas esto

- [ ] RStudio abre y `2 + 2` responde `[1] 4`
- [ ] Tienes cuenta en **github.com** y sabes tu usuario
- [ ] **GitHub Desktop** está instalado y con tu sesión iniciada

> ¿Alguno sin marcar? Avisa ahora. Este laboratorio existe justamente para
> resolver eso, y el resto no funciona sin esos tres.

---

## 1. Crear el repositorio

Un **repositorio** es una carpeta con memoria: guarda tus archivos *y* el
historial de todos sus cambios.

En **GitHub Desktop**:

1. `File` → `New Repository...`
2. **Name:** `fundamentos-programacion`
   *(sin espacios ni tildes — es el nombre de una carpeta y parte de una URL)*
3. **Description:** `Curso Fundamentos de Programación para Análisis Económico`
4. **Local path:** elige una carpeta que puedas encontrar después.
   Por ejemplo `Documentos` — **evita el Escritorio y evita OneDrive/Dropbox**
   (la sincronización automática pelea con Git y genera conflictos raros).
5. Marca ✅ **Initialize this repository with a README**
6. Clic en **Create Repository**

✅ **Deberías ver:** GitHub Desktop muestra arriba el nombre del repositorio y,
al centro, un mensaje tipo *"No local changes"*. Eso significa: carpeta creada,
sin cambios pendientes.

> 📁 **Anota dónde quedó.** En GitHub Desktop: `Repository` → `Show in Explorer`
> (Windows) o `Show in Finder` (Mac). Ábrelo y mira: hay un archivo `README.md`.
> Esa carpeta es tu repositorio.

---

## 2. Tu primer script en R

Ahora vas a crear un archivo de código. Será mínimo a propósito.

1. Abre **RStudio**
2. `File` → `New File` → `R Script`
3. Escribe estas líneas (puedes cambiar el nombre y la fecha):

```r
# Mi primer script
# Autor: [TU NOMBRE]
# Fecha: [FECHA]
# Curso: Fundamentos de Programación para Análisis Económico

print("Hola, mundo económico")

2 + 2
```

4. Para ejecutarlo: pon el cursor en una línea y presiona
   **Ctrl + Enter** (Windows) o **Cmd + Enter** (Mac).

✅ **Deberías ver** en la consola (panel inferior izquierdo):

```text
[1] "Hola, mundo económico"
[1] 4
```

> 💡 **¿Qué es el `#`?** Todo lo que va después de `#` es un **comentario**: R lo
> ignora por completo. Sirve para dejar escrito, en español, qué hace el código y
> por qué. Un buen comentario explica el **porqué**, no repite el qué.

### Guardar el script — el paso donde más gente se equivoca

5. `File` → `Save As...`
6. **Navega hasta la carpeta del repositorio** que creaste en el paso 1
7. Nómbralo `mi_primer_script.R` — con la extensión **`.R`**

> ⚠️ **Esto es lo importante:** si guardas el archivo en cualquier otro lugar
> (Descargas, Escritorio, Documentos), **Git no lo va a ver** y el commit
> quedará vacío. El archivo tiene que estar **dentro de la carpeta del
> repositorio**.
>
> ¿Cómo confirmas que quedó bien? Cambia a GitHub Desktop: debería aparecer
> `mi_primer_script.R` en la lista de la izquierda, en verde. Si no aparece,
> está guardado en otra parte.

---

## 3. Escribir el README

El `README.md` es la **portada** de tu repositorio: es lo primero que ve
cualquiera que lo abra, incluido un futuro empleador.

Por ahora será muy simple. En la Semana 2 aprenderás a escribir uno completo
(hay una [plantilla](plantilla_README.md) esperándote).

1. En RStudio: `File` → `Open File...` y abre el `README.md` de tu repositorio
   *(está en la carpeta del repo, se creó solo en el paso 1)*
2. Borra lo que tenga y escribe algo así:

```markdown
# Fundamentos de Programación para Análisis Económico

Repositorio del curso, Escuela de Administración y Negocios,
Universidad de Concepción · Campus Chillán.

**Estudiante:** [TU NOMBRE]
**Semestre:** 1, 2026

## Contenido

- `mi_primer_script.R` — primer script del curso (Semana 1).
```

3. Guarda con **Ctrl + S** / **Cmd + S**

> 💡 **¿Qué son el `#` y el `##` aquí?** Ojo, no son comentarios: en un archivo
> `.md` sirven para **títulos** (un `#` es título principal, `##` es subtítulo),
> y `**texto**` pone algo en **negrita**. Ese lenguaje se llama **Markdown** y lo
> veremos bien más adelante. Por ahora basta con copiar el formato.

---

## 4. Tu primer commit

Un **commit** es una foto guardada de tu proyecto en un momento: un punto al que
siempre podrás volver.

Cambia a **GitHub Desktop**:

1. En la columna izquierda verás los archivos que cambiaron:
   `mi_primer_script.R` y `README.md`
2. Asegúrate de que ambos estén **marcados con ✅** (así entran al commit)
3. Abajo a la izquierda hay dos campos:
   - **Summary** (obligatorio): escribe `Primer script y README`
   - **Description** (opcional): déjalo vacío
4. Clic en el botón azul **Commit to main**

✅ **Deberías ver:** la lista de archivos queda vacía y aparece
*"No local changes"*. Tu commit ya está guardado… **pero todavía solo en tu
computador**.

> 💡 **Cómo escribir un buen mensaje de commit.** Debe decir *qué cambiaste*, en
> pocas palabras y en presente.
> ❌ `cambios`, `asdf`, `commit 2`
> ✅ `Primer script y README`, `Agrego cálculo de promedio`, `Corrijo ruta de datos`
>
> Suena a detalle menor, pero dentro de tres meses ese historial será la única
> forma de entender qué hiciste.

---

## 5. Subir el repositorio a GitHub (*push*)

Hasta aquí todo vive en tu computador. Para que exista en internet —y para que
el profesor pueda verlo— hay que **publicarlo**.

1. En GitHub Desktop, arriba, clic en **Publish repository**
2. Se abre una ventana:
   - **Name:** deja `fundamentos-programacion`
   - ⬜ **Keep this code private:** te recomiendo **desmarcarlo**, para que el
     repositorio sea **público**
3. Clic en **Publish repository**

> 🌐 **¿Por qué público?** Porque este repositorio es tu **portafolio**. Un
> repositorio público es verificable: no *dice* que sabes R, lo **demuestra**.
> Hoy Banco Central, CMF y las consultoras piden el enlace a GitHub en sus
> procesos de selección.
>
> Si prefieres mantenerlo privado, no hay problema: solo tendrás que agregar al
> profesor como colaborador para las entregas. Avísale.

✅ **Verifica que funcionó:** entra a `github.com`, inicia sesión y busca tu
repositorio. Deberías ver los dos archivos y, al abrir cualquiera, tu contenido.
El README aparece renderizado abajo, con los títulos ya formateados.

> **De ahora en adelante**, ese botón dirá **Push origin** en vez de *Publish
> repository*. El flujo completo de trabajo será siempre el mismo:
>
> **editar → guardar → Commit → Push**

---

## 6. La entrega (verificación de setup, sin nota)

Sube a Canvas **dos cosas**:

1. **Una captura de pantalla** de RStudio abierto, donde se vea tu script y la
   consola con el resultado `[1] "Hola, mundo económico"`
2. **El enlace a tu repositorio** en GitHub
   *(tiene la forma `https://github.com/TU-USUARIO/fundamentos-programacion`)*

Y en el laboratorio escribe también un **párrafo corto**: ¿qué te resultó fácil
y qué te resultó difícil de la instalación? Sé honesto — sirve para ajustar el
curso.

> Esta entrega **no lleva nota**. Solo confirma que tu entorno quedó
> funcionando. La primera entrega calificada es la **T1** (Semana 2, 6 %), que
> construye sobre este mismo repositorio.

---

## Problemas frecuentes

| Síntoma | Qué pasa / cómo se arregla |
|---|---|
| GitHub Desktop no muestra mi script | Está guardado fuera de la carpeta del repositorio. En RStudio: `File → Save As...` y guárdalo dentro del repo. |
| El botón **Commit** está gris | Falta el mensaje en **Summary**, o no hay ningún archivo marcado con ✅. |
| No aparece **Publish repository** | Ya lo publicaste: el botón ahora dice **Push origin**. |
| Hice commit pero en github.com no veo nada | Te faltó el **push**. Commit guarda local; push sube a la nube. |
| Mi archivo se llama `mi_primer_script.R.txt` | Windows agregó la extensión. Renómbralo y activa "ver extensiones de archivo" en el Explorador. |
| Aparece un error con `.Rproj` o rutas | Todavía no usamos proyectos `.Rproj` — eso es Semana 2. Por ahora basta con la carpeta. |
| Sale un error largo en rojo que no entiendo | Cópialo completo y tráelo. Leer errores es una habilidad del curso, no un fracaso. |

---

## Lo que acabas de aprender (aunque no lo parezca)

Escribiste dos líneas de código, pero completaste el **ciclo profesional entero**:

```text
escribir código  →  guardarlo  →  versionarlo (commit)  →  publicarlo (push)
```

Ese ciclo se va a repetir en **todas** las entregas del semestre. Lo que cambiará
es lo que va dentro del script, no el flujo.

> **Siguiente paso — Semana 2:** organizar el proyecto como corresponde
> (carpetas `data/`, `scripts/`, archivo `.Rproj`) y escribir un README
> completo. Ver la [sección 5 de la guía de instalación](guia_instalacion.md)
> y la [plantilla de README](plantilla_README.md).
