# Pointercrate Mobile

Aplicación móvil desarrollada en **Flutter** para consultar la lista de demons de [Pointercrate](https://pointercrate.com/), el ranking oficial de los niveles más díficiles de Geometry Dash.

---

## Bitácora de Avances Semanales

### Semana 1 — 18 de marzo de 2026
**Estructura inicial de la pantalla principal y componentes UI**

- Se incorporó el paquete `dotted_border` como dependencia.
- Se implementó el widget `DemonCard` para mostrar demonios en la lista principal extendida (`MainListPage`).

---

### Semana 2 — 31 de marzo de 2026
**Rediseño del dominio y nuevas pantallas**

- Se reemplazó la entidad `DemonEntity` por `DemonListedFormEntity`, más adecuada para representar demonios en forma de lista. Se actualizaron el repositorio, caso de uso, fuente de datos, BLoC, estados y widgets correspondientes.
- Se añadió un `PointercrateDrawer` integrado en `MainListPage`.
- Se implementó la pantalla `LegacyListPage` con un botón de ayuda que muestra `LegacyListDialogNote` (AlertDialog).
- Se mejoró `PointercrateAppBar` para aceptar un widget de acción opcional y cambiar el comportamiento del ícono de navegación.
- El FAB (`SubmitDemonlistFAB`) ahora navega a la ruta de la lista legada.

---

### Semana 3 — 1 de abril de 2026
**Modelo de jugador y mejoras al dominio**

- Se introdujo `PlayerMinimalFormEntity` y `PlayerMinimalFormModel` (con archivos generados por `freezed`/`json_serializable`) para representar jugadores como objetos en lugar de cadenas de texto planas.
- Se actualizó `DemonListedFormEntity` y `DemonListedFormModel` para usar el nuevo modelo de jugador en los campos `publisher` y `verifier`.
- Se ajustaron los datos de prueba (`DemonListedFormFaker`) y la UI (`DemonCard` ahora muestra `publisher.name`).
- Se configuró `analysis_options` para excluir archivos generados e ignorar `invalid_annotation_target`.
- Se actualizó la restricción del SDK y se añadieron dependencias de `freezed`, `json_serializable` y anotaciones en `pubspec.yaml`.

---

### Semana 4 — 8 de abril de 2026
**Integración con API remota, inyección de dependencias y mejoras al toolchain de Android**

- Se introdujo soporte de entornos/sabores (*flavors*) con puntos de entrada específicos (`main_dev.dart`, `main_prod.dart`) e integración de `DevicePreview` para desarrollo.
- Se implementó la inyección de dependencias para registrar fuentes de datos remotas o mock según el entorno.
- Se implementó `DemonRemoteDataSource.getDemons` para consumir la API real de Pointercrate.
- Se añadieron mappers de dominio para `Demon` y `Player`, y se ajustó el repositorio para retornar entidades del dominio.
- Se mejoró la UI: mejor manejo de errores en la lista principal, renderizado de miniaturas en `DemonCard` y ajuste menor en el FAB.
- Se actualizó el toolchain de Android: Java 11 → 17, Gradle Wrapper a 8.14, nuevas versiones del Android Gradle Plugin y del plugin de Kotlin.
- Se añadió `device_preview_plus` a `pubspec.yaml`.

---

## Tecnologías utilizadas

- **Flutter / Dart** — Framework principal
- **BLoC** — Gestión de estado
- **Auto Route** — Navegación declarativa
- **Freezed + json_serializable** — Modelos inmutables y serialización JSON
- **get_it** — Inyección de dependencias
- **Device Preview Plus** — Vista previa en múltiples dispositivos durante desarrollo

---

## Arquitectura

El proyecto sigue una arquitectura por capas inspirada en **Clean Architecture**:

```
lib/
├── core/           # Configuración, DI, entorno
├── data/           # Modelos, mappers, fuentes de datos (remote/mock)
├── domain/         # Entidades, repositorios (contratos), casos de uso
└── presentation/   # Pantallas, widgets, BLoC
```