
% Lexical Rules
% ------------------------------------------------------------------------------

% Convert non-inflectional lexemes to lexical constructions.
invariant_lxm lex_rule  
 (invariant_lxm,
  syn: V,
  sem: W)
 **> (lCx, (mother: (word,
		     syn: V,
		     sem: W)))
 morphs
    Z becomes Z.

% NOMINAL INFLECTION
% ------------------
% Convert noun lexemes to plural noun lexical constructions, add plural morphology
plural_noun lex_rule
 (cn_lxm,
  syn: V,
  sem: W)
 **> (lCx, (mother: (word,
		     syn: (V,
			   category:(agr:
				     (per:third,
				      num:pl,
				     thirdsing: minus))),
		     sem: (W,
			  frames:(referentdescriptor:(number:pl))))))
 morphs
  (Z,e) becomes (Z,es),
  (Z,s) becomes (Z,ses),
  (Z,z) becomes (Z,zes),
  Z becomes (Z,s).

% Convert noun lexemes to singular noun lexical constructions
sg_noun lex_rule
 (cn_lxm,
  syn: V,
  sem: W)
 **> (lCx, (mother: (word,
		     syn: (V,
			   category:(agr:
				     (per:third,
				      num:sg,
				      thirdsing: plus))),
		     sem: (W,
			   frames:(referentdescriptor:(number:sg))))))
 morphs
 Z becomes Z.


% VERBAL INFLECTION
% -----------------
% Convert verbal lexemes to past tense marked verb lexical constructions, add past tense morphology
past_v lex_rule  
 (v_lxm,
  syn: (category: X),
  sem: (frames:(F,
		buildMacroEvent:(aspectprofile:Asp)),
	index:G))
 **> (lCx, (mother: (word,
		     sem: (frames:(F,
				   buildMacroEvent:(eventframes:([(aspect:Asp)]))),
			   index:G,
			   operators: (clauseops: (tense: past))),
		     syn: (category: (X,
				      verbform: fin),
			  val: []))))
  morphs
    eat becomes ate,
    run becomes ran,
    tell becomes told,
    begin becomes began,
    see becomes saw,
    fall becomes fell,
    be becomes was,
    break becomes broke,
    (Z,y) becomes (Z,ied),
    (Z,e) becomes (Z,ed),
    (Z) becomes (Z,ed).

% Convert verbal lexemes to non-3sg present tense marked verb lexical constructions
pres_vnon3sg lex_rule  
 (v_lxm,
  syn: (category: X),
  sem: (frames:(F,
		buildMacroEvent:(aspectprofile:Asp)),
	index:G))
 **> (lCx, (mother: (word,
		     sem: (frames:(F,
				   buildMacroEvent:(eventframes:([(aspect:Asp)]))),
			   index:G,
			   operators: (clauseops: (tense: pres))),
		     syn: (category: (X,
				      verbform: fin,
				      agr: (thirdsing: minus)),
			  val: []))))
 morphs
    be becomes are,
    Z becomes Z.

% Convert verbal lexemes to 3sg present tense marked verb lexical constructions, add 3sg present verbal morphology
pres_v3sg lex_rule  
 (v_lxm,
  syn: (category: X),
  sem: (frames:(F,
		buildMacroEvent:(aspectprofile:Asp)),
	index:G))
 **> (lCx, (mother: (word,
		     sem: (frames:(F,
				   buildMacroEvent:(eventframes:([(aspect:Asp)]))),
			   index:G,
			   operators: (clauseops: (tense: pres))),
		     syn: (category: (X,
				      verbform: fin,
				      agr: (per: third,
					    num: sg,
					    thirdsing: plus)),
			  val: []))))
  morphs
    be becomes is,
    (Z,y) becomes (Z,ies),
    (Z,e) becomes (Z,es),
    (Z,s) becomes (Z,ses),
    (Z) becomes (Z,s).

% Convert verbal lexemes to infinitive verb lexical constructions
infinitive_v lex_rule
 (v_lxm,
  syn: (category: verb),
  sem: (S,
	frames:(F,
		buildMacroEvent:(aspectprofile:Asp))))
 **> (lCx, (mother: (word,
		     sem: (S,
			   frames:(F,
				   buildMacroEvent:(eventframes:([(aspect:Asp)])))),
		     syn: (category: (verb,
				      verbform:inf),
			   val: []))))
 morphs
   Z becomes Z.

% Convert verbal lexemes to gerund verb lexical constructions
gerund_v lex_rule
 (v_lxm,
  syn: (category: verb),
  sem: (S,
	frames:(F,
		buildMacroEvent:(aspectprofile:Asp))))
 **> (lCx, (mother: (word,
		     sem: (S,
			   frames:(F,
				   buildMacroEvent:(eventframes:([(aspect:Asp)])))),
		     syn: (category: (verb,
				      verbform:ger),
			  val: []))))
 morphs
   be becomes being,
   (Z,ee) becomes (Z,eeing),
   (Z,Vowel,Cons) becomes (Z,Vowel,Cons,Cons,ing) when vowel(Vowel),double(Cons),
   (Z,e) becomes (Z,ing),
   Z becomes (Z,ing).

 vowel([a]).
 vowel([e]).
 vowel([i]).
 vowel([o]).
 vowel([u]).
 vowel([y]).
 double([m]).
 double([n]).
 double([b]).
 double([p]).
 double([d]).
 double([t]).
 double([g]).
 double([r]).

