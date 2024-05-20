from flask import Flask, request, render_template
from urllib.parse import quote as url_quote
import sqlite3
import json

some_quoted_url() = url_quote(some_url)

app = Flask(__name__, template_folder='docs', static_folder='docs/static')

def get_component_data(component_type, model):
    conn = sqlite3.connect('componentes.db')
    cursor = conn.cursor()
    cursor.execute("SELECT marca, especificaciones FROM componentes WHERE tipo=? AND modelo=?", (component_type, model))
    data = cursor.fetchone()
    conn.close()
    if data:
        return {"marca": data[0], **json.loads(data[1])}
    return None

def calculate_bottleneck(cpu_model, gpu_model, ram_model):
    cpu_data = get_component_data('CPU', cpu_model)
    gpu_data = get_component_data('GPU', gpu_model)
    ram_data = get_component_data('RAM', ram_model)

    if not cpu_data or not gpu_data or not ram_data:
        return "Error: Datos de componente no encontrados."

    # Obtener las especificaciones de los componentes
    cpu_cores = cpu_data.get('nucleos', 1)
    cpu_frequency = cpu_data.get('frecuencia', 1)
    cpu_tdp = cpu_data.get('tdp', 1)
    gpu_vram = gpu_data.get('vram', 1)
    ram_speed = ram_data.get('frecuencia', 1)
    ram_capacity = ram_data.get('capacidad', 1)

    # Ajustar los factores según la lógica del cuello de botella
    cpu_factor = ((cpu_cores / 8) * (cpu_frequency / 5) * (cpu_tdp / 95)) * 0.4  # Ajuste basado en el número de núcleos, frecuencia y TDP
    gpu_factor = (gpu_vram / 16) * 0.3  # Ajuste basado en la VRAM
    ram_factor = ((ram_speed / 4000) * (ram_capacity / 32)) * 0.3  # Ajuste basado en la velocidad y capacidad de la RAM

    # Calcular el cuello de botella ponderado
    bottleneck_percentage = 100 - ((cpu_factor + gpu_factor + ram_factor) * 100)

    return f"Cuello de botella aproximado: {bottleneck_percentage:.2f}%"
@app.route('/')
def index():
    conn = sqlite3.connect('componentes.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM componentes WHERE tipo = 'CPU'")
    cpus = cursor.fetchall()
    cursor.execute("SELECT * FROM componentes WHERE tipo = 'GPU'")
    gpus = cursor.fetchall()
    cursor.execute("SELECT * FROM componentes WHERE tipo = 'RAM'")
    rams = cursor.fetchall()
    conn.close()
    return render_template('index.html', cpus=cpus, gpus=gpus, rams=rams)

@app.route('/calculate', methods=['POST'])
def calculate():
    cpu = request.form.get('cpu')
    gpu = request.form.get('gpu')
    ram = request.form.get('ram')
    result = calculate_bottleneck(cpu, gpu, ram)
    return render_template('result.html', result=result)

if __name__ == '__main__':
    app.run(debug=True)