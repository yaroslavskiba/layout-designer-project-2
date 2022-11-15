install:
	npm install

compil:
	sass src/scss/style.scss src/style.css
	
lint-html:
	npx htmlhint ./src/*.html

lint-sass:
	npx stylelint ./src/scss/style.scss --fix
	npx stylelint ./src/scss/general.scss --fix
	npx stylelint ./src/scss/variables.scss --fix
	npx stylelint ./src/scss/desk/header-desk.scss --fix
	npx stylelint ./src/scss/desk/subscription-desk.scss --fix
	npx stylelint ./src/scss/desk/page-news-desk.scss --fix
	npx stylelint ./src/scss/desk/app-desk.scss --fix
	npx stylelint ./src/scss/desk/footer-desk.scss --fix
	npx stylelint ./src/scss/mobile/header-mobile.scss --fix
	npx stylelint ./src/scss/mobile/subscription-mobile.scss --fix
	npx stylelint ./src/scss/mobile/page-news-mobile.scss --fix
	npx stylelint ./src/scss/mobile/app-mobile.scss --fix
	npx stylelint ./src/scss/mobile/footer-mobile.scss --fix
	npx stylelint ./src/scss/desk/artist-header-desk.scss --fix
	npx stylelint ./src/scss/desk/artist-popular-track-desk.scss --fix
	npx stylelint ./src/scss/desk/artist-page-discography-desk.scss --fix
	npx stylelint ./src/scss/desk/artist-page-similar-desk.scss --fix
	npx stylelint ./src/scss/mobile/artist-header-mobile.scss --fix
	npx stylelint ./src/scss/mobile/artist-popular-track-mobile.scss --fix
	npx stylelint ./src/scss/mobile/artist-page-discography-mobile.scss --fix
	npx stylelint ./src/scss/mobile/artist-page-similar-mobile.scss --fix

deploy:
	npx surge ./src/
