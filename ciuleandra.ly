\version "2.18.2"

\header {
  title = "But Not No More"
  subtitle = "Ciuleandra"
  poet = "Words by Mike iLL"
  tagline = "Copyright M. Kilmer Creative Commons Attribution-NonCommercial, BMI"
}

\paper{ print-page-number = ##f }

melody = \relative c' {
  \clef treble
  \key e \minor
  \time 6/8
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  e4.~ e4 g8 | fis r e b'4 r8 |
  e,4.~ e4 g8 | fis r e b4 r8 |
  e4.~ e4 g8 | fis r e b'4 r8 |
  e,4.~ e4 g8 | fis r e b4 r8 |
  g'4.~ g4 bes8 | a r g d'4 r8 |
  g,4.~ g4 bes8 | a r g d4 r8 |
  g4.~ g4 bes8 | a r g d'4 r8 |
  g,4 r8 fis4 r8 | e4 r2 |
}

rap = \relative c''' {
  \time 6/8
  \hideNotes {
  b4 b8 b4 b8 | b4 b8 b4. |
  b4 b8 b4 b8 | b4 b8 b4. |
  b4 b8 b4 b8 | b4 b8 b4. |
  b4.~ b4 b8 | b4 b8 b4. |
	}
}

skank = \drums {
	\clef percussion
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
	r4. sn8 r4 | r4. sn8 r4 |
}

text =  \lyricmode {
	Used to be the mid -- dle class |
	made some mo -- ney in the clear. |
	Used to be I'm ve -- ry sure |
	Whao! But not no more. |
	 | | | | | | | |
}


harmonies = \chordmode {
	e1*6/8:m | e:m | e:m | e:m |
	e1*6/8:m | e:m | e:m | e:m |
	g | g | g | g |
	g | g | e4.:m b4.:7 | e1*6/8:m | 
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff <<
    \new Voice = "one" { \melody }
    \new Voice = "rap" { \rap }
    \new Lyrics \lyricsto "rap" \text
    \new Voice = "skank" { \skank }
	>>
  >>
  \layout { }
  \midi { }
}
