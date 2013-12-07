;
; link-pipeline.scm
; 
; Link-grammar processing pipeline. Currently, counts word pairs.
;
; Copyright (c) 2103 Linas Vepstas <linasvepstas@gmail.com>
;
; Look for new sentences, count the links in them.


; (get-new-parsed-sentences) returns the sentences
; (release-new-parsed-sents) gets rid of the attachment.
; delete-hypergraph
; cog-atom-incr

; Plan of attack:
; get parses, get links between paris of words, increment counts, store.
;
; (EvaluationLink (stv 1.0 1.0)
;   (LinkGrammarRelationshipNode "ANY")
;   (ListLink
;      (WordInstanceNode "word@uuid")
;      (WordInstanceNode "bird@uuid")
;   ))

(define (prt x) (begin (display x) #f))

; (map-parses prt (get-new-parsed-sentences))

(map-parses
	(lambda (parse) (map-word-instances prt parse))
	(get-new-parsed-sentences)
)
