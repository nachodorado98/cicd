from flask import Blueprint

bp=Blueprint("blueprint", __name__)

# Vista de la pagina principal
@bp.route("/")
def inicio()->str:

	return f"<h1>Mi Amanda, mi amor</h1>"

@bp.route('/health')
def health():
	
    return "OK", 200

@bp.route("/golden")
def secret()->str:

	return f"<h1>Hola Golden</h1>"