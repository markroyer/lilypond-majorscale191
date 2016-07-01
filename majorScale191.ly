\version "2.14.2"

date = #(strftime "%d-%m-%Y" (localtime (current-time)))

#(set-default-paper-size "letter")
%#(set-global-staff-size 26)

singleScale = { \repeat volta 3 { c8 d e f g a b c d c b a g f e d } | c\breve\fermata | }

oneNineOne = { 
  \relative c' { 
    \once \override Score.BreakAlignment #'break-align-orders =
    #(make-vector 3 '(instrument-name
                          left-edge
                          ambitus
                          span-bar
                          breathing-sign
                          clef
                          key-signature
                          time-signature
                          staff-bar
                          custos
                          span-bar))
    \bar "|:"
    \time 8/4 
    \singleScale \break
  }
} 

\book {

\header {
  title = "Major Scales 1-9-1"
  subtitle = "Sharps"
  tagline = \date
} 

\paper {
  after-title-space = 30\mm
  between-system-space = 30\mm
}


  % C 
  \markup { C }
  \score {
    \new Staff { 
      \oneNineOne 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }    
  }
  % G
  \markup { G }
  \score { 
    {
      \key g \major { \transpose c g \oneNineOne } 
    }    
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % D
  \markup { D }
  \score {
    {
      \key d \major { \transpose c d \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % A
  \markup { A }
  \score {
    {
      \key a \major { \transpose c a \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % E
  \markup { E }
  \score {
    {
      \key e \major { \transpose c e \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % B
  \markup { B }
  \score {
    {
      \key b \major { \transpose c b \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % F#
  \markup { F \super \sharp }
  \score {
    {
      \key fis \major { \transpose c fis \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
  % C#
  \markup { C \super \sharp }
  \score {
    {
      \key cis \major { \transpose c cis \oneNineOne } 
    }
    \layout {
      ragged-right = ##f
      indent = 0.0\cm
    }
  }
} % end book