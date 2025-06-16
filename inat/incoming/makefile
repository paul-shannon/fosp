default:
	@echo venv
	@echo server
	@echo view
	@echo publish
	@echo viewRemote

venv:
	@echo source /Users/paul/github/slexil2/py3105slexil/bin/activate

PORT=8001

server:
		python -m http.server $(PORT) &

run:
	open http://localhost:$(PORT)/map4.html


PROJ = fernSurvey2025
DEST = paulshannnon@pshannon.net:public_html/pshannon.net/$(PROJ)

publish:
	scp map4.html $(DEST)/index.html
	scp *.geojson $(DEST)/
	scp fernReports.json $(DEST)/

view:
	@echo disable CORS in chrome
	open http://localhost:8001/map4.html

viewRemote:
	open https://pshannon.net/fernSurvey2025


