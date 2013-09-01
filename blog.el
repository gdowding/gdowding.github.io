(setq org-publish-project-alist
      '(
	("org-gdowding"
	 :base-directory "~/gdowding.github.io/org/"
	 :base-extension "org"

	 :publishing-directory "~/gdowding.github.io/jekyll/"
	 :recursive t
	 :publishing-function org-publish-org-to-html
	 :headline-levels 4
	 :html-extension "html"
	 :body-only t ;; Only export section between <body> </body>
	 )

	("org-static-gdowding"
	 :base-directory "~/gdowding.github.io/org"
	 :base-extension "css\\|js\\|png\\|jpg|gif\\|pdf\\|mp3\\|ogg\\|swf\\|php"
	 :publishing-directory "~/gdowding.github.io/"
	 :recursive t
	 )

	("gdowding" :components ("org-gdowding" "org-static-gdowding"))
))
