\version "2.18.2"

\include "../Noten/dynamicparams.ly"
\include "../Noten/formatangaben.ly"
\include "../Noten/mergerests.ly"
\include "../Noten/optionaltranspose.ly"
\include "../Noten/Bezeichnungen.ly"
\include "../Noten/generaldefinitions.ly"
\include "../Noten/mydrums2.ly"
\include "../Noten/drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #}))

mBreak = { \break }


globalSonataATreDFux = {
  \taktstil
  \accidentalStyle modern-voice
  \key d\dorian
  \time 4/4
  \tempo "Allegro"
}

globalGraveSonataATreDFux = {
  \time 3/2
  \tempo "Grave"
}

globalPrestoSonataATreDFux = {
  \bar "||"
  \time 4/4
  \tempo "Presto" \mBreak
}

globalGraveIISonataATreDFux = {
  \tempo "Grave"
  \time 3/2
  \bar "||"
  \mBreak
}

globalPrestoIISonataATreDFux = {
  \tempo "Presto"
  \time 4/4
  \bar "||"

}

violinoINotenSonataATreDFux = \tempTranspose \relative a' {
  \globalSonataATreDFux
  R1*2 |
  r8 a8 a b c a f' f |
  e a, a' a g8 d16 e f8 f |
  e4 d8 c d8. c16 bes4 | \mBreak
  a8 f'4 e8 f8. f16 bes8 g16 f |
  e4 d8 e f8 f,4 e16 e |
  e8 f4 e8 f8 a a b! |
  c8 c c d e4. d8 |
  e4. f8 g f c d | \mBreak
  e8 d16 c b8. a16 a4 r4 |
  a8 d, d' d c4. c8 |
  a4 r r8 d, d e |
  f d bes' bes a8 d, d' d |
  c8 g16 a bes8 bes a8 c c d |
  e8 c4 b8 c4. b16 a | \mBreak
  b!4 a8 a' g4. a8 |
  f8 f f g a f16 e d8. e16 |
  f4. g16 f e4 d |
  cis d b!4. c8 |
  a4 g~ g8 f16 e f8 e16 d |
  e2 fis2 | \mBreak
  \globalGraveSonataATreDFux
  d'2. d4 d2 |
  d2. d4 d ees |
  f4 g ees1 |
  d2 f2. g4 |
  ees2. f4 d2~ |
  d d2. c4 |
  d1. |
  d2 bes'1 |
  a1 g2 |
  f2 d2. e4 | \mBreak
  c1 r2 |
  a f'1 |
  e1 d2~ |
  d c f, |
  bes2. c4 a bes |
  c d g,1 |
  a2 f'4 e d c |
  bes1 a2~ |
  a g2. g4 |
  \globalPrestoSonataATreDFux
  a4 e' f4 e8 d |
  e4 d8 g4 f8 bes8[ bes] |
  a8 a, c d e a, a'4~ |
  a8 g f4 e a,8 d |
  c4 d c8 f, f'4 |
  g8. a16 bes4 a4. g8 |
  f4. e8 f8. e16 d c bes a | \mBreak
  g8 a g8. f16 f4 a |
  c b!8 a b4 a8 d~ |
  d c f f e a, d g, |
  a4 f g8 c4 bes8 |
  a8 a'4 g8 c,4 f |
  e2 a,4 b! | \mBreak
  c8 e d4. c8 b!8. a16 |
  a8 b! c d e4 d8 c |
  d8 e f4 e4. d8 |
  e2 r2 |
  r4 d f e8 d |
  e4 d8 g4 f8 bes[ bes] | \mBreak
  \globalGraveIISonataATreDFux
  a2 d,2. c4 |
  bes2 g g'~ |
  g f2. g4 |
  ees2 g c~ |
  c f, bes~ |
  bes a f |
  d4 c c2. d4 |
  ees2 d g |
  f f, g4 a |
  bes2 bes2. a4 | \mBreak
  f2 d'1 |
  bes2 a r |
  r d1 |
  \globalPrestoIISonataATreDFux
  bes2 a4 r8 d |
  f4 e8 d e4 d8 g~ |
  g f bes bes a4 g8 f16 e |
  f4. e16 d e8 c4 d8 | \mBreak
  e4. f8 g4 a |
  g8. g,16 a8 b! c2 |
  R1 |
  r8 d, d e f d bes' bes |
  a d, d' d c g16 a bes8 bes |
  a8 d4 e16 d c4 bes | \mBreak
  a8 a'4 g8 f8. e16 d4 |
  e8 a, a'8. g16 f e d c b!4 |
  r8 a a b! c8 a f' f |
  e a, a' a g d16 e f8 f |
  e4 c2 d4 |
  c8 f e a e f f8. e16 | \mBreak
  f8 a, bes bes a f'4 g8 |
  a4. bes8 c8 bes16 a g8 d |
  c4 d8 e f f, bes bes |
  a8 g16 f e8. f16 f8 a bes bes |
  a4 r r8 a bes bes |
  a8 g16 f e4 d r \bar "|."
}

violinoIINotenSonataATreDFux = \tempTranspose \relative c' {
  \globalSonataATreDFux
  R1*4 |
  r2 r8 d8 d e | \mBreak
  f8 d bes' bes a8 d, d' d |
  c8 g16 a bes8 bes a8 a16 bes16 c8 d |
  g,8 a g4 f8 f f g |
  a4. g16 f e8 c' a b |
  c4. d16 c b8 a4 b16 a | \mBreak
  gis8 a4 gis8 a8 a a' a |
  f4. g16 f e4. e8 |
  a8 g f e d8. c16 bes4 |
  a4 r r2 |
  r2 r8 a a b |
  c a f' f e8 a, a' a | \mBreak
  g8 d16 e f8 f e4. e8 |
  a,4 bes a8. g16 f8. g16 |
  a4. b!8 c8 bes f g~ |
  g f16 e f4~ f8 ees16 d ees8 ees'~ |
  ees8 d16 c d8. e16 cis8 a d4 |
  d cis d2 | \mBreak
  \globalGraveSonataATreDFux
  bes2 f2. bes4 |
  a2. a4 bes2~ |
  bes bes2. a4 |
  bes2 d2. d4 |
  g,2. a4 bes2 |
  a2 g2. a4 |
  fis1. |
  R1. |
  d'2 bes'1 |
  a g2 | \mBreak
  f2 e1 |
  d1. |
  a2 f'1 |
  e d2~ |
  d d,4 e f2~ |
  f f2. e4 |
  f2. g4 a2 |
  d,2. e4 f g |
  e f d2. d'4 \bar "||"
  \globalPrestoSonataATreDFux
  cis2 r2 |
  R1 |
  r4 a c b!8 a |
  b4 a8 d4 c8 f8. f16 |
  e8 e, f g a d, d'4~ |
  d8 c d4 c d8. d16 |
  c8 f, bes bes a c f,16 a g f | \mBreak
  e8 f4 e8 f2 |
  R1 |
  r2 r4 d4 |
  f e8 d e4 d8 g~ |
  g f bes bes a f a4 |
  g8 a f e f f' e d | \mBreak
  e8 c b! a gis8 a4 gis8 |
  a8 g f8. g16 e8 a, a'4~ |
  a8 g a4 g a8 b |
  c4. b8 a8 f'4 e8 |
  d8 c bes4 a g~ |
  g8 g' f8 e16 d c4 d |
  \globalGraveIISonataATreDFux
  d1 a2 |
  d,2 bes'1 |
  a d2 |
  g, ees'1 |
  d1. |
  c1 bes4 a |
  bes2 bes2. a4 |
  bes1. |
  bes1 ees2 |
  d4 c c1 | \mBreak
  f1 a2 |
  d,2 d r |
  r a1 |
  \globalPrestoIISonataATreDFux
  r8 d, d e f d bes' bes |
  a d, d' d c g16 a bes8 bes |
  a4 g8 d'4 c8 bes8 a16 g |
  a4 r4 r a | \mBreak
  c4 b8 a b4 a8 d~ |
  d c f f e4 e,8 f |
  g a bes g a d, d' c |
  bes4. g16 g a8 f'4 g8 |
  a4 g8 f g4 f8 e16 d |
  c8 a4 g f e8 | \mBreak
  f4 c' d8. c16 b!4 |
  a4 e' a,4. gis8 |
  a8 c f, e16 d e8 c'4 b16 a |
  g8 e' d c d4 c8 b16 a |
  g4 a8 a' g8 g16 a bes8 bes |
  a8 a,16 b! c8 c bes a g4 | \mBreak
  f4 r r d' |
  f4 e8 d e4 d8 g~ |
  g f bes bes a4 d,8 e |
  f e16 d cis8. d16 d8 d, d d |
  d4 r r8 d d4~ |
  d cis8. d16 d4 r \bar "|."
}

bassiNotenSonataATreDFux = \tempTranspose \relative d {
  \globalSonataATreDFux
  \clef "bass"
  r8 d8 d e f d bes' bes |
  a8 d, d' d c g16 a bes8 bes |
  a8. g16 f8 e16 d e8 f d d'~ |
  d c bes a bes4 a8 g16 f |
  g8 c bes a bes8. a16 g8 g, | \mBreak
  d'4 g f8 bes g4 |
  a8 c g4 d' a8 bes |
  c bes c c, f4 r4 |
  r8 a, a b c a f' f |
  e8 a, a' a g8 d16 e f8 f | \mBreak
  e8 a, e' e, a4 r |
  r2 e'8 a, a' g |
  f8 e d c bes8. a16 g4 |
  d'4 g4. f16 e f8 d |
  e4 d c f |
  e8 f d4 a'2 | \mBreak
  R1 |
  r8 d,8 d e f d bes' bes |
  a d, d' d c g16 a bes8 bes |
  a4. d,8 g4. c,8 |
  f4 bes, a2~ |
  a d \bar "||" | \mBreak
  \globalGraveSonataATreDFux
  g2 bes2. g4 |
  fis1 g2 |
  d2 c1 |
  bes1 b2 |
  c1 g'2 |
  f2 ees1 |
  d1 e2 |
  fis2 g1 |
  fis2 g1 |
  d2 bes'1 | \mBreak
  a1 g2 |
  f e d |
  cis d f |
  g a bes |
  g1 d2 |
  a4 bes c1 |
  f,1 fis2 |
  g4 a bes c d2 |
  c bes1 |
  \globalPrestoSonataATreDFux
  a4 r r2 |
  R1*3 |
  r4 d f e8 d |
  e4 d8 g4 f8 bes bes |
  a4 g8 g, d' a bes4~ | \mBreak
  bes8 a16 bes c4 f,4 f'8 d |
  e a, a'4. g8 f4 |
  e4 d8 d'4 c8 bes4 |
  a8 a, d4. c8 g'4 |
  d4. e8 f2 |
  R1 | \mBreak
  c4 d e2 |
  a,2 c4 b!8 a |
  b4 a8 d4 c8 f4 |
  e8 a, a' g f d d' c |
  bes8 a g4 d8 a b!4 |
  c4. bes8 a8 a'4 g8 |
  \globalGraveIISonataATreDFux
  fis1. |
  g1 g,2 |
  d' d' b |
  c1 c,2 |
  d d' d, |
  f1 d2 |
  bes f'1 |
  g2 f ees |
  d1 c2 |
  bes f' f, | \mBreak
  f'1 fis2 |
  g fis r |
  r fis1 |
  \globalPrestoIISonataATreDFux
  g2 d4 r |
  R1*2 |
  r8 a a b! c a f'8 f | \mBreak
  e8 a, a' a g d16 e f8 f |
  e4 d a'8 a, c d |
  e8 f g e f4 fis |
  g2 r4 d |
  f e8 d e4 d8 g~ |
  g f bes bes a4 g \mBreak
  f4. e8 d4 g |
  c, cis4 d e |
  a, r r a |
  c b!8 a b4 a8 d~ |
  d c f f e4 d8 g~ |
  g f a a g f c4 | \mBreak
  r8 d d e f d bes' bes |
  a8 d, d' d c g16 a bes8 bes |
  a4 g f g |
  d8 g a a, d fis g g |
  fis4 r r8 fis g g |
  fis g a a, d4 r \bar "|."
}

orgelRHNotenSonataATreDFux = \tempTranspose \relative c' {
  \globalSonataATreDFux

}

orgelLHNotenSonataATreDFux = \tempTranspose \relative c {
  \globalSonataATreDFux
  d4 d8 e f d bes'4 |
  a8 d, d'4 c8 g bes4 |
  a4 f8 d e f d d'~ |
  d c8 bes a bes4 a8 g16 f |
  g8 c bes a bes a g4 | \mBreak
  d4 g f8 bes g4 |
  a8 c g4 d' a8 bes |
  c bes c c, f4 d4 |
  a4 a8 b! c a f'4 |
  e8 a, a'4 g8 d8 f4 | \mBreak
  e8 a, e' e, a2 |
  d2 e8 a, a' g |
  f8 e d c bes8. a16 g4 |
  d'4 g2 f8 d |
  e4 d c f |
  e8 f d4 a'4 f | \mBreak
  e8 g d2 cis4 |
  d4 d8 e f d bes'4 |
  a8 d, d'4 c8 g bes4 |
  a4. d,8 g4. c,8 |
  f4 bes, a2~ |
  a d \bar "||" | \mBreak
  \globalGraveSonataATreDFux
  g2 bes2. g4 |
  fis1 g2 |
  d2 c1 |
  bes1 b2 |
  c1 g'2 |
  f2 ees1 |
  d1 e2 |
  fis2 g1 |
  fis2 g1 |
  d2 bes'1 | \mBreak
  a1 g2 |
  f e d |
  cis d f |
  g a bes |
  g1 d2 |
  a4 bes c1 |
  f,1 fis2 |
  g4 a bes c d2 |
  c bes1 |
  \globalPrestoSonataATreDFux
  a4 r r2 |
  R1*3 |
  r4 d f e8 d |
  e4 d8 g4 f8 bes4 |
  a4 g4 d8 a bes4~ | \mBreak
  bes8 a c4 f, f'8 d |
  e a, a'4. g8 f4 |
  e d8 d'4 c8 bes4 |
  a4 d4. c8 g4 |
  d4. e8 f2 |
  c4 cis d g | \mBreak
  c,4 d e2 |
  a,2 c4 b!8 a |
  b4 a8 d4 c8 f4 |
  e8 a, a' g f d d' c |
  bes8 a g4 d8 a b!4 |
  c4. bes8 a8 a'4 g8 |
  \globalGraveIISonataATreDFux
  fis1. |
  g1 g,2 |
  d' d' b |
  c1 c,2 |
  d d' d, |
  f1 d2 |
  bes f'1 |
  g2 f ees |
  d1 c2 |
  bes f' f, | \mBreak
  f'1 fis2 |
  g fis r |
  r fis1 |
  \globalPrestoIISonataATreDFux
  g2 d4 r |
  R1*2 |
  a4. b!8 c a f'4 | \mBreak
  e8 a, a' a g d16 e f8 f |
  e4 d a'8 a, c d |
  e8 f g e f4 fis |
  g2 r4 d |
  f e8 d e4 d8 g~ |
  g f bes bes a4 g \mBreak
  f4. e8 d4 g |
  c, cis4 d e |
  a, d a' a, |
  c b!8 a b4 a8 d~ |
  d c f4 e4 d8 g~ |
  g f a4 g8 f c4 | \mBreak
  d4. e8 f d bes'4 |
  a8 d, d'4 c8 g16 a bes4 |
  a4 g f g |
  d8 g a4 d,8 fis g4 |
  fis4 r r8 fis g g |
  fis g a4 d,4 r \bar "|."
}

metronomZeileSonataATreDFux = \drummode {
}
\include "defSonataATreDFux.ly"

%***Arbeitspartitur
#(set-global-staff-size 14)
\book {
  \bookOutputName "SonataATreDFux-Arbeitspartitur"
  \score {
    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \removeWithTag #'chorpartitur
    \removeWithTag #'midiausgabe
    \scoreSonataATreDFux
  }
}

\book {
  \bookOutputName "SonataATreDFux-midi"
  \score {

    \midi {
      \tempo 4 = 120
      \context {
        \Score
        midiChannelMapping = #'instrument
      }
    }

    \removeWithTag #'transponierendepartitur
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'chorpartitur
    \removeWithTag #'partitur
    \removeWithTag #'einzelstimme

    \unfoldRepeats
    \scoreSonataATreDFux
  }
}
%Arbeitspartitur***
