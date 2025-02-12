// From https://github.com/DeveloperPaul123/modern-cv/
#import "@preview/fontawesome:0.5.0": *
#let color-darkgray = rgb("#333333")
#let github-link(github-path, body: none) = {
  // set box(height: 11pt)

  [
    #fa-icon("github", fill: color-darkgray)
    #link(
      "https://github.com/" + github-path,
      if(body==none) {github-path} else {body},
    )
  ]
}

#let __justify_align(left_body, right_body) = {
  block[
    #left_body
    #box(width: 1fr)[
      #align(right)[
        #right_body
      ]
    ]
  ]
}

/// Justified header that takes a primary section and a secondary section. The primary section is on the left and the secondary section is on the right. This is a smaller header compared to the `justified-header`.
/// - primary (content): The primary section of the header
/// - secondary (content): The secondary section of the header
#let secondary-justified-header(primary, secondary) = {
  __justify_align[
    === #primary
  ][
    #tertiary-right-header[#secondary]
  ]
}

/// Justified header that takes a primary section and a secondary section. The primary section is on the left and the secondary section is on the right.
/// - primary (content): The primary section of the header
/// - secondary (content): The secondary section of the header
#let justified-header(primary, secondary) = {
  pad[
    #__justify_align[
      #primary
    ][
      #secondary
    ]
  ]
}

// Original https://github.com/Harkunwar/attractive-typst-resume
#let contact(text: "", link: none) = {
  (text: text, link: link)
}

#let subSection(title: "", titleEnd: none, subTitle: none, subTitleEnd: none, content: []) = {
  (title: title, titleEnd: titleEnd, subTitle: subTitle, subTitleEnd: subTitleEnd, content: content)
}

#let section(title: "", content: subSection()) = {
  (title: title, content: content)
}

#let project(
  theme: rgb("#4273B0"),
  name: "",
  email: none,
  title: none,
  contact: ((text: [], link: "")),
  skills: (
    languages: ()
  ),
  main: (
    (title: "", content: [])
  ),
  sidebar: (),
  body) = {

  let backgroundTitle(content) = {
    align(center,
      box(
        // fill: gray,
        text(theme, size: 1.25em, weight: "bold", upper(content)),
        width: 1fr,
        inset: 0.3em,
        stroke: (
          bottom: theme
        )
      )
    )
  }

  let secondaryTitle(content) = {
    text(weight: "bold", size: 1.125em, upper(content))
  }

  let italicColorTitle(content) = {
    text(weight: "bold", style: "italic", size: 1.125em, theme, content)
  }


  let formattedName = block(upper(text(2.5em, weight: "bold", theme, name)))

  let formattedTitle = block(upper(text(2.25em, gray.darken(50%), title)))

  let titleColumn = align(center)[
    #formattedName
    #formattedTitle
  ]

  let contactColumn = align(center)[#contact.map(c => {
    if c.link == none [
      #c.text\
    ] else [
      #underline(link(c.link, text(theme, c.text)))\
    ]
  }).join()]

  grid(
    columns: (2fr, 7fr),
    column-gutter: 2em,
    contactColumn,
    titleColumn,
  )

  set par(justify: true)

  let formattedLanguageSkills = [
    #text(skills.languages.join(" • "))
  ]

  let createLeftRight(left: [], right: none) = {
    if (right == none) {
      align(start, text(left))
    } else {
      // grid(
      //   columns: (1fr, 1fr),
      //   align(start, text(left)),
      //   align(end, right),
      // )
      justified-header(left, right)
    }
  }

  let parseSubSections(subSections) = {
    subSections.map(s => {
      [
        #createLeftRight(
          left: secondaryTitle(s.title),
          right: if s.titleEnd != none {
            italicColorTitle(s.titleEnd)
          }
        )
        #if s.subTitle != none or s.subTitleEnd != none [
          #text(
            top-edge: 0.2em,
            createLeftRight(
              left: italicColorTitle(s.subTitle),
              right: s.subTitleEnd
            ),
          )
        ]
        #s.content
      ]
    }).join()
  }

  let parseSection(section) = {
    section.map(m => {
      [
        #backgroundTitle(m.title)
        #parseSubSections(m.content)
      ]
    }).join()
  }

  let mainSection = parseSection(main)
  let sidebarSection = parseSection(sidebar)


  grid(
    columns: (2fr, 7fr),
    column-gutter: 1em,
    sidebarSection,
    mainSection,
  )

  // Main body.
  set par(justify: true)
  show: columns.with(3, gutter: 1.3em)

  // body
}
