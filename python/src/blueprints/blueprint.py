from flask import Blueprint

bp=Blueprint("blueprint", __name__)

# Vista de la pagina principal
@bp.route("/", methods=["GET"])
def inicio()->str:

	return f"<h1>Tu Nachitoo te quiere mucho jejeje</h1>"

@bp.route('/health')
def health():
	
    return "OK", 200