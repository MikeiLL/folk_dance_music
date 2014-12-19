\version "2.18.2"

\header {
  title = "Carnavalito "
  subtitle = "De Bolivia"
  tagline = "Music engraving by lilypond."
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key c \major
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \repeat volta 2 { c8 c r c c c r c | c c r c c c r c | }
  \repeat volta 2 {
  c8 e r g a c r a | g r e r c2 | d8 e r f d e r d | c r e r c2 |
  }
  g'4 c\staccato g c\staccato | e4. c8 g2 |
  e4 g\staccato e g\staccato | c4. g8 e2 |
  c4 e\staccato c e\staccato | g4. e8 c2 |
  c8 e\staccato r g a g\staccato e4 | c8 c b c d e f g |
  \repeat volta 2 {
  a a\staccato r f a4. f8 | a8 f r a c4. a8 |
  g g\staccato r e g4. e8 | g e r g c4. g8 |
  f f\staccato r d f4. d8 | f d r f a2 | }
  \alternative {
	  {
	  \times 2/3 { f4 f f } \times 2/3 { f4 e d } | c8 c b c d e f g |
	  }
	  {
	  \times 2/3 { g4 g g } \times 2/3 { g4 a b } | c4 r2. |
	  }
  }
}


rhythm = \drums {
	\clef percussion
	sn8 sn r sn sn sn r sn |
	sn8 sn r sn sn sn r sn |
	sn4 r sn r | sn sn sn2 | sn4 r sn r | sn sn sn2 |
	sn4 r sn r | sn sn sn2 | sn4 r sn r | sn sn sn2 |
	sn4 r sn r | sn sn sn2 | sn4 r sn r | sn r2. |
	bd4 sn bd sn | bd sn bd sn | bd sn bd sn | bd sn bd sn |	
	bd4 sn bd sn | bd sn bd sn |
	\times 2/3 { sn4 sn sn } \times 2/3 { sn4 sn sn } | sn4 r2. |	
	\times 2/3 { sn4 sn sn } \times 2/3 { sn4 sn sn } | sn4 r2. |	
}

harmonies = \chordmode {
	c1 | c |
	c | c | g | c |
	c | c | c | c |
	c | c | c | c |
	f | f | c | c |
	g | g | g | c |
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
%Notes
\markup {
    \vspace #2
	\wordwrap {
This is a Bolivian mountain song and dance for children.
The 8th 8th rest 8th and quarter note triplet rhythms found in the "chorus" can be
pulled into one another ending up with a feel somewhere in between.
	}
}
