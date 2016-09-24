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

  \bookpart {
    
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

  } % end bookpart for sharps


  \bookpart {

    \header {
      title = "Major Scales 1-9-1"
      subtitle = "Flats"
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
				% F 
    \markup { F }
    \score {
      {
	\key f \major { \transpose c f \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% B flat
    \markup { B\flat }
    \score {
      {
	\key bes \major { \transpose c bes \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% E flat
    \markup { E\flat }
    \score {
      {
	\key ees \major { \transpose c ees \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% A flat
    \markup { A\flat }
    \score {
      {
	\key aes \major { \transpose c aes \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% D flat
    \markup { D\flat }
    \score {
      {
	\key des \major { \transpose c des \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% G flat
    \markup { G\flat }
    \score {
      {
	\key ges \major { \transpose c ges \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
				% C flat
    \markup { C\flat }
    \score {
      {
	\key ces \major { \transpose c ces \oneNineOne } 
      }
      \layout {
	ragged-right = ##f
	indent = 0.0\cm
      }    
    }
    

  } % end bookpart for flats

} % end book