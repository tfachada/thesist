// Set numbering in the given format for figures of different kinds, as well as equations.
// Does NOT apply to figures with subfigures. Those update the format automatically.
#let set-figure-numbering(new-format: none, body) = {

  let figure-numbering = super => numbering(new-format, counter(heading).get().first(), super)

  show figure.where(kind: image): set figure(numbering: figure-numbering)
  show figure.where(kind: table): set figure(numbering: figure-numbering)
  show figure.where(kind: raw): set figure(numbering: figure-numbering)
  show figure.where(kind: "algorithm"): set figure(numbering: figure-numbering)
  set math.equation(numbering: figure-numbering)

  body
}
