def test_pagina_inicial(cliente):

	respuesta=cliente.get("/")

	contenido=respuesta.data.decode()

	respuesta.status_code==200
	assert "Tu Nachitoo te quiere mucho jejeje" in contenido