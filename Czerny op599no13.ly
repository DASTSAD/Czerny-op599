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
    mutopiaopus         = "Op. 599, No. 13"
    
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

  c8-1 e-3 c e g2-5
  g8 e g e c2
  d8-2 g-5 f g e-3 g d-2 g
  e-3 f g e c-1 d c d
  e-3 c-1 e c g'4-5 g \break
  e8-3 g-5 e g c,4-1 c
  d8-2 g-5 g-5 f-4 f-4 e-3 e-3 d-2
  c-1 e-3 c e c2 \bar ":..:"
  d8-2 g-5 g g g f e d
  e-3 g-5 c,-1 c-2 c-1 d e c \break
  d-2 g-5 g-4 g-3 g-5 f e d
  e g e g c,2
  c8-1 d c d e-3 f e f
  g-5 g-4 g-3 g-2 e-1 g-4 e c
  g'-5 g-4 g-3 g-2 f-1 g-4 f-3 d-1
  c-2 e-4 c e c2-1 \bar ":|."

  
}

LHI = \relative c'' {
  \voiceThree
  \clef treble
  \global
  
  b4 \rest  <e,-2 g-1> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <d,-3 g-1> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <f g> q q 
  b4 \rest  <e, g> q q 
  b'4 \rest  <d, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <d, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <e, g> q q 
  b'4 \rest  <f g> q q   
  b4 \rest  <e, g> q q 
 
}

LHII = \relative c' {
  \voiceFour
  \clef treble
  \global
  
  c1 c b c c c b c b c b c c c b c 
  
} 


Dynamics = {
}


\score
{
  \new PianoStaff \with {
    instrumentName = \markup {
      \center-column {
        \line { \bold \huge { "№" } \number "13". }
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