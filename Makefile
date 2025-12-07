# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = content
BUILDDIR      = _build
GITLAB_REMOTE ?= rise

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile lock pages gitlab-deploy

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@EVITA=1 $(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

lock:
	uv export -o pylock.toml

# Live reload site documents for local development
livehtml:
	EVITA=1 sphinx-autobuild "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Prepare GitLab Pages directory structure locally (backup/testing)
pages: dirhtml
	@echo "Preparing GitLab Pages structure in public/..."
	@rm -rf public
	@mkdir -p public
	@cp -r $(BUILDDIR)/dirhtml/* public/
	@echo "GitLab Pages structure ready in public/"

# Deploy to GitLab Pages manually from build directory
gitlab-deploy: dirhtml
	@echo "Deploying to GitLab Pages..."
	@rm -rf .gitlab-pages-tmp
	@if git rev-parse --verify gl-pages >/dev/null 2>&1; then \
		git worktree add .gitlab-pages-tmp gl-pages; \
	else \
		git worktree add --orphan -b gl-pages .gitlab-pages-tmp; \
	fi
	@rm -rf .gitlab-pages-tmp/*
	@cp -r $(BUILDDIR)/dirhtml/* .gitlab-pages-tmp/
	@cd .gitlab-pages-tmp && git add -A && (git commit -m "Deploy to GitLab Pages" || true)
	@git push -f $(GITLAB_REMOTE) gl-pages
	@git worktree remove -f .gitlab-pages-tmp
	@echo "Deployed to GitLab Pages at gl-pages branch"
