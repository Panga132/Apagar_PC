# 📴 Apagar PC con NFC

Automatiza el apagado de tu computador utilizando un **sticker NFC** y tu celular.
Al acercar el teléfono al NFC, se ejecuta un servidor local que:

* Cierra programas automáticamente
* Muestra mensajes personalizados
* Apaga el PC correctamente
* Todo en segundo plano

---

## 🚀 Características

* 📱 Activación mediante NFC
* 🧠 Servidor local con Flask
* 🪟 Ventanas emergentes personalizadas
* 🔄 Cierre automático de aplicaciones
* 📴 Apagado seguro del sistema
* ⚡ Inicio automático al encender el PC
* 🎨 Interfaz web personalizada

---

## 📂 Estructura del proyecto

```
Apagar_PC/
│
├── servidor_nfc.py
├── apagar_nfc.vbs
├── iniciar_servidor_nfc.vbs
│
└── templates/
    └── apagar.html
```

---

## ⚙️ Requisitos

* Windows 10 o superior
* Python 3.10+
* Celular con NFC
* Conexión a la misma red WiFi

---

## 📦 Instalación

### 1. Clonar repositorio

```
git clone https://github.com/Panga132/Apagar_PC.git
cd Apagar_PC
```

---

### 2. Instalar dependencias

Instalar Flask:

```
pip install flask
```

---

## ▶️ Ejecutar manualmente (prueba)

```
python servidor_nfc.py
```

Abrir en navegador:

```
http://localhost:5000/apagar
```

---

## 🔄 Inicio automático al encender el PC

Para que el servidor se inicie automáticamente:

### 1. Crea un arhivo .vbs

Abre bloc de notas y pega:

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run """C:\Python314\python.exe"" ""C:\Users\TU_RUTA_DEL_PROYECTO\apagar_pc\servidor_nfc.py""", 0, False

Cambia el nombre del arhivo por `iniciar_servidor_nfc.vbs` y debe quedar como archivo .vbs

⚠️ Cambiar:

* Ruta de Python de ser necesario
* Ruta del proyecto

---

### 2. Abrir carpeta de inicio de Windows

Presionar:

```
Win + R
```

Escribir:

```
shell:startup
```

---

### 3. Copiar archivo

Copiar `iniciar_servidor_nfc.vbs` dentro de esa carpeta.

Listo. El servidor iniciará automáticamente al encender el PC.

---

## 📱 Configurar el sticker NFC

Usar la app **NFC Tools**:

1. Abrir NFC Tools
2. Write / Escribir
3. Add record
4. URL / URI
5. Escribir:

```
http://NOMBRE-PC:5000/apagar
```

Ejemplo:

```
http://DESKTOP-XXXX:5000/apagar
```

6. Write
7. Acercar el celular al NFC

---

## 🔧 Personalización

Puedes editar:

### Aplicaciones que se cierran

Archivo:

```
apagar_nfc.vbs
```

Modificar los procesos:

```
taskkill /f /im chrome.exe
taskkill /f /im discord.exe
```

---

### Interfaz visual

Archivo:

```
templates/apagar.html
```

---

## 🧠 Cómo funciona

```
Celular NFC
      ↓
URL local
      ↓
Flask server
      ↓
Script VBS
      ↓
Cierre programas
      ↓
Apagar PC
```

---

## ⚠️ Notas importantes

* El celular y el PC deben estar en la misma red WiFi
* El servidor debe estar ejecutándose
* NFC debe estar activado en el celular

---

## 📄 Licencia

Uso libre para proyectos personales y educativos.
