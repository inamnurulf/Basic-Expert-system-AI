(deftemplate techstack
  (slot name)
)
(defrule htmlcssjs
    =>
  (printout t "Do you need to learn a html,css, and javascript? (yes or no)" crlf)
  (bind ?thtmlcssjs (read))
  (if (eq ?thtmlcssjs yes)
    then (assert (techstack (name htmlyes))))
  (if (eq ?thtmlcssjs no)
    then (assert (techstack (name htmlno))))
)
(defrule framework
(techstack(name htmlyes))
    =>
  (printout t "Do you need to learn a framework react or vue js? (yes or no)" crlf)
  (bind ?tframework (read))
  (if (eq ?tframework yes)
    then (assert (techstack (name frameworkyes))))
  (if (eq ?tframework no)
    then ((printout t "you're always forgotten, but backend developers are cool" crlf)))
)
(defrule database
(techstack(name frameworkyes))
    =>
  (printout t "Do you need to learn database sql or nosql? (yes or no)" crlf)
  (bind ?tdatabase (read))
  (if (eq ?tdatabase yes)
    then (assert (techstack (name databaseyes))))
  (if (eq ?tdatabase no)
    then ((printout t "mehhh, smell of frontend developer" crlf)))
)

(defrule sqlinject
(techstack(name databaseyes))
    =>
  (printout t "Do you need to learn sqlinjection or something about access token? (yes or no)" crlf)
  (bind ?tsqlinject (read))
  (if (eq ?tsqlinject yes)
    then ((printout t "uwwww, maybe u're a cyber security, keep it in the right way man" crlf)))
  (if (eq ?tsqlinject no)
    then ((printout t "You are full-stack web dev, cool man" crlf)))
)
(defrule electricity
(techstack(name htmlcssjsno))
    =>
  (printout t "do you learn electricity and sensor? (yes or no)" crlf)
  (bind ?telectricity (read))
  (if (eq ?telectricity yes)
    then ((printout t "hmmm, an IOT dev huh?" crlf)))
  (if (eq ?telectricity no)
    then (assert (techstack (name electricityno))))
) 
(defrule tAi
(techstack(name htmlcssjsno))
    =>
  (printout t "do you learn something about neural network things? (yes or no)" crlf)
  (bind ?tAi (read))
  (if (eq ?tAi yes)
    then ((printout t "ur job make me concern about my future, I hate AI developers" crlf)))
  (if (eq ?tAi no)
    then ((printout t "hmmmmm, r u even a programmer?" crlf)))
) 

  