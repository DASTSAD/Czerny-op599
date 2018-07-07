\version "2.19.82"


\include "english.ly"

% \paper {
%   #(set-paper-size "a4")
%  % #(set-paper-size "letter")
% }

\header {
    composer            = "Czerny, C."
    mutopiacomposer     = "CzernyC"

    title               = \markup {
      \center-column {
        \line { "Practical Method for"  }
        \line { "Beginners on the Pianoforte" }
        \italic \line {  }
    }}
    mutopiatitle        = "Practical Method for Beginners on the Pianoforte, No. 1"

    opus                = "Op. 599"
    mutopiaopus         = "Op. 599, No. 12"
    
    source              = "Library of Musical Classics, No.146, New York: G. Schirmer, 1893. Plate 11038."
    style               = "Technique"
    license             = "Public Domain"
    maintainer          = "Daniel Studzinski"
    maintainerWeb       = "https://github.com/upsaratus/Czerny-op599"
    mutopiainstrument   = "Piano"

 footer = "Mutopia-2018/07/03"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


%--------Definitions
global = {

  \key c \major
  %\numericTimeSignature 
  \time 4/4
}


RHI = \relative c'' {
  \voiceOne
  \clef treble
  \global
   
}  

RHII = \relative c'' {
  \voiceTwo
  \clef treble

   \override Fingering.direction = #UP

  c8-1 d e f g4-5 g
  g8 f e d c4-1 e-3
  d8-2 e f d g4 f
  e8-3 f g e c2-1
  c8 d e d c d e f 
  g f e d c4 e-3
  d8 e f d g-5 f e d
  d8 e-3 g-5 e c2 \bar ":|.:" 
  
  d8-2 e f e g-5 f e d
  e-3 f g e-3 c4-1 c
  d8 e f d g f e d
  e f g e c4 c
  c8 d e f g-5 g-5 g-5 g-5 
  g-5 f e d c d e c-1
  d e f d g f e d
  c e g e c2 \bar ":|."
  
}

LHI = \relative c' {
  \voiceThree
  \clef treble
  \global
  
  <c_4 e g>1
  q
  <b_5 d g>
  <c_4 e g>
  <c_5 e g>
  q
  <b f' g>
  <c e g>
  <b_5 d g>
  <c_4 e g>
  <b d g>
  <c_4 e g>
  <c_5 e g>
  q
  <b_5 f' g>2 q
  <c_4 e g>1
  
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
        \line { \bold \huge { "№" } \number "12". }
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