default:
	@echo view
	@echo publish
	@echo viewRemote

view:
	open index.html


viewRemote:
	open https://pshannon.net/swordFernResearchTimeline

publish:
	scp index.html  paulshannnon@pshannon.net:public_html/pshannon.net/swordFernResearchTimeline/
	rsync -a img/*.png paulshannnon@pshannon.net:public_html/pshannon.net/swordFernResearchTimeline/img/
	rsync -a docs/*.pdf  paulshannnon@pshannon.net:public_html/pshannon.net/swordFernResearchTimeline/docs/

