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
    mutopiaopus         = "Op. 599, No. 14"
    
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

  <c-1 e-3>4 q q q
  <e-3 g-5>2 <c e>
  <d-2 f-4>4 q q q
  <c e>1
  <c e>4 q q q \break
  <c e>2 <c e>
  d4-2 d d d
  c1 \bar ":..:"
  <d-2 f-4>4 q q q
  <c e>2 <e g> \break
  <d f>4 q q q
  <c e>1
  <c e>4 <e g> q q
  q <c e> <e g> <c e> 
  d-2 d d d
  c1 \bar ":|."
}

LHI = \relative c' {
  \voiceThree
  \clef treble
  \global
  
  c8-4 g'-1 e-2 g-1 c,8 g' e g 
  c,8 g' e g c,8 g' e g
  b,8-5 g'-1 d-3 g-1 b,8 g' d g
  c,8 g' e g c,8 g' e g
  c,8 g' e g c,8 g' e g
  c,8-5 g' e g c,8 g' e g
  b,8 g' f g b,8 g' f g
  c,8 g' e g c,8 g' e g
  b,8-5 g' d g b,8 g' d g
  c,8-4 g' e g c,8 g' e g
  b,8 g' d g b,8 g' d g
  c,8 g' e g c,8 g' e g
  c,8 g' e g c,8 g' e g
  c,8-5 g' e g c,8 g' e g
  b,8 g' f g b,8 g' f g
  c,8 g' e g c,8 g' e g
  
  
  
  
  
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
        \line { \bold \huge { "№" } \number "14". }
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