#import "@preview/glossarium:0.5.0": make-glossary, register-glossary, print-glossary

#show: make-glossary

/*
Add your glossary terms below!

  - They will always be shown alphabetically;

  - If you don't specify a plural/longplural form, #gspl() will just add an s in case you call it;

  - You can create more than one glossary of this type if you want! Just make a new array, and then register and print it as well. Remember to add a title before it.

For any doubts, check the page of the imported package:
https://github.com/typst-community/glossarium
*/
#let entry-list = (

  // Terms you add in this file need to be referenced to show up, unless you uncomment this line:
  // show-all: true,

  (
    (
      key: "potato",
      short: "potato",
      plural: "potatoes",
      description: "A tuber that you can eat."
    ),


    // You can add categories with "group:"

    // ACRONYMS GROUP
    (
      key: "ist",
      short: "IST",
      long: "Instituto Superior Técnico",
      group: "Acronyms"
    ),

    (
      key: "dm",
      short: "DM",
      long: "Diagonal Matrix",
      longplural: "diagonal matrices",
      group: "Acronyms"
    ),

    // SYMBOLS GROUP
    (
      key: "mu_0",
      short: $mu_0$,
      description: "Standard magnetic permeability.",
      group: "Symbols"
    ),
  )
)

#register-glossary(entry-list)

#print-glossary(entry-list)
