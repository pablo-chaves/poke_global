# PokeGlobal 🎮

Una aplicación móvil Flutter que permite explorar el mundo Pokémon utilizando la PokeAPI. Los usuarios pueden buscar, visualizar detalles y marcar como favoritos sus Pokémon preferidos.

## 📋 Tabla de Contenidos

- [Tecnologías Utilizadas](#tecnologías-utilizadas)
- [Instrucciones de Instalación](#instrucciones-de-instalación)
- [Arquitectura](#arquitectura)
- [Uso de IA en el Proyecto](#uso-de-ia-en-el-proyecto)
- [Capas de Seguridad](#capas-de-seguridad)
- [Testing](#testing)

## 🚀 Tecnologías Utilizadas

### Framework y Lenguaje
- **Flutter 3.9.2+**: Framework multiplataforma para desarrollo móvil
- **Dart 3.9.2+**: Lenguaje de programación

### Gestión de Estado
- **flutter_riverpod 3.0.3**: Gestión de estado reactiva y robusta
- **riverpod_annotation 3.0.3**: Generación de código para providers
- **riverpod_generator 3.0.3**: Generador de código para Riverpod

### Networking y Datos
- **dio 5.9.0**: Cliente HTTP para consumo de APIs
- **cached_network_image 3.4.1**: Caché de imágenes de red
- **shared_preferences 2.5.3**: Persistencia local de datos

### Navegación
- **go_router 17.0.0**: Enrutamiento declarativo y navegación

### Serialización
- **freezed 3.2.3**: Generación de modelos inmutables
- **json_serializable 6.11.1**: Serialización JSON automática
- **json_annotation 4.9.0**: Anotaciones para JSON

### UI/UX
- **flutter_svg 2.2.2**: Soporte para imágenes SVG
- **Poppins Font**: Tipografía personalizada
- **flutter_native_splash 2.4.7**: Pantalla de splash nativa
- **flutter_launcher_icons 0.14.4**: Generación de iconos de aplicación

### Testing
- **flutter_test**: Framework de testing de Flutter
- **mocktail 1.0.4**: Librería de mocking para tests

### Herramientas de Desarrollo
- **build_runner 2.7.1**: Generación de código
- **flutter_lints 6.0.0**: Reglas de análisis estático

## 📦 Instrucciones de Instalación

### Prerrequisitos

1. **Flutter SDK**: Instalar Flutter 3.9.2 o superior
   ```bash
   # Verificar instalación
   flutter --version
   ```

2. **Dart SDK**: Incluido con Flutter

3. **Editor**: VS Code o Android Studio recomendados

### Pasos de Instalación

1. **Clonar el repositorio**
   ```bash
   git clone <url-del-repositorio>
   cd poke_global
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Generar código (Riverpod, Freezed, JSON)** *(solo necesario si modificas el código)*
   
   > **Nota**: Los archivos generados ya están incluidos en el repositorio. Solo necesitas ejecutar estos comandos si modificas archivos con anotaciones de Riverpod, Freezed o JSON.
   
   ```bash
   # Limpiar generaciones previas
   flutter pub run build_runner clean
   
   # Generar código
   flutter pub run build_runner build --delete-conflicting-outputs
   
   # O usar watch para regeneración automática durante desarrollo
   flutter pub run build_runner watch --delete-conflicting-outputs
   ```

4. **Generar splash screen e iconos (opcional)**
   ```bash
   flutter pub run flutter_native_splash:create
   flutter pub run flutter_launcher_icons
   ```

5. **Ejecutar la aplicación**
   ```bash
   # En modo debug
   flutter run
   
   # En modo release
   flutter run --release
   ```

### Ejecutar en Dispositivos Específicos

```bash
# Listar dispositivos disponibles
flutter devices

# Ejecutar en dispositivo específico
flutter run -d <device-id>

# Ejecutar en iOS
flutter run -d ios

# Ejecutar en Android
flutter run -d android
```

## 🏗️ Arquitectura

El proyecto implementa **Clean Architecture** con una estructura modular basada en features, siguiendo los principios SOLID y separación de responsabilidades.

### Estructura de Capas

```
lib/
├── core/                    # Funcionalidades compartidas
│   ├── constants/          # Constantes (colores, assets, spacing)
│   ├── errors/             # Manejo de errores
│   ├── providers/          # Providers globales (Dio, SharedPreferences)
│   ├── routes/             # Configuración de rutas
│   ├── theme/              # Tema de la aplicación
│   ├── utils/              # Utilidades compartidas
│   └── widgets/            # Widgets reutilizables
│
├── features/               # Módulos por funcionalidad
│   ├── pokemon/
│   │   ├── data/
│   │   │   ├── datasources/      # Fuentes de datos (API, local)
│   │   │   ├── models/           # Modelos de datos (DTOs)
│   │   │   └── repositories/     # Implementación de repositorios
│   │   ├── domain/
│   │   │   ├── entities/         # Entidades de negocio
│   │   │   └── repositories/     # Interfaces de repositorios
│   │   └── presentation/
│   │       ├── providers/        # Providers de UI
│   │       ├── screens/          # Pantallas
│   │       └── widgets/          # Widgets específicos
│   ├── favorites/
│   ├── profile/
│   ├── onboarding/
│   └── regions/
│
└── main.dart               # Punto de entrada
```

### Capas de Clean Architecture

#### 1. **Capa de Presentación (Presentation Layer)**
- **Responsabilidad**: Interfaz de usuario y lógica de presentación
- **Componentes**:
  - `Screens`: Pantallas de la aplicación
  - `Widgets`: Componentes visuales reutilizables
  - `Providers`: Gestión de estado con Riverpod
- **Características**:
  - Uso de `ConsumerWidget` y `ConsumerStatefulWidget`
  - Estados reactivos con Riverpod
  - Separación de lógica de UI

#### 2. **Capa de Dominio (Domain Layer)**
- **Responsabilidad**: Lógica de negocio pura
- **Componentes**:
  - `Entities`: Modelos de negocio inmutables (usando Freezed)
  - `Repositories`: Interfaces abstractas
- **Características**:
  - Independiente de frameworks
  - Sin dependencias externas
  - Modelos inmutables con Freezed

#### 3. **Capa de Datos (Data Layer)**
- **Responsabilidad**: Obtención y persistencia de datos
- **Componentes**:
  - `DataSources`: 
    - `RemoteDataSource`: Consumo de PokeAPI con Dio
    - `LocalDataSource`: Caché con SharedPreferences
  - `Models`: DTOs con serialización JSON
  - `Repositories`: Implementación de interfaces del dominio
- **Características**:
  - Patrón Repository
  - Caché de datos para modo offline
  - Manejo de errores centralizado

### Patrones de Diseño Implementados

1. **Repository Pattern**: Abstracción de fuentes de datos
2. **Dependency Injection**: Con Riverpod providers
3. **Singleton Pattern**: Para servicios compartidos (Dio, SharedPreferences)
4. **Observer Pattern**: Gestión de estado reactiva con Riverpod
5. **Factory Pattern**: Generación de modelos con Freezed

### Flujo de Datos

```
UI (Presentation) 
    ↓ (lee estado)
Provider (Riverpod)
    ↓ (llama)
Repository Interface (Domain)
    ↓ (implementa)
Repository Implementation (Data)
    ↓ (usa)
DataSource (Remote/Local)
    ↓ (obtiene)
API / Local Storage
```

### Ejemplo: Flujo de Filtrado por Tipo

```
1. Usuario selecciona tipos en FilterModal
   ↓
2. PokemonListProvider.setTypeFilters(['fire', 'water'])
   ↓
3. Repository.getPokemonByType('fire') + getPokemonByType('water')
   ↓
4. RemoteDataSource consulta:
   - https://pokeapi.co/api/v2/type/fire
   - https://pokeapi.co/api/v2/type/water
   ↓
5. Caché local (SharedPreferences)
   ↓
6. Combina resultados (elimina duplicados)
   ↓
7. Actualiza UI con lista filtrada
```

**Optimización**: En lugar de hacer 1328+ peticiones (una por cada Pokémon), se hacen solo 1-18 peticiones (una por tipo seleccionado), reduciendo el tiempo de filtrado de minutos a segundos.

## 🤖 Uso de IA en el Proyecto

### Herramienta Utilizada
Se utilizó **Windsurf IDE con Cascade AI** como asistente de desarrollo durante la construcción del proyecto.

### Propósito del Uso de IA

1. **Generación de Código Boilerplate**
   - Creación de modelos Freezed
   - Generación de providers Riverpod
   - Estructura de archivos siguiendo Clean Architecture

2. **Resolución de Problemas**
   - Debugging de errores de compilación
   - Optimización de código
   - Sugerencias de mejores prácticas

3. **Documentación**
   - Generación de comentarios de código
   - Creación de este README
   - Documentación de funciones complejas

4. **Testing**
   - Generación de casos de prueba
   - Creación de mocks con Mocktail
   - Estructura de tests unitarios y de widgets
   - Cobertura de funcionalidades críticas

5. **Optimización de Rendimiento**
   - Identificación de cuellos de botella
   - Sugerencias de mejoras en consultas API
   - Implementación de estrategias de caché

### Rules y Configuración de IA

Las siguientes reglas fueron configuradas para guiar el comportamiento de la IA:

1. **Arquitectura**
   - Seguir estrictamente Clean Architecture
   - Separar código por features
   - Mantener independencia de capas

2. **Estilo de Código**
   - Seguir las convenciones de Dart/Flutter
   - Usar Freezed para modelos inmutables
   - Implementar Riverpod para gestión de estado

3. **Mejores Prácticas**
   - Código autodocumentado
   - Nombres descriptivos de variables y funciones
   - Manejo de errores robusto
   - Implementar caché para optimizar rendimiento

4. **Testing**
   - Escribir tests para lógica de negocio
   - Usar Mocktail para mocking
   - Cobertura mínima de código crítico

### Limitaciones y Supervisión Humana

- **Revisión de código**: Todo código generado fue revisado y ajustado manualmente
- **Decisiones arquitectónicas**: Tomadas por el desarrollador
- **Lógica de negocio**: Implementada y validada manualmente
- **Testing**: Casos de prueba verificados y ejecutados

## 🔒 Capas de Seguridad

### 1. **Seguridad de Red**

#### Timeouts Configurados
```dart
BaseOptions(
  baseUrl: 'https://pokeapi.co/api/v2/',
  connectTimeout: Duration(seconds: 5),
  receiveTimeout: Duration(seconds: 3),
)
```
- **Connect Timeout**: 5 segundos para establecer conexión
- **Receive Timeout**: 3 segundos para recibir respuesta
- **Propósito**: Prevenir bloqueos indefinidos y mejorar experiencia de usuario

#### HTTPS
- Todas las comunicaciones con la API usan **HTTPS**
- Cifrado de datos en tránsito
- Protección contra ataques man-in-the-middle

### 2. **Manejo de Errores**

#### Try-Catch Blocks
```dart
try {
  final response = await dio.get('pokemon/$name');
  return response.data;
} catch (e) {
  throw Exception('Error inesperado: $e');
}
```
- Captura de excepciones en todas las llamadas de red
- Prevención de crashes por errores no manejados
- Mensajes de error descriptivos para debugging

#### Validación de Datos
- Validación de respuestas de API antes de procesarlas
- Verificación de tipos de datos
- Manejo de casos null-safety con Dart

### 3. **Persistencia Segura**

#### SharedPreferences
- Almacenamiento local seguro de:
  - Nombre de usuario
  - Lista de favoritos
  - Caché de datos de Pokémon
- **No se almacenan datos sensibles** (contraseñas, tokens, etc.)

#### Caché Inteligente
```dart
Future<Map<String, dynamic>?> _getLocalPokemonDetail(String name) async {
  final jsonString = prefs.getString('pokemon_detail_$name');
  if (jsonString != null) {
    return json.decode(jsonString);
  }
  return null;
}
```
- Reducción de llamadas a la API
- Funcionamiento offline
- Mejora de rendimiento
- **Caché por tipo**: Almacena resultados de filtros para acceso rápido
- **Caché de detalles**: Evita peticiones repetidas de Pokémon ya consultados
- **Caché de especies**: Optimiza carga de descripciones y categorías

### 4. **Validación de Entrada de Usuario**

#### Validación de Nombre
- Verificación de que el nombre no esté vacío
- Sanitización de entrada antes de almacenar
- Prevención de inyección de código

#### Búsqueda Segura
```dart
final query = name.toLowerCase();
final filtered = results.where((pokemon) {
  final pname = (pokemon as Map<String, dynamic>)['name'] as String? ?? '';
  return pname.toLowerCase().contains(query);
}).toList();
```
- Normalización de búsquedas (lowercase)
- Manejo seguro de valores null
- Prevención de errores por datos malformados

### 5. **Seguridad de UI**

#### Orientación Bloqueada
```dart
SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
]);
```
- Prevención de problemas de UI en orientación horizontal
- Experiencia de usuario consistente

#### Text Scale Factor Limitado
```dart
final clampedScale = media.textScaleFactor.clamp(0.8, 1.2).toDouble();
```
- Prevención de problemas de layout por escalado extremo
- Accesibilidad controlada
- UI consistente en diferentes dispositivos

### 6. **Gestión de Estado Segura**

#### Immutability con Freezed
- Modelos inmutables previenen mutaciones accidentales
- Estado predecible y rastreable
- Reducción de bugs relacionados con estado

#### Riverpod
- Gestión de estado type-safe
- Prevención de memory leaks
- Disposición automática de recursos

### 7. **Protección de Recursos**

#### Caché de Imágenes
```dart
cached_network_image: ^3.4.1
```
- Reducción de consumo de datos
- Prevención de descargas repetidas
- Optimización de memoria

### Mejoras de Seguridad Futuras

Para un entorno de producción con datos sensibles, se recomienda:

1. **Autenticación y Autorización**
   - Implementar OAuth 2.0 / JWT
   - Gestión segura de tokens

2. **Cifrado Local**
   - Usar `flutter_secure_storage` para datos sensibles
   - Cifrado de base de datos local

3. **Ofuscación de Código**
   - Ofuscación en builds de release
   - Protección de propiedad intelectual

4. **Certificate Pinning**
   - Validación de certificados SSL
   - Protección adicional contra MITM

5. **Rate Limiting**
   - Implementar límites de peticiones
   - Prevención de abuso de API

## 🧪 Testing

### Ejecutar Tests

```bash
# Ejecutar todos los tests
flutter test

# Ejecutar tests con cobertura
flutter test --coverage

# Ejecutar tests específicos
flutter test test/providers/favorites_provider_test.dart
```

### Estructura de Tests

```
test/
├── providers/              # Tests de providers (9 tests)
│   ├── favorites_provider_test.dart
│   ├── user_name_provider_test.dart
│   └── pokemon_list_provider_test.dart
├── repositories/           # Tests de repositorios (7 tests)
│   └── pokemon_repository_test.dart
├── widgets/               # Tests de widgets (27 tests)
│   ├── ask_name_screen_test.dart
│   ├── onboarding_screen_test.dart
│   ├── profile_screen_test.dart
│   ├── search_input_test.dart
│   ├── filter_modal_test.dart
│   └── type_chip_test.dart
└── test_helpers.dart      # Utilidades para testing
```

### Cobertura de Tests

**Total: 51 tests pasando ✅**

#### Tests por Categoría:

1. **Unit Tests (16 tests)**
   - Providers: Lógica de estado y filtrado
   - Repositories: Integración con data sources
   - Validación de datos y transformaciones

2. **Widget Tests (35 tests)**
   - Pantallas: Onboarding, perfil, búsqueda
   - Componentes: Chips de tipo, modales, inputs
   - Interacciones de usuario
   - Renderizado condicional

#### Funcionalidades Testeadas:

- ✅ **Búsqueda de Pokémon**: Input, limpieza, resultados
- ✅ **Filtrado por tipo**: Selección múltiple, aplicación, cancelación
- ✅ **Favoritos**: Agregar, remover, persistencia
- ✅ **Gestión de estado**: Carga, error, datos
- ✅ **Navegación**: Rutas, parámetros
- ✅ **UI Components**: Renderizado, estilos, interacciones

### Tecnologías de Testing

- **flutter_test**: Framework base de Flutter
- **mocktail**: Mocking de dependencias
- **ProviderContainer**: Testing aislado de Riverpod
- **TestWidgetsFlutterBinding**: Testing de widgets

---

## 📱 Funcionalidades Principales

### Exploración y Búsqueda
- ✅ **Lista de Pokémon** con paginación infinita (1328 Pokémon)
- ✅ **Búsqueda en tiempo real** por nombre
- ✅ **Filtrado avanzado por tipo** con optimización de rendimiento

### Sistema de Filtros 🎯

#### Características del Filtrado:
- **18 tipos disponibles**: Normal, Fuego, Agua, Eléctrico, Planta, Hielo, Lucha, Veneno, Tierra, Volador, Psíquico, Bicho, Roca, Fantasma, Dragón, Siniestro, Acero, Hada
- **Selección múltiple**: Combina varios tipos en un solo filtro
- **Búsqueda + Filtros**: Aplica búsqueda por nombre sobre resultados filtrados
- **Indicador visual**: Botón de filtro cambia de color cuando hay filtros activos
- **Modal intuitivo**: Interfaz amigable para seleccionar tipos

#### Optimización de Rendimiento:
```
Antes: 1328+ peticiones HTTP (una por cada Pokémon)
Ahora: 1-18 peticiones HTTP (una por tipo seleccionado)
Resultado: De minutos a segundos ⚡
```

#### Implementación Técnica:
- Endpoint optimizado: `https://pokeapi.co/api/v2/type/{type}`
- Caché local de resultados por tipo
- Eliminación de duplicados con Map
- Combinación eficiente de múltiples tipos

### Detalles y Favoritos
- ✅ **Detalles completos** de cada Pokémon (stats, habilidades, tipos, debilidades)
- ✅ **Sistema de favoritos** con persistencia local
- ✅ **Información en español**: Nombres, categorías y descripciones
- ✅ **Manejo robusto de errores**: Fallbacks para datos faltantes

### Experiencia de Usuario
- ✅ **Modo offline** con caché inteligente
- ✅ **Onboarding personalizado** al primer uso
- ✅ **Perfil de usuario** editable
- ✅ **Interfaz moderna** con Material Design
- ✅ **Responsive** y adaptable a diferentes tamaños
- ✅ **Imágenes optimizadas** con caché de red

## 🔄 Historial de Mejoras

### Versión 1.0.0 - Características Principales

## 👨‍💻 Autor

Pablo Chaves Fuentes

---

**Versión**: 1.0.0+1
**Última actualización**: 11 de Noviembre 2025
