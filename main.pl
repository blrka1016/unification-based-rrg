
% ---------------   Load ALE  ----------------

init :- 
   compile('../ale_swi.pl'),
   compile('check.pl'),
   ldg.

ldg :-
   compile_sig('signature'),
   compile_fun('macros'),
   compile_cons('cons'),
   compile_logic,
   compile_subsume,
   compile_lex_rules('lex_rules'),
   compile_lex('lexicon'),
   compile_rules('phrase_rules'),
   compile_dcs('if_rules').

% -----------------------------------------------------------------------------------------------
% Parse only constructions with mother of type sentence

recs(S) :- rec_list([S],(pCx,mother:sentence)).

% Print only the semantic output of a sentence (must be a full sentence, i.e. sem_output takes a sentence as input)

recsem(S) :- rec_list([S],(sem_output)).

