VERSION := patch
GITHUB_API_TOKEN := ""

release:
	echo "Releasing version: $(VERSION)"
	git checkout master
	git pull origin master
	npm run build
	npm run lint
	npm run test
	npm version $(VERSION)
	npm publish
	git push --follow-tags
	make publish-site

changelog:
	git checkout master
	git pull origin master
	github_changelog_generator -t $(GITHUB_API_TOKEN)

push-changelog:
	git checkout master
	git pull origin master
	git add CHANGELOG.md
	git commit -m 'changelog updated.'
	git push origin master
