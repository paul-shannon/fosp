default:
	@echo assemble
	@echo view

assemble:
	m4 -P main.pre > main.html

view:
	open main.html


DIR=bigTree

viewRemote:
	open https://pshannon.net/$(DIR)


publish:
	scp main.html  paulshannnon@pshannon.net:public_html/pshannon.net/$(DIR)/index.html
	rsync -a *.jpeg paulshannnon@pshannon.net:public_html/pshannon.net/$(DIR)/
	rsync -a *.png paulshannnon@pshannon.net:public_html/pshannon.net/$(DIR)/
	rsync -a dougFirSeedlingToMature-thenDroneFromAbove.mov paulshannnon@pshannon.net:public_html/pshannon.net/$(DIR)/


update: assemble publish viewRemote
