\version "2.18.2"

\header {
  title = "Pinching Leaves and Flowers by the Moon"
  subtitle = "Based on Zemer Atiq"
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  d8 d ees ees fis fis g g | a1 |
  a8 a g g fis fis des des | fis1 |
  g8 d' d c c4 bes8( a) | g4 a g fes |
  bes8 bes bes bes a a a a | g1 |
  d'2 d | c8 d c bes c4 a |
  bes2. a8 g | a4 bes bes a |
  d2 d | c8 d c bes c4 a |
  bes8 bes bes bes a a a a | g1 |
}
rhythm = \drums {
	\clef percussion
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
	r4 sn r sn | r sn8 sn r4 sn |
}

text =  \lyricmode {
	Pinch -- ing leaves and flow -- ers by the | moon. |
	Har -- vest -- ing the me -- di -- cine and | food. |
	Sec -- ret lit -- tle pat -- ches | star -- light watch -- es |
	come and help me for -- rage in the | wood.

	Ma -- ry, | Ma -- ry wan -- na help me |
	fill ma -- ny | bags up quick -- ly? |
	Herbs, weed, | call it what you wan -- nai. |
	Pinch -- ing leaves and | flow -- wers by the |
	moon.
}


harmonies = \chordmode {
	d1 | d |
	c:m | d |
	g:m | g2:m d |
	c:m d | g1:m |
	bes | f |
	g:m | d:7 |
	bes | f |
	c2:m d:7 | g1:m |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \text
    \new Voice = "two" { \rhythm }
     >>
  >>
  \layout { }
  \midi { }
}
