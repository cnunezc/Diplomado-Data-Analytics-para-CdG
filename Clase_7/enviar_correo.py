import os
import win32com.client as win32

ruta_archivo = r"C:\Users\ceuta\OneDrive\Escritorio\Documents\UST\Diplomado\Diplomado Data Analytics para CdG\Clase_7\dashboard_peliculas.html"

if not os.path.exists(ruta_archivo):
    print("El archivo no existe.")
    raise SystemExit

outlook = win32.Dispatch("Outlook.Application")

mail = outlook.CreateItem(0)

mail.To = "cnunez28@santotomas.cl"
mail.Subject = "Seguimiento Películas - 20261015"

mail.Body = (
    "Hola,\n\n"
    "Adjunto a este correo encontrarás el archivo HTML solicitado.\n\n"
    "Saludos cordiales."
)

mail.Attachments.Add(ruta_archivo)

# Para revisar antes de enviar:
mail.Display()

# Para enviar directamente:
# mail.Send()

print("Correo creado correctamente.")