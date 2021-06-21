html: Presentation.ipynb
	jupyter nbconvert --to slides Presentation.ipynb --template=cwi
	mv Presentation.slides.html html/Presentation.html
	cp -r figures ./html
website: html
	ghp-import -n -p -f html
	open https://tristanvanleeuwen.github.io/SIAMGS21/Presentation.html
	
