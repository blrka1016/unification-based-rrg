
% Lexicon
% ------------------------------------------------------------------------------

% Nominals

% Proper nouns
mia --->
 (pn_lxm,
  syn: (category: (agr: (num:sg,
			 thirdsing:plus)))).

john --->
 (pn_lxm,
  syn: (category: (agr: (num:sg,
			 thirdsing:plus)))).

% Pronouns
i --->
 (pro_lxm,
  syn: (category: (agr: (per:first,
			 num:sg,
			 thirdsing:minus),
		   case: nom))).

we --->
 (pro_lxm,
  syn: (category: (agr: (per:first,
			 num:pl,
			 thirdsing:minus),
		   case: nom))).

you --->
 (pro_lxm,
  syn: (category: (agr: (per:second,
			 thirdsing:minus)))).

he --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:sg,
			 thirdsing:plus),
		   case: nom))).

she --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:sg,
			 thirdsing:plus),
		   case: nom))).

they --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:pl,
			 thirdsing:minus),
		   case: nom))).

me --->
 (pro_lxm,
  syn: (category: (agr: (per:first,
			 num:sg,
			 thirdsing:minus),
		   case: acc))).

us --->
 (pro_lxm,
  syn: (category: (agr: (per:first,
			 num:pl,
			 thirdsing:minus),
		   case: acc))).

him --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:sg,
			 thirdsing:plus),
		   case: acc))).

her --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:sg,
			 thirdsing:plus),
		   case: acc))).
them --->
 (pro_lxm,
  syn: (category: (agr: (per:third,
			 num:pl,
			 thirdsing:minus),
		   case: acc))).

% Common nouns
vase --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:vase_fr)))).

dog --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:dog_fr)))).

cat --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:cat_fr)))).

cake --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:cake_fr)))).

man --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:man_fr)))).

second --->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:second_fr)))).

minute--->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:minute_fr)))).

hour--->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:hour_fr)))).

day--->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:day_fr)))).

week--->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:week_fr)))).

year--->
 (cn_lxm,
  sem: (frames: (referentdescriptor:(cat:year_fr)))).

% Determiners

a --->
 (det_lxm,
  syn: (category: (definiteness: indefinite,
		   agr: (num: sg))),
  sem: (frames: (referentdescriptor:(bounded:plus,
			    def:indefinite,
			    number:sg)))).

the --->
 (det_lxm,
  syn: (category: (definiteness: definite)),
  sem: (frames: (referentdescriptor:(def:definite)))).

these --->
 (det_lxm,
  syn: (category: (definiteness: definite,
		  agr: (num: pl))),
  sem: (frames: (referentdescriptor:(bounded:plus,
			    def:definite,
			    number:pl)))).
 

% Verbs

smile --->
 @v_lxm(smiling_fr).

run --->
 @v_lxm(running_fr).

walk --->
 @v_lxm(walking_fr).

dance --->
 @v_lxm(dancing_fr).

skip --->
 @v_lxm(skipping_fr).

amuse --->
 @v_lxm(amusing_fr).

break --->
 @v_lxm(breaking_fr).

fall --->
 @v_lxm(falling_fr).

tell --->
 @v_lxm(telling_fr).

ask --->
 @v_lxm(asking_fr).

see --->
 @v_lxm(seeing_fr).

laugh --->
 @v_lxm(laughing_fr).

rely --->
 @v_lxm(rely_fr).

depend --->
 @v_lxm(depend_fr).

lean --->
 @v_lxm(lean_fr).

like --->
 @v_lxm(liking_fr).

want --->
 @v_lxm(wanting_fr).

begin --->
 @v_lxm(beginning_fr,achievement).

finish --->
 @v_lxm(finishing_fr,achievement).

eat --->
 @v_lxm(eating_fr).

%Copula

be --->
(copula_lxm,
 sem: (frames: (buildMacroEvent:(eventframes:[be_state])))).
%Adjectives

green --->
 (adj_lxm,
  sem: (frames: (referentdescriptor:(modifrs:[green_fr]),
		 buildMacroEvent:(eventframes:[green_fr])))).

old --->
 (adj_lxm,
  sem: (frames: (referentdescriptor:(modifrs:[old_fr])))).

% Adverbs

today --->
 (adv_lxm,
  sem: (frames: (buildMacroEvent:(modifiers:[today_fr])))).

yesterday --->
 (adv_lxm,
  sem: (frames: (buildMacroEvent:(modifiers:[yesterday_fr])))).

/*

% Be

be --->
 (copula_lxm,
          syn: (category: copula),
          sem: (frames: [existing_fr])).
*/


% Prepositions
with --->
 @prep_lxm(_,with).

under--->
 @prep_lxm(location_fr,under).

on--->
 @prep_lxm(location_fr,on).

in--->
 @prep_lxm(location_fr,in).

behind--->
 @prep_lxm(location_fr,behind).

of--->
 @prep_lxm(location_fr,of).

for--->
 @prep_lxm(benefit_fr,for).

over--->
@prep_lxm(location_fr,over).

over--->
 @prep_lxm(path_fr,over).

away--->
 @part_lxm(directional_path_fr,away).

up--->
 @prep_lxm(path_fr,up).

up--->
 @part_lxm(directional_path_fr,up).

down--->
 @prep_lxm(path_fr,down).

down--->
 @part_lxm(directional_path_fr,down).

from--->
 @prep_lxm(source_path_fr,from).
 
to--->
 @prep_lxm(goal_path_fr,to).

% Clause linkage markers
to --->
(clm_lxm,
 syn: (category: clm_to),
 sem: (frames:(buildMacroEvent:(eventframes:[])))).

and --->
(clm_lxm,
 syn: (category: clm_and),
 sem: (frames:(buildMacroEvent:(eventframes:[])))).

that --->
(clm_lxm,
 syn: (category: clm_that),
 sem: (frames:(buildMacroEvent:(eventframes:[])))).
