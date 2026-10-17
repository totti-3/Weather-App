# Windows-Fenster für die Wetter-App (pywebview).
# Zum Testen:  python app.py
import os
import sys
import webview

base = getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__)))
webview.create_window("Wetter", os.path.join(base, "index.html"), width=480, height=860, min_size=(360, 600))
webview.start(http_server=True)
