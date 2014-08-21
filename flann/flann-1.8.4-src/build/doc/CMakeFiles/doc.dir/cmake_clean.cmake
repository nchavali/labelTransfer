FILE(REMOVE_RECURSE
  "CMakeFiles/doc"
  "../../doc/manual.pdf"
  "manual.pdf"
  "images/cmake-gui.png"
  "manual.tex"
  "references.bib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/doc.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
