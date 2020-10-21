


package:
	cd out && rm -f *.tgz
	cd qamatic && helm dependency update pact-broker && helm package pact-broker -d ../out	
	ls -alsh out

publish:
	git add *
	git commit -m "charts repackaged"
	git push
