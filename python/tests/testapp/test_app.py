def test_pagina_inicial(cliente):

	respuesta=cliente.get("/")

	contenido=respuesta.data.decode()

	respuesta.status_code==200
	assert "Mi Amanda, mi amor" in contenido

def test_pagina_health(cliente):

	respuesta=cliente.get("/health")

	contenido=respuesta.data.decode()

	respuesta.status_code==200
	assert "OK" in contenido

def test_pagina_golden(cliente):

	respuesta=cliente.get("/golden")

	contenido=respuesta.data.decode()

	respuesta.status_code==200
	assert "Hola Golden" in contenido