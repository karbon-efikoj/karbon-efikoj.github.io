#!/bin/bash

echo "Tiu skripto servas la retpaĝojn loke uzante jekyll - simile kiel tio okazas en la publika paĝo"
echo "Ĉiu konservita paĝo tiam tuj konvertiĝas kaj estas spektebla en retumilo ĉe http://0.0.0.0:4000"
echo ""
echo "Unue necesas instali pakaĵoj laŭ la enhavo en Gemfile kaj antaŭe certigu aktualigitan"
echo "sistemon:"
echo "# sudo gem update --system"
echo "# bundle install"

bundle exec jekyll serve --draft --trace
