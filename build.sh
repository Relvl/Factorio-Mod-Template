jar -cMf "${PWD##*/}".zip $(find . -not -path "*/.idea/*" -not -path "*/.git/*" -not -path "*/.*" -not -path "*/*.sh" -not -path "*/*.iml" -not -path "*/*.MD" -not -path "*/*.zip" -not -type d)
