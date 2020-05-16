all:

# For previewing the Markdown to ensure it's OK.
README.html: README.md
	hoedown --all-block --all-span --all-flags $< | smartypants > $@
