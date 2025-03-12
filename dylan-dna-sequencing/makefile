default:
	@echo publish
	@echo publish-docs
	@echo view
	@echo viewRemote



view:
	open dylan-sequencing.html

DEST=paulshannnon@pshannon.net:public_html/pshannon.net/sequencing

publish:
	scp dylan-sequencing.html $(DEST)/index.html

publish-docs:
	scp contract.pdf $(DEST)/

viewRemote:
	open https://pshannon.net/sequencing
