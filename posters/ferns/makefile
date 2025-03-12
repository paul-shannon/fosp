default:
	@echo assemble
	@echo view

assemble:
	m4 -P main.pre > main.html

view:
	open main.html


viewRemote:
	open https://pshannon.net/swordFernIntro

publish:
	scp main.html  paulshannnon@pshannon.net:public_html/pshannon.net/swordFernIntro/index.html
	rsync -a *.jpeg paulshannnon@pshannon.net:public_html/pshannon.net/swordFernIntro/
	rsync -a *.png paulshannnon@pshannon.net:public_html/pshannon.net/swordFernIntro/
	rsync -a sew101-22-25-loop.mov paulshannnon@pshannon.net:public_html/pshannon.net/swordFernIntro/


update: assemble publish viewRemote
