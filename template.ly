\version "2.18.2"

\header {
  title = " "
  subtitle = " "
  composer = "Words and Music by Mike iLL"
  tagline = "Copyright R. and M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f }

melody = \relative c'' {
  \clef treble
  \key g \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
}

text =  \lyricmode {
}

rhythm = \drum {
	\clef percussion
}

harmonies = \chordmode {
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
    \new Voice = "melody" { \melody }
    \new Lyrics \lyricsto "melody" \text
    \new Voice = "rhythm" { \rhythm }
	>>
  >>
  \layout { }
  \midi { }
}
%Additional Verses
\markup \fill-line {
\column {
"2. "
  }
}
\markup {
    \vspace #2
	\wordwrap {

	}
}
