default:
	@echo view
	@echo publish
	@echo viewRemote

view:
	open index.html

DEST=douglasia-oct2025

viewRemote:
	open https://pshannon.net/$(DEST)


publish:
	scp index.html  paulshannnon@pshannon.net:public_html/pshannon.net/$(DEST)/
	rsync -a img/*.png paulshannnon@pshannon.net:public_html/pshannon.net/$(DEST)/img/
	rsync -a docs/*.pdf  paulshannnon@pshannon.net:public_html/pshannon.net/$(DEST)/docs/

