default:
	@echo publish
	@echo publish-image
	@echo view
	@echo viewRemote


DOC=grahamHillProposal.html

view:
	open $(DOC)

DEST=paulshannnon@pshannon.net:public_html/pshannon.net/miyawaki

publish:
	scp $(DOC) $(DEST)/grahamHill.html

publish-image:
	scp *.jpg $(DEST)/

viewRemote:
	open https://pshannon.net/miyawaki/grahamHill.html
