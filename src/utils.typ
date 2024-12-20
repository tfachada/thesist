// Import subfigure package and make it work with the chapter-relative numbering
#import "@preview/subpar:0.2.0"

#let subfigure-grid(in-appendix: none, ..args) = {

  let numbering-format = "1.1"
  if in-appendix{
    numbering-format = "A.1"
  }

  subpar.grid(

    numbering: super => numbering(numbering-format, counter(heading).get().first(), super),

    numbering-sub-ref: (super, sub) => numbering(numbering-format+"a", counter(heading).get().first(), super, sub),

    // gap: 1.5em,
    gap: 0em,

    ..args

  )

}


// Add ability to show shorter captions in the indices
#let in-outline = state("in-outline")
#let flex-caption(long, short) = context if in-outline.get() { short } else { long }
