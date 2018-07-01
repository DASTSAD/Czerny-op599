\version "2.19.82"


\include "english.ly"

\header {
    composer            = "Czerny, C."
    mutopiacomposer     = "CzernyC"

    title               = \markup {
      \center-column {
        \line { "Practical Method for"  }
        \line { "Beginners on the Pianoforte" }
        \italic \line {  }
      }
    }
    mutopiatitle        = "Practical Method for Beginners on the Pianoforte, No. 1"

    opus                = "Op. 599"
    mutopiaopus         = "Op. 599, No. 1"
    
    source              = "Library of Musical Classics, No.146, New York: G. Schirmer, 1893. Plate 11038."
    style               = "Technique"
    license             = "Public Domain"
    maintainer          = "Daniel Studzinski"
    maintainerWeb       = "https://github.com/upsaratus/Czerny-op599"
    mutopiainstrument   = "Piano"

 footer = "Mutopia-2018/07/01"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {

  \key c \major
  %\numericTimeSignature 
  \time 4/4
}
#(set-global-staff-size 27)

RHI = \relative c'' {
  \voiceOne
  \clef treble
  \global
   
}  

RHII = \relative c'' {
  \voiceTwo
  \clef treble

\set fingeringOrientations = #'(up)
  c1^1                |
  d2^2 e^3              |
  c1^1                |
  d2^2 e^3              |
  c^1 e^3
  g^5 f^4 
  e^3 d^2
  c1^1 \bar ":..:" \break
  
  d2^2 e^3
  f^4 d^2
  e^3 f^4
  g^5 e^3
  d^2 e^3
  f^4 d^2
  c^1 e^3
  c1^1 \bar ":|."
  
  
}

LHI = \relative c' {
  \voiceThree
  \clef treble
  \global
  
  c2-5 e-3
  g1-1
  c,2-5 e-3
  g1-1
  c,-5
  e2-3 f-1
  g-1 f-2 
  e1-3
  
  g-1
  g-1
  c,2-5 d-4
  e-3 c-5
  g'1-1
  g-1
  e2-3 g-1
  c,1-5
  
}

LHII = \relative c' {
  \voiceFour
  \clef treble
  \global
} 


Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number "1". }
        \line \large { }
        \italic \line {  }
      }
    }
    shortInstrumentName = ""
    midiInstrument = "acoustic grand"
  }
  <<
    \new Staff="RH"
    <<
      \new Voice = "RF"
      \RHI
      \new Voice= "RS"
      \RHII
    >>
    
    \new Staff="LH" 
    <<
      \new Voice = "LF"
      \LHI
      \new Voice= "LS"
      \LHII
    >>
  >>
  \layout { }
  \midi {\tempo 2 = 88 }
}
