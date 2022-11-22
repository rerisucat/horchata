from flask import Flask, render_template, request, redirect, url_for, flash
import pymysql

app = Flask(__name__)

#Acerca de Nosotros

@app.route('/nosotros')
def nosotros():
    return render_template("nosotros.html")

@app.route ('/equipo')
def equipo():
    return render_template("equipo.html")

#Mostrar Catalogo de juegos disponibles

@app.route('/')
def index():
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='horchata')
    cursor = conn.cursor()
    cursor.execute('select idCat, nomJuego, descripcion, precio, imagen, plataforma from catalogo order by idCat')
    datos = cursor.fetchall()
    return render_template("index.html", catalogo = datos)

#Mostrar detalles

@app.route('/detalles_detalles/<string:idD>' , methods=['GET'])
def detalles_detalle(idD):
    conn = pymysql.connect(host='localhost', user='root', passwd='', db='horchata')
    cursor = conn.cursor()
    cursor.execute('select idDe,nomJuego,desarrollador,distribuidor,disenadores,genero,modos,version,pataformas,lanzamiento from detalles where idDe = %s', (idD))
    dato = cursor.fetchall()

    return render_template("detalles.html", dat = dato[0])

if __name__ == "__main__":
    app.run(debug=True)
