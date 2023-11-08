FROM pandoc/extra:3

RUN apk add --no-cache \
texlive-full \
texmf-dist-fontsextra \
texmf-dist-bibtexextra \
texmf-dist-full \
texmf-dist-formatsextra

# Extra fonts
RUN tlmgr install droid

ENTRYPOINT []
