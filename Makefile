install:
	npm install

compil:
	sass src/styles/scss/app.scss src/styles/style.css
	
lint-html:
	npx htmlhint ./src/*.html

lint-sass:
	npx stylelint ./src/styles/scss/app.scss --fix
	npx stylelint ./src/styles/scss/general.scss --fix
	npx stylelint ./src/styles/scss/variables.scss --fix
	npx stylelint ./src/styles/scss/desk/header-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/subscription-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/page-news-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/app-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/footer-desk.scss --fix
	npx stylelint ./src/styles/scss/mobile/header-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/subscription-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/page-news-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/app-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/footer-mobile.scss --fix
	npx stylelint ./src/styles/scss/desk/artist-header-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/artist-popular-track-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/artist-page-discography-desk.scss --fix
	npx stylelint ./src/styles/scss/desk/artist-page-similar-desk.scss --fix
	npx stylelint ./src/styles/scss/mobile/artist-header-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/artist-popular-track-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/artist-page-discography-mobile.scss --fix
	npx stylelint ./src/styles/scss/mobile/artist-page-similar-mobile.scss --fix

deploy:
	npx surge ./src/
