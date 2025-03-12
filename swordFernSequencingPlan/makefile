default:
	@echo assemble
	@echo view

assemble:
	m4 -P main.pre > main.html

view:
	open main.html

viewRemote:
	open https://pshannon.net/swordFernResearch


DEST=paulshannnon@pshannon.net:public_html/pshannon.net/swordFernResearch

publish:
	scp main.html $(DEST)/index.html

publish-media:
	scp deadCrown.jpeg $(DEST)/
	scp sew101-22-25-22-loop.mov $(DEST)/
