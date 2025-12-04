#import "@preview/thesist:1.0.2": thesis, set-figure-numbering

/* SCROLL TO THE BOTTOM TO ADD CHAPTERS */

/* INIT THESIS */
// Set language to en/pt
// Setup title page
// Pick heading styles
// Further customizations if needed
#show: thesis.with(

  lang: "en",

  cover-image: image("Images/default-alameda.jpg"),
  // cover-image: image("Images/default-taguspark.jpg"),
  // *

  title: "This is the Title of the Thesis and it is a very Big Title covering More than One Line",

  subtitle: "This is the Thesis Subtitle if Necessary", // *

  author: "The Full Name of the Author Goes Here",

  degree: "Name of the Degree Here",

  supervisor: "Prof. Full Name of Supervisor",

  co-supervisor: "Prof. Full Name of Co-supervisor",    // *

  chairperson: "Prof. Full Name of the Chairperson",

  committee-members: (
    "Prof. Full Name of First Committee Member",
    "Dr. Full Name of Second Committee Member",         // *
    "Eng. Full Name of Third Committee Member"          // *
  ),

  date: "Month 20XX",

  // *- Define as "none" (without quotation marks) if unneeded


  // Set the chapter heading style
  // Options:
  //  - "fancy": Full page - <chapter number> + <chapter title> + <chapter outline>
  //  - "simple": Multi line - Chapter <chapter number> + <chapter title>
  //  - "short": Single line - <chapter number> + <chapter title>
  chapter-style: "fancy",

  // Set the appendix heading style
  // Options:
  //  - "fancy": Full page - <Appendix letter> + <appendix title>
  //  - "simple": Multi line - Appendix <appendix letter> + <appendix title>
  //  - "short": Single line - <appendix letter> + <appendix title>
  appendix-style: "simple",


  // Miscellaneous settings
  // Note: These are grey areas in the formatting requirements, and tend to vary by degree. Most of the times they will not be needed.

    // If another university is involved, you may need to add its logo
    second-logo: none,

    // Extra initial page(s) or content. Some use cases:
    //    - Prefaces (only if required!)
    //    - Custom declarations (only if required!)
    //    - Custom document formatting, if it doesn't break the rules
    //    - Short dedications or quotes
    // Comment or set to none to ignore.
    extra-page: include("Beginning/Extra.typ"),

    // Uncomment if using a custom declaration
    // hide-declaration: true,

    // Add a spine at the end of the document if you want to print your thesis
    printable: false,


  // PIC2 settings
  // Please erase or comment out these settings if you're writing a thesis!

    // Set to true for the cover to say this is a PIC2 report
    pic-mode: false,

    // Used to edit the text right before the name of the degree. Only change this from none if the PIC mode default for some reason isn't good.
    string-before-degree: none,

    // Set to true to hide the committee, declaration, acknowledgments or abstracts if either is unneeded
    hide-committee: false,
    hide-declaration: false,
    hide-acknowledgments: false,
    hide-abstract-en: false,
    hide-abstract-pt: false,

    // Set to true if you want to always hide these outlines in a PIC.
    // If set to false, they will automatically appear when there is content, and disappear when there isn't.
    hide-outline: false,
    hide-figure-list: false,
    hide-table-list: false,
    hide-algorithm-list: false,
    hide-code-list: false,

    // Setting to true removes the automatic pagebreaks between sections. If you have to do this, remember to use linebreaks before headings if needed, and to avoid the fancy heading style.
    no-pagebreaks: false,

  // End of PIC2 settings


  // Don't edit this array. It's used for communication with the package.
  // Don't add chapters here!
  included-content: (
    include("Beginning/Acknowledgments.typ"),
    include("Beginning/Abstract-en.typ"),
    include("Beginning/Keywords-en.typ"),
    include("Beginning/Abstract-pt.typ"),
    include("Beginning/Keywords-pt.typ"),
    include("Beginning/Glossary.typ")
  )

)

// Add chapters here
#include("Chapters/0-Quick-guide.typ")
#include("Chapters/1-Introduction.typ")

// Bibliography (use either .bib or .yml; style is usually ieee)
#bibliography("refs.bib", style: "ieee")

// This code is needed if you include appendices
#set heading(numbering: "A.1")
#counter(heading).update(0)
#show: set-figure-numbering.with(new-format: "A.1")

// Add appendices here
#include("Chapters/Appendix-A.typ")
#include("Chapters/Appendix-B.typ")
