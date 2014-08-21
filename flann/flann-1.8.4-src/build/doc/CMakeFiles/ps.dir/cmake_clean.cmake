FILE(REMOVE_RECURSE
  "CMakeFiles/ps"
  "manual.ps"
  "manual.dvi"
  "images/cmake-gui.eps"
  "manual.tex"
  "references.bib"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ps.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
