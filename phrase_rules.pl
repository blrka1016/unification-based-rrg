
% Grammar Rules
% ------------------------------------------------------------------------------

% SINGLE CONSTITUENT CONSTRUCTIONS

%PumpingCx rule
% Syn and Sem values are determined in the constructional constraints.
% All valid (leaf) pumping constructions must be identified in if_rules
% Includes pumping constructions (which pass the entire SYN value to the mother) and argument structure constructions (which modulate the VAL value).
pumpingCx rule 
(Q, dtrs:[X])
===>
cat> (cx,
      mother: X),
goal> (pump(X,Q);argstcx(Q)).

% SINGLE CONSTITUENT CONSTRUCTIONS

% Semantics of mother determined entirely by constructional constraints (no concatenation)
twoConstituentsNoSemConcat rule % Combine semantics without concatenation
(C,dtrs:[Y,Z])
===>
cat> (cx, mother: Y),
cat> (cx, mother: Z),
goal> twoconstnosemconcat(C).

% Semantics of mother determined entirely by concatenating all lists within Sem:Frames

buildMEConcatSem rule
 (C,
 mother: (sem: (frames: (entities:Ent3,
			 propositions: P3,
			 propositionRels: PRel3,
			 buildMacroEvent:(eventframes:Ev3b,
					  modifiers:M3b)))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        propositions: P1,
			        propositionRels: PRel1,
				buildMacroEvent:(eventframes:Ev1b,
						 modifiers:M1b))))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        propositions: P2,
			        propositionRels: PRel2,
				buildMacroEvent:(eventframes:Ev2b,
						 modifiers:M2b))))),
goal> ( (buildMEConcatSem(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3),concat_frames(Ev1b,Ev2b,Ev3b),concat_frames(M1b,M2b,M3b)) ).


% Semantics of mother determined entirely by concatenating all lists within Sem:Frames except for buildMacroEvent:modifiers

buildMEConcatSemexclmod rule
 (C,
 mother: (sem: (frames: (entities:Ent3,
			 propositions: P3,
			 propositionRels: PRel3,
			 buildMacroEvent:(eventframes:Ev3b)))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        propositions: P1,
			        propositionRels: PRel1,
				buildMacroEvent:(eventframes:Ev1b))))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        propositions: P2,
			        propositionRels: PRel2,
				buildMacroEvent:(eventframes:Ev2b))))),
goal> ( (buildMEConcatSemexclmod(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3),concat_frames(Ev1b,Ev2b,Ev3b)) ).

% Semantics of mother determined entirely by concatenating all lists within Sem:Frames except for buildMacroEvent:eventframes
buildMEConcatSemexclef rule 
 (C,
 mother: (sem: (frames: (entities:Ent3,
			 propositions: P3,
			 propositionRels: PRel3,
			 buildMacroEvent:(modifiers:M3b)))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        propositions: P1,
			        propositionRels: PRel1,
			        buildMacroEvent:(modifiers:M1b))))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        propositions: P2,
			        propositionRels: PRel2,
			        buildMacroEvent:(modifiers:M2b))))),
goal> ( (buildMEConcatSemexclef(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3),concat_frames(M1b,M2b,M3b)) ).

% Semantics of mother determined entirely by concatenating macroevents,entities,propositions,propositionrels
twoConstituentsConcatAllExclEventFrames rule %STILL NEED TO FIX
 (C,
 mother: (sem: (frames: (entities:Ent3,
			 macroEvents:Mac3,
			 propositions: P3,
			 propositionRels: PRel3))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        macroEvents: Mac1,
			        propositions: P1,
			        propositionRels: PRel1)))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        macroEvents: Mac2,
			        propositions: P2,
			        propositionRels: PRel2)))),
goal> ( (concatentMEPropProprels(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(Mac1,Mac2,Mac3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3)) ).

% Combine two constructional constituents, concatenating the entitites lists, add dtrs MacroEvent lists to end of constructionally determined ME list.
coreCoord rule 
(C,
 mother:(sem:(frames:(entities:Ent3,
		      macroEvents:[_|[_|Mac3]],
		      macroEventRels: [_|MRels3],
		      propositions: P3,
		      propositionRels: PRel3))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        macroEvents: Mac1,
				macroEventRels: MRels1,
			        propositions: P1,
			        propositionRels: PRel1)))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        macroEvents: Mac2,
				macroEventRels: MRels2,
			        propositions: P2,
			        propositionRels: PRel2)))),
goal> ( (mecoord(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(Mac1,Mac2,Mac3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3),concat_frames(MRels1,MRels2,MRels3)) ).


% Combine two constructional constituents, concatenating the Entities list, adding dtrs propositions list and proposition rels list to the end of the constructionally determined propositions and proposition rels lists.
propCoord rule
(C,
 mother:(sem:(frames:(entities:Ent3,
		      propositions: [_|[_|P3]],
		      propositionRels: [_|PRel3]))),
 dtrs:[Y,Z])
===>
cat> (cx, mother: (Y,
		   sem:(frames:(entities: Ent1,
			        propositions: P1,
			        propositionRels: PRel1)))),
cat> (cx, mother: (Z,
		   sem:(frames:(entities: Ent2,
			        propositions: P2,
			        propositionRels: PRel2)))),
goal> ( (propCoord(C),concat_frames(Ent1,Ent2,Ent3),concat_frames(P1,P2,P3),concat_frames(PRel1,PRel2,PRel3)) ).

% Outputs the semantics of a sentence
% (used to pretty print semantic output, since the style of pretty printing shown in class cannot display feature names)
sentenceSem rule
(sem_output,
 ents: Ents,
 props: Props,
 proprels: PropRels)
===>
cat> (cx, mother: (sentence,
		   sem:(frames:(entities: Ents,
			        propositions: Props,
			        propositionRels: PropRels)))).
