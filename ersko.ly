\version "2.18.2"

\header {
  title = "Ersko Kolo "
  subtitle = " "
  composer = "Traditional Serbian Dance Song"
  tagline = "Music engraving by Lilypond. Lilypond.org"
  arranger = "arr by Mike iLL for Pensacola Intl Folk Dance"
}

\paper{ print-page-number = ##f }

melody = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 {
  c2 e4\staccato c | e\staccato c e\staccato c |
  d8 e f4\staccato f\staccato f\staccato | f\staccato f\staccato f8 e d4 |
  c2 e4\staccato c | e\staccato c e\staccato c |
  b8 c d4\staccato d\staccato d\staccato | g\staccato r g\staccato r |
  }
  \repeat volta 2 {
  c,8( d e4\staccato) e\staccato e\staccato | e2 d4 c |
  d8( e f4\staccato) f\staccato f\staccato | f\staccato f\staccato f8 e d4 |
  c8( d e4\staccato) e\staccato e\staccato | e2 d4 c |
  b8( c d4\staccato) d\staccato d\staccato | g\staccato r g\staccato r |
  }
}


rhythm = \drums {
	\clef percussion
	r2 sn4 r | r2 sn4 r |
	r2 sn4 r | r2 sn4 r |
	r2 sn4 r | r2 sn4 r |
	r2 sn4 r | r2 sn4 r |
	r4 sn4 r sn | r sn r sn |
	r4 sn4 r sn | r sn r sn |
	r4 sn4 r sn | r sn r sn |
	r4 sn4 r sn | r sn r sn |
}

harmonies = \chordmode {
	c1 | c | g | g |
	c | c | g | g |
	c | c | g | g |
	c | c | g | g |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
    \new Voice = "melody" { \melody }
    \new Voice = "rhythm" { \rhythm }
	>>
  >>
  \layout { }
  \midi { }
}
\markup {
    \vspace #2
	\wordwrap {

	"The whole piece repeats, but on each repeat, the 5 chord (G, above) becomes the 1 chord (C, above) with" 
        "the new 5 chord being the one whos root is the fifth note of the scale which begins on the new 1 chord."

	"  "

	"So the second time through substitute C and G with G and D, Third time through D and A and so on."
	}
}
