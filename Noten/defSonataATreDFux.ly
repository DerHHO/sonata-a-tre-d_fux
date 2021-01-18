
orgelsystemSonataATreDFux = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org." <<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vsop" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenSonataATreDFux
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSonataATreDFux
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "valt" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenSonataATreDFux
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSonataATreDFux
            }
          }
          \new FiguredBass \bezifferungSonataATreDFux
        >>

      >>
    >>
  >>

}

scoreSonataATreDFux = {
  <<
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = "Violino 1"
        shortInstrumentName = "Vl. 1"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vViolino_1" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \violinoINotenSonataATreDFux
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \violinoINotenSonataATreDFux
          }
        }

      >>


      \new Staff \with {
        instrumentName = "Violino 2"
        shortInstrumentName = "Vl. 2"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vViolino_2" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \violinoIINotenSonataATreDFux
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \violinoIINotenSonataATreDFux
          }
        }

      >>


      \new Staff \with {
        instrumentName = "Bassi"
        shortInstrumentName = "B"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vBassi" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \bassiNotenSonataATreDFux
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \bassiNotenSonataATreDFux
          }
        }

      >>
    >>\orgelsystemSonataATreDFux
  >>
}