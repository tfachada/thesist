// Short heading style
#let short-heading(it) = {
  counter(heading).display() + " - " + it.body
}

// Simple heading style
#let simple-heading(chapter-type: none, it) = {
  grid(
    rows: (2em, auto, 2em, auto, 1em),
    [],
    text(chapter-type + " " + counter(heading).display(), 21pt),
    [],
    it.body,
    []
  )
}

// Table of Contents for fancy heading style
#let minitoc(
  title: none,
  target: heading.where(outlined: true),
  depth: none,
  indent: none,
  fill: repeat([.]),
) = {
  if depth == none { depth = calc.inf }
  context {
    let loc = here()
    let pre = query(selector(heading.where(outlined: true)).before(loc))
    if pre == () { return outline(target: target, title: title, fill: fill, indent: indent) }
    let after = pre.last()
    let min_level = after.level
    let max_level = min_level + depth
    let elems = query(selector(heading.where(outlined: true)).after(loc))
    let last_elem = none
    for e in elems {
      if e.level <= min_level { break }
      last_elem = e
    }
    max_level = if max_level == calc.inf { calc.max(..elems.map(e => e.level)) } else { max_level }

    if last_elem != none {

      block(text(title, size: 21pt), above: 0pt, below: 0pt)

      set text(size: 10pt)
      block(line(length: 100%), below: 1.5em)

      outline(
        target: selector(target).after(after.location()).before(last_elem.location()),
        fill: fill,
        title: none,
        indent: indent,
        depth: max_level,
      )

      block(line(length: 100%), above: 1.5em)
    }
  }
}

// Fancy heading style
#let fancy-heading(title: none, it) = {
  {
    set align(right+horizon)
    {
      set text(size: 6cm, font: "TeX Gyre Bonum")
      h(3cm)
      counter(heading).display()
    }
    {
      set text(size: 25pt)
      linebreak()
      v(1cm)
      it.body
    }
  }
  align(bottom,
    minitoc(depth: 1, indent: auto, title: title, target: heading.where(level: 2, outlined: true))
  )
  pagebreak()
}
