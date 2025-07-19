mkdir outputs
typst compile --font-path ./assets/fonts "resume chn.typ" "outputs/resume chn.pdf" "$@"
typst compile --font-path ./assets/fonts "resume eng.typ" "outputs/resume eng.pdf" "$@"
