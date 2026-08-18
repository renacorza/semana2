# `salario_minimo_chile.csv`

Dataset del **micro-proyecto de la Semana 2**. Doce filas, tres columnas.
Diseñado para que un estudiante que recién instaló R pueda cargarlo y hacer
un cálculo económico real.

## Variables

| Columna | Tipo | Unidad | Descripción |
|---|---|---|---|
| `anio` | entero | año | 2014 a 2025 |
| `salario_minimo` | entero | pesos chilenos | Ingreso mínimo mensual **vigente en diciembre** de ese año, para trabajadores de 18 a 65 años |
| `ipc` | numérico | índice, **2010 = 100** | Índice de precios al consumidor, **promedio anual** |

## Fuentes

- **Ingreso mínimo mensual:** leyes de reajuste del IMM, Chile.
  Serie consolidada verificada en
  <https://es.wikipedia.org/wiki/Anexo:Salario_m%C3%ADnimo_en_Chile>
  (contrastar contra el texto de la ley vigente antes de cada semestre).
- **IPC:** Banco Mundial, indicador `FP.CPI.TOTL`
  *(Consumer price index, 2010 = 100)*, construido con datos del INE de Chile.
  Descargado vía API el **7 de agosto de 2026**:
  `https://api.worldbank.org/v2/country/CL/indicator/FP.CPI.TOTL?format=json&date=2014:2025`

## Decisiones metodológicas (importantes)

1. **El salario es el vigente en diciembre; el IPC es el promedio anual.** Es una
   simplificación deliberada: mezcla un valor puntual con uno promedio. Se hizo
   así para que la serie sea explicable en una clase de Semana 2. Para un
   análisis serio correspondería usar el salario promedio ponderado por meses.
2. **El IPC está redondeado a un decimal**, como lo publica el INE.
3. **La base 2010 = 100 es arbitraria** para el resultado: el nivel del salario
   real cambia con la base, pero la **tendencia** —que es lo que se enseña— no.

## Cálculo que se hace en clase

```r
salario_real <- salario_minimo / ipc * 100
```

## El hallazgo (verificado)

Entre 2014 y 2025 el ingreso mínimo nominal subió de \$225.000 a \$529.000
(**+135 %**), pero medido en pesos de poder adquisitivo constante subió
**solo +44 %**. Casi dos tercios del alza nominal fueron inflación.

> Cuidado con el lenguaje al enseñarlo: esto **describe** la evolución del poder
> adquisitivo del mínimo legal. No dice nada sobre sus efectos en el empleo ni
> sobre si el reajuste fue adecuado.
