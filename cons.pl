% Type constraints
% ------------------------------------------------------------------------------

%%%% SEMANTIC FRAME CONSTRAINTS

source_path_fr cons (landmark: X,
		     source: X,
		     boundedc: minus).

goal_path_fr cons (landmark: X,
		   goal: X,
		   boundedc: plus).

duration_fr cons (mod_event: X,
		  trajector: X,
		  landmark: Y,
		  time_length: Y).

be_state cons (state_holder: I,
	       protag: I,
	       aspect: state).

be_entity cons (state: ent_fr).
be_property cons (state: property_fr).
be_location cons (state: location_fr).

directional_path_fr cons (boundedc: minus).
motion_along_a_path_fr cons (boundedb: B,
			     path:(boundedc: B),
			     aspect:(static: minus,
				     dynam: plus,
				     telic: B,
				     punctual: minus)).

motion_along_a_path_fr_bounded cons (boundedb: plus,
				     aspect: active_accomplishment).

motion_along_a_path_fr_unbounded cons (boundedb: minus,
				       aspect: activity).

self_motion_fr cons (aspect:activity).
phase_onset_fr cons (aspect:achievement).
instant_change_state cons (aspect:achievement).

% ASPECTUAL TYPES FEATURE CONSTRAINTS

state cons (static: plus,
	    dynam: minus,
	    telic: minus,
	    punctual: minus).

activity cons (static: minus,
	       dynam: plus,
	       telic: minus,
	       punctual: minus).

achievement cons (static: minus,
		  dynam: minus,
		  telic: plus,
		  punctual: plus).

semelfactive cons (static: minus,
		   telic: minus,
		   punctual: plus).

accomplishment cons (static: minus,
		     dynam: minus,
		     telic: plus,
		     punctual: minus).

active_accomplishment cons (static: minus,
			    dynam: plus,
			    telic: plus,
			    punctual: minus).


% LEXEME CONSTRAINTS

lexeme cons (sem: (frames: (propositions: [],
			    propositionRels: []))).


function_lxm cons (sem: (frames:(entities: []))).

%nom_lxm cons (sem: (frames: (buildMacroEvent:(eventframes: [],
%					      modifiers: [])))).

%n_lxm cons (sem: (frames: (buildMacroEvent:(eventframes: [],
%					    modifiers: []),
%			   referentdescriptor:(modifrs:[])))).

n_lxm cons (sem: (frames: (entities:[],
			   referentdescriptor:(modifrs:[])))).

v_lxm cons (syn: (category: (verbal),
		  val: e_list),
	    sem: (index: Y,
		  frames: (entities: [],
			   buildMacroEvent:(eventframes: [(ev_fr,sit: Y)],
					    modifiers: [],
					    me_ix:Y)))).

lex_v_lxm cons (syn: (category: (verb))).

pn_lxm cons (syn: (category: (noun,
			      definiteness: definite,
			      agr:(per:third)),
		   val: e_list),
	     sem: (index: Y,
		   frames: (entities: [(bounded: plus,
					cat: (naming_fr,
					      entity: Y),
					def: definite,
					ix: Y)],
			    buildMacroEvent: (eventframes:[],
					      modifiers: [])))).

pro_lxm cons (syn: (category: (noun,
			      definiteness: definite),
		   val: e_list),
	     sem: (index: Y,
		   frames: (entities: [(bounded: plus,
					cat: (given_ent,
					      entity: Y),
					def: definite,
					ix: Y)],
			    buildMacroEvent: (eventframes:[],
					      modifiers: [])))).



%referentdescriptor: (cat: (given_ent,entity: Y),
%						 ix: Y,
%						 def: definite)))).

cn_lxm cons (syn: (category: (noun,
			      count: count,
			      definiteness: unmarked),
		   val: e_list),
	     sem: (index: Y,
		   frames: (referentdescriptor: (cat: (ent_category,entity: Y),
						 ix: Y)))).

det_lxm cons (syn: (category: det,
		    val: e_list)).

p_lxm cons (syn: (category:prep),
	    sem: (frames: (entities: [],
			   buildMacroEvent:(eventframes: [(traj_lm)],
					    modifiers: [])))).

prep_lxm cons (syn: (val: [@np(acc,I,_)]),
	       sem: (frames: (buildMacroEvent:(eventframes: [(traj_lm,
							      landmark: I)])))).

particle_lxm cons (syn: (val: [],
			category:(pobj:nopobj))).

adj_lxm cons (syn: (category:adj,
		    val: []),
	      sem: (frames: (referentdescriptor:(modifrs:[property_fr]),
			     entities: []))).
		   
adv_lxm cons (syn: (category:adv,
		    val: []),
	      sem: (frames: (buildMacroEvent:(modifiers:[_],
					      eventframes:[]),
			     entities: []))).
	      
		    

np cons (syn:(category:(noun,
			definiteness:def_marked),
	      val:[]),
	 sem:(frames:(propositions: [],
		      propositionRels: [],
		      entities: [(def: def_marked)|_],
		      buildMacroEvent:(eventframes:[],
				       modifiers: [])))).

pp cons (syn:(category:(prep),
	      val:[])).

clause cons (syn:(category:(verb))).

%core cons (sem:(frames:(buildMacroEvent:(eventframes:[_|_])))).
%				        me_ix:I)))).

ncore cons (syn:(category:(noun))).
vcore cons (syn:(category:(verb))).

subj_clause cons (syn:(val: [])).

subjless_clause cons (syn:(val:[_])).

% CONSTRUCTIONS


% ARGUMENT STRUCTURE CONSTRUCTIONS
% Takes a verb lexeme and adds argument structure

argstCx cons (mother: (core,
		       syn:(category:(C,
				      psa:Psa),
			    val:[(@np(nom,Psa,A))|_],
			    clmm:clm_none),
		       sem: (index: I,
			     operators: O,
			     frames: (%macroEvents: [],
				     entities: [],
				     propositions: [],
				     propositionRels: [],
				     %macroEventRels: [],
				     buildMacroEvent:(modifiers: [],
						      aspectprofile:Asp,
						      eventframes:[(aspect:Asp,
								    sit: I)|_],
						      me_ix: I)))),
	      dtrs: [(nucleus,
		      syn:(category:(C,verb,
				     agr:(thirdsing:A))),
		      sem: (operators: O))]).


% Protagonist phase argst:
%e.g. (1) Mia began. <- event is underspecified (must be contextually derived).
%Also used to license phase core cosubordination construction
protag_phase_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:F))),
				 syn:(val:[@np(nom,I,_)])),
			 dtrs: [sem:(frames:(buildMacroEvent:(eventframes:(F,[(phase_fr,
									       phase_of_event:(protag: I))]))))]).

% Intransitive unergative argst:
%e.g. (2) Mia ran.
intr_unerg_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:(F,[(protag:  I)])))),
			        syn:(val:[@np(nom,I,_)])),
		       dtrs: [(sem:(frames:(buildMacroEvent:(eventframes:(F,[intern_caused_act_fr])))))]).

% Intransitive unaccusative argst:
%e.g. (3) The vase broke.
intr_unacc_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(F,(affected:  I,
									       protag: I))]))),
			        syn:(val:[@np(nom,I,_)])),
		       dtrs: [sem:(frames:(buildMacroEvent:(eventframes:[(F,change_state)])))]).

% Abstract type: transitive argst. Only leaves of this type are realized.
trans_argst cons (mother:(syn:(val:[@np(nom,_,_),@np(acc,_,_)]))).

% Protagonist phase with object argst:
%e.g. (4) Mia began the cat. <- event is underspecified (must be contextually derived, must involve creation or consumption of something referenced by object).
protag_phase_obj_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:F))),
				      syn:(val:[@np(_,I,_),@np(_,J,_)])),
			     dtrs: [(sem:(frames:(buildMacroEvent:(eventframes:(F,[(phase_fr,
										    phase_of_event:(create_consume_fr,
												    protag: I,
												    boundingObj: J))])))))]).

% Transative causative version of state change verbs.
%e.g. (5) Mia broke the vase.
causative_trans_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(cause_fr,
							   causer:  I,
							   causedSituation: (A,affected: J),
							   protag: I,
							   causingSituation: (protag: I))]))),
				    syn:(val:[@np(_,I,_),@np(_,J,_)])),
			    dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,change_state)]))))]).

% Stimulus experiencer transitive argst.
%e.g. (6) Mia amused the cat.
stim_exp_trans_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
							   stimulus: I,
							   experiencer: J)]))),
				   syn:(val:[@np(_,I,_),@np(_,J,_)])),
			   dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,stim_exp_fr)]))))]).

% Experiencer stimulus transitive argst.
%e.g. (7) Mia saw the cat.
exp_stim_trans_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
							   stimulus: J,
							   experiencer: I)]))),
				   syn:(val:[@np(_,I,_),@np(_,J,_)])),
			   dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,exp_stim_fr)]))))]).

% Communication transitive argst.
%e.g. (8) Mia told the cat. <- message/task is underspecified, must be inferred from context.
%Also used to license communication core coordination
communication_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
									       protag: I,
									       comm_recip: J)]))),
				   syn:(val:[@np(_,I,_),@np(_,J,_)])),
			  dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,communication_fr)]))))]).


%Abstract type: Bounded consumption transitive argst. Only leaves of this type are realized.
consume_create_trans_bounded_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
											      protag: I,
											      boundingObj: J)],
									        aspectprofile:(telic:plus)))),
						  syn:(val:[@np(_,I,_),(np,
									sem: (index: J,
									      frames:(referentdescriptor:(bounded:plus))))])),
					 dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,create_consume_fr)]))))]).
%Bounded consumption trans argst.
%e.g. (9) Mia ate a cake.
consume_trans_bounded_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(boundingObj: J,
										       consumed: J)]))))).

%Bounded creation trans argst.
%e.g. (10) Mia baked a cake.
create_trans_bounded_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(boundingObj: J,
								 created: J)]))))).

%Abstract type: Unbounded consumption transitive argst. Only leaves of this type are realized.
consume_create_trans_unbounded_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
												protag: I)],
										  aspectprofile:(telic:minus)))),
						    syn:(val:[@np(_,I,_),(np,
									  sem: (frames:(referentdescriptor:(bounded:minus))))])),
					   dtrs: [(sem: (frames:(buildMacroEvent:(eventframes:[(A,create_consume_fr)]))))]).

%Unbounded consumption trans argst.
%e.g. (11) Mia ate cake.
consume_trans_unbounded_arst cons (mother:(sem:(frames:(buildMacroEvent:(eventframes:[(consumed:J)]))),
					   syn:(val:[_,@np(_,J,_)]))).
%Unbounded creation trans argst.
%e.g. (12) Mia baked cookies.
create_trans_unbounded_argst cons (mother:(sem:(frames:(buildMacroEvent:(eventframes:[(created:J)]))),
					  syn:(val:[_,@np(_,J,_)]))).

%Force application argst: PPon force recipient
%e.g. (13) Mia relied on the cat.
pp_on_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(A,
								       protag: I,
								       force_recip: J)]))),
			   syn:(val:[@np(_,I,_),@pp(on,J)])),
		  dtrs: [(sem: (frames: (buildMacroEvent:(eventframes:[(A, apply_force_fr)]))))]).


%Motion path argst. Compatible with bounded (goal specified) or unbounded (goal not specified) path types.
%e.g. (14) Mia ran from the cat. (unbounded)
%     (15) Mia ran to the park. (bounded)

motion_path_argst cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(motion_along_a_path_fr,
									     sit: S,
									     manner: M,
									     path: P,
									     protag: Protag)]))),
				 syn:(val:[@np(_,Protag,_),(pp,
							    sem:(frames:(buildMacroEvent:(eventframes:[(P,path_fr,
													trajector: Protag)]))))])),
			dtrs:[(syn:(category:verb),
			       sem:(frames:(buildMacroEvent:(eventframes:[(M,self_motion_fr,
									   sit: S,
									   protag: Protag)]))))]).
%Motion path argst - path already in complex predicate
%e.g. (16) Mia ran away. (unbounded)
motion_path_argst2 cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[E]))),
				  syn:(val:[@np(_,Protag,_)])),
			 dtrs:[(syn:(category:verb),
				sem:(frames:(buildMacroEvent:(eventframes:[(E,motion_along_a_path_fr,
									    protag: Protag)]),
					    entities:[])))]).


% PUMPING CONSTRUCTIONS
% Takes a layer in the Layered Structure of the Clause and creates the higher layer
% ArgstCx --> Nuc; Nuc --> Core; Core --> Clause; Clause --> Sentence

pumpCx cons (mother:(layers,syn: X),
	     dtrs: [(layers,syn: (X,
				  clmm: clm_none))]).

predToNuc cons (mother:(nucleus,
		     sem: X),
	     dtrs: [(word,
		     sem: (X,
			   frames:(buildMacroEvent:(eventframes:ne_list))))]).

nucToCore cons (mother:(vcore,
			sem: X),
		dtrs: [(nucleus,
		        sem: (X,
			      frames:(buildMacroEvent:(eventframes:[ev_fr|_]))))]).

coreToClause cons (mother:(clause,
			   sem:(frames:(entities:Ent,
					macroEvents:[Mev],
					macroEventRels: [],
				        propositions: P,
				        propositionRels: PRel),
				operators: (clauseops: ClauseO),
				index: I)),
		   dtrs: [(core,
			   sem:(frames:(entities:Ent,
					buildMacroEvent:Mev,
				        propositions: P,
				        propositionRels: PRel),
				index: I,
				operators: (clauseops: ClauseO)))]).

coreToSubjClause cons (mother:(subj_clause)).

coreToSubjlessClause cons (mother:(subjless_clause)).



clauseToS cons (mother:(sentence,
			sem: (frames:(buildNone,
				      entities:Ents,
				      propositions:[(proposition,
						     macroEvs: Mevs,
						     pOps: ClauseO,
						     macroEvRels: Mevrels,
						     prop_ix: I)|P],
				     propositionRels: PRel),
			     index: I)),
		dtrs: [(subj_clause,
			syn:(category:(verbform:fin)),
		        sem:(frames:(entities:Ents,
				     macroEvents:Mevs,
				     macroEventRels: Mevrels,
				     propositions: P,
				     propositionRels: PRel),
			     operators: (clauseops: ClauseO),
			     index: I))]).

nToNNuc cons (mother:(nucleus,
		      sem: X),
	      dtrs: [(word,
		      syn:(category:noun),
		      sem: X)]).

nnucToNCore cons (mother:(ncore,
			  sem: X),
		  dtrs: [(nucleus,
			  syn:(category:noun),
			  sem: X)]).

pnToNP cons (mother:(np,
		     sem: (frames: X,
			   index: I)),
	     dtrs:[(ncore,
		    sem: (frames: X,
			  index: I))]).


%plNCoreToGenericNP cons (mother:(np,
%				 sem:(frames: (entities:[(referentdescriptor,
%							  bounded: Bounded,
%							  cat: Cat,
%							  ix: Ix,
%							  modifrs: Mods,
%							  number: pl,
%							  def:generic)|Ents],
%					     propositions: P,
%					     propositionRels: PRel),
%				    index: I)),
%			 dtrs:[(core,
%			      syn:(category:noun),
%			      sem:(frames: (referentdescriptor: (referentdescriptor,
%								 bounded: Bounded,
%								 cat: Cat,
%								 ix: Ix,
%								 modifrs: Mods,
%								 number: pl,
%								 def:unmarked),
%					    propositions: P,
%					    propositionRels: PRel,
%					    entities:Ents),
%				   index: I))]).

ppToNuc cons (mother:(nucleus,
		      sem: X),
	      dtrs: [(pp,
		      sem: (X,
			    frames:(buildMacroEvent:(eventframes:ne_list))))]).


% PP Verbal modifier - Pumping construction (moves event frame to mods frame)

ppToVerbalMod cons (mother:(pp,
			  syn:Syn,
			  sem:(index: I,
			       operators: O,
			       frames:(entities:Ent,
				       propositions: P,
				       propositionRels: PRel,
				       buildMacroEvent:(eventframes:Evs,
						       modifiers:[Mod])))),
		  dtrs:[(pp,
			  syn:Syn,
			  sem:(index: I,
			       operators: O,
			       frames:(entities:Ent,
				       propositions: P,
				       propositionRels: PRel,
				       buildMacroEvent:(eventframes:[Mod|Evs],
						       modifiers:[]))))]).


% CORE Argument combination

%Combines the first item in Valence list with the Core (Item + Core). Moves the Referent descriptor for that item to the Entities list for the Core.

subjPred cons (mother:(core,
		       syn:(category:Y,
			    val:[],
			    clmm:clm_none),
		       sem:(index:I,
			    operators:O,
			    frames:(buildMacroEvent:Mev))),
	       dtrs:[A,(core,
			syn:(category: Y,
			    val: [A],
			    clmm:clm_none),
			sem:(index:I,
			     operators:O,
			     frames:(buildMacroEvent:Mev)))]).

%Combines any but the first item in Valence list with the Core (Core + Item). Moves the Referent descriptor for that item to the Entities list for the Core.

predArg cons (mother:(core,
		      syn:(category:Y,
			   val:[Subj|RestArgs],
			   clmm:clm_none),
		      sem:(index:I,
			   operators:O,
			   frames:(buildMacroEvent:Mev))),
	      dtrs:[(core,
		     syn:(category: Y,
			  val: [Subj|[A|RestArgs]],
			  clmm:clm_none),
		     sem:(index:I,
			  operators:O,
			  frames:(buildMacroEvent:Mev))),A]).


% BUILD NOMINAL CORE

% Adds a determiner to the nominal core, unifies the Referent Descriptor of the determiner and that of the nominal core.

articleNCore cons (mother:(np,
			   syn:(category:(case:Case,
					  count:Count,
					  definiteness:D,
					  agr: Agr)),
			   sem:(frames:(entities:[Rd|Ents]),
				        %referentdescriptor:Rd),
				index:I)),
		   dtrs:[(word,
			  syn:(category:(det,
					 definiteness:D,
					 agr: Agr)),
			  sem:(frames:(referentdescriptor:Rd))),(core,
							    syn:(category:(noun,
									   case:Case,
									   count:Count,
									   definiteness:unmarked,
									   agr: Agr),
								 val:[]),
							    sem:(frames:(referentdescriptor:(Rd,
											     ix: I,
											     bounded: plus),
									 entities: Ents)))]).


% Adds an adjective to the nominal nucleus, unifies the Referent Descriptor of the adjective and that of the nominal nucleus.

adjNNuc cons (mother:(nucleus,
		       syn:Syn,
		       sem:(frames:(referentdescriptor:(modifrs: [Modfr|Mods],
						        bounded: B,
						        cat: Cat,
						        def: Def,
						        ix: I,
						        number: Num),
				    entities:Ents,
				    macroEvents: MEvs,
				    macroEventRels: MRels,
				    propositions: P,
				    propositionRels: Prels,
				    buildMacroEvent:(eventframes:Evs,
						     modifiers: Emods)),
			    index: I,
			    operators: Ops)),
	       dtrs:[(syn:(category:adj),
		      sem:(frames:(referentdescriptor:(modifrs: [(Modfr,
								  trajector: I)])))),(nucleus,
										      syn:(Syn,
											   category:noun),
										      sem: (frames:(referentdescriptor:(modifrs: Mods,
														        bounded: B,
															cat: Cat,
															def: Def,
															ix: I,
															number: Num),
												    entities:Ents,
												    macroEvents: MEvs,
												    macroEventRels: MRels,
												    propositions: P,
												    propositionRels: Prels,
												    buildMacroEvent:(eventframes:Evs,
														     modifiers:Emods)),
											    index: I,
											    operators: Ops))]).
			    
% Add PP modifier (core periphery - excludes relational nouns)
% e.g. "the house on the corner"
%ppNPMod cons (mother:(core,
%		      syn:Syn,
%		      sem:(frames:(referentdescriptor:(modifrs: [Modfr|Mods],
%						       bounded: B,
%						       cat: Cat,
%						       def: Def,
%						       ix: I,
%						       number: Num)),
%			    index: I,
%			    operators: Ops)),
%	       dtrs:[(core,
%		      syn:(Syn,
%			   category:noun),
%		      sem: (frames:(referentdescriptor:(modifrs: Mods,
%							bounded: B,
%							cat: Cat,
%							def: Def,
%							ix: I,
%							number: Num)),
%			    index: I,
%			    operators: Ops)), (pp,
%					       sem:(frames:(buildMacroEvent:(eventframes:[(Modfr,traj_lm,
%											   trajector:I)|_]))))]).


%PREPOSITION PHRASE
% Combine preposition with NP
prepN cons (mother:(pp,
		    syn:(val:[],
			category:(pform:Pform)),
		    sem:(frames:(entities:Ent,
				 propositions: P,
				 propositionRels: Prels,
				 buildMacroEvent:(eventframes:[Ev|Evs],
						  modifiers:Emods)))),
	    dtrs:[(word,
		   syn:(val:[Np],
			category:(pform:Pform)),
		   sem:(frames:(buildMacroEvent:(eventframes:[Ev])))),(Np,np,
								       sem:(frames:(entities:Ent,
										    propositions: P,
										    propositionRels: Prels,
										    buildMacroEvent:(eventframes:Evs,
												     modifiers:Emods))))]).

%% LSC MODIFIER CONSTRUCTIONS  

% Verbal core modification

%Abstract construction (only leaf subtypes are realized). Mother Core becomes +periphery, so it is no longer able to participate in Core Cosubordination constructions.
coreMod cons (mother:(core,
		      periphery: plus,
		      sem:(index: I,
			   operators:O,
			   frames:(buildMacroEvent:(aspectprofile:Asp))),
		      syn: X),
	      dtrs:[(core,
		     sem:(index: I,
			  operators:O,
			  frames:(buildMacroEvent:(aspectprofile:Asp))),
		     syn: (X,
			   category: verb,
			   val: [_])),_]).


%Takes a time modifier (e.g. yesterday) and combines it with the core.
coreModTimeAdv cons (dtrs:[(sem:(index: I)),(word,
					     sem:(frames:(buildMacroEvent:(modifiers:[(time_mod_fr,
										       mod_event: I)]))))]).

%Takes a locational modifier (e.g. at the park) and combines it with the core.
coreModPPV cons (dtrs:[(sem:(index: I)),(pp,
					 sem:(frames:(buildMacroEvent:(modifiers:[(location_fr,
										   trajector: I)]))))]).

% Aspectual core modification

%Takes a durational modifier (e.g. for a minute) and combines it with the core. Restricted to cores which are minus telic, minus punctual.
% e.g. #Mia ate a cookie for a minute.
%      Mia ate cookies for a minute.
coreModDurationPP cons (mother:(sem:(frames:(buildMacroEvent:(modifiers:[(duration_fr,
									  trajector: I,
									  landmark: J,
									  mod_event: I,
									  time_length: J)|Mods])))),
			dtrs:[(sem:(index: I,
				    frames:(buildMacroEvent:(modifiers:Mods,
							     aspectprofile:(punctual:minus,
									    telic:minus))))),(pp,
										 syn:(category:(pform:for)),
										 sem:(frames:(buildMacroEvent:(modifiers:[(traj_lm,
															   trajector: I,
															   landmark: J)]))))]).

%Takes a time to completion modfier (e.g. in a minute) and combines it with the core. Restricted to cores which are plus telic, minus punctual.
% e.g. Mia ate a cookie in a minute.
%      #Mia ate cookies in a minute.
coreModCompletionTimePP cons (mother:(sem:(frames:(buildMacroEvent:(modifiers:[(completion_time_fr,
									        trajector: I,
										landmark: J,
									        mod_event: I,
									        time_length: J)|Mods])))),
			      dtrs:[(sem:(index: I,
					  frames:(buildMacroEvent:(modifiers:Mods,
								   aspectprofile:(telic:plus,
										 punctual:minus))))),(pp,
												    syn:(category:(pform:in)),
												    sem:(frames:(buildMacroEvent:(modifiers:[(traj_lm,
																	      trajector: I,
																	      landmark: J)]))))]).

%% CLM CONSTRUCTION
%Adds the linkage marker "to" to a core.
%Core must have at least one item left in its valence list, must have infinitive verb form,
%and must not already have a linkage marker (clm), or any peripheral modification.
to_core cons (mother:(core,
		      sem: S,
		      syn: (category: Cat,
			    val: Val,
			    clmm:clm_to),
		      periphery: minus),
	      dtrs:[(word,
		     syn:(category:clm_to)),(core,
					     syn: (category: (Cat, verb,
							      verbform:inf),
						   val: (Val,ne_list),
						   clmm:clm_none),
					     sem: S,
					     periphery: minus)]).

%Adds the linkage marker "and" to a clause.
and_clause cons (mother:(clause,
			 sem: S,
			 periphery: Per,
			 syn: (category: Cat,
			       val: Val,
			       clmm:clm_and)),
	      dtrs:[(word,
		     syn:(category:clm_and)),(clause,
					      syn: (category: Cat,
						    val: Val,
						    clmm:clm_none),
					      periphery: Per,
					      sem: S)]).

%Adds the linkage marker "and" to a core.
and_core cons (mother:(core,
			 sem: S,
			 periphery: Per,
			 syn: (category: Cat,
			       val: Val,
			       clmm:clm_and)),
	      dtrs:[(word,
		     syn:(category:clm_and)),(core,
					      syn: (category: Cat,
						    val: (Val,
							  [_]),
						    clmm:clm_none),
					      periphery: Per,
					      sem: S)]).


%Adds the linkage marker "that" to a clause.
that_clause cons (mother:(clause,
			 sem: S,
			 periphery: Per,
			 syn: (category: Cat,
			       val: Val,
			       clmm:clm_that)),
	      dtrs:[(word,
		     syn:(category:clm_that)),(subj_clause,
					      syn: (category: Cat,
						    val: Val,
						    clmm:clm_none),
					      periphery: Per,
					      sem: S)]).



%% Core cosubordination
% Abstract construction template. Combines two cores without a periphery to create a new core.
coreCosub cons (mother:(core,
			syn:(category:Cat,
			     clmm:clm_none),
		        sem:(index:I,
			     operators: O,
			     frames:(buildMacroEvent:(aspectprofile:Asp)))),
		 dtrs:[(core,
			periphery: minus,
		        syn:(category: Cat,
			     clmm:clm_none),
		        sem:(index:I,
			     operators: O,
			     frames:(buildMacroEvent:(aspectprofile:Asp),
				     entities:[]))),(core,
						     periphery:minus)]).

%Abstract construction template. Subtype of coreCosub. Requires second core to have the clause linkage marker "to"
coreCosubTo cons (dtrs:[_,(syn:(clmm:clm_to))]).

%Abstract construction template. Subtype of coreCosub. Requires second core be in gerund form.
coreCosubGerund cons (dtrs:[_,(syn:(category:(verbform:ger),
				    clmm:clm_none))]).

%Abstract construction template. Subtype of coreCosub. Subject of second core is unrealized, raised to mother core.
coreCosubSubjRaise cons (mother:(syn:(val:[Np])),
			 dtrs:[(syn:(val:[Np])),(syn:(val:[Np]))]).

%Abstract construction template. Phase construction. Requires a core with a phase event frame.
phaseCx cons (mother:(sem:(frames:(buildMacroEvent:(eventframes:E)))),
				   dtrs:[(sem:(frames:(buildMacroEvent:(eventframes:(E,[(phase_fr,
											 phase_of_event: I)]))))),(sem:(frames:(buildMacroEvent:(eventframes:[I]))))]).

%Subtype of phaseCx,coreCosubTo. Requires Phase onset only.
% e.g. Mia began to smile.
coreCosubSubjRaiseOnsetPhase cons (mother:(sem:(frames:(buildMacroEvent:(eventframes:[phase_onset_fr]))))).

%Abstract construction template. Subtype of coreCosub. Subject of both first and second cores is unrealized (and coreferential) - passed up to be subject of mother core.
coreCosubSubjControl cons (mother:(syn:(val:[Np])),
			   dtrs:[(syn:(val:[Np|_])),(syn:(val:[Np]))]).

%Abstract construction template. Psych control construction. Requires a core with a desire_situation_fr event frame.
psychCx cons (mother:(sem:(frames:(buildMacroEvent:(eventframes:E)))),
				  dtrs:[(sem:(frames:(buildMacroEvent:(eventframes:(E,[(psych_situation_fr,
											desired_sit: I)]))))),(sem:(frames:(buildMacroEvent:(eventframes:[I]))))]).

%Mia [hit the plate and broke it].
%Mia told John to [smile and laugh].
vpConjunctionReductionCoreCosub cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[E1,E2])))),
				      dtrs: [(syn:(category:Cat,
						   val:[_]),
					      sem:(frames:(buildMacroEvent:(eventframes:[E1])))),(sem:(frames:(buildMacroEvent:(eventframes:[E2]))),
												  syn:(category:Cat,
												       clmm:clm_and))]).


%Core Coordination
%% Abstract construction template. Combines two cores with their own peripheries, and produces a clause.
%% Macro events for each core are moved to the MacroEvents list.
coreCoord cons (mother:(clause,
			syn:(category:Cat,
			     val: Val,
			     clmm: clm_none),
		        sem:(index:I,
			     operators: (clauseops:ClauseOps),
			     frames:(macroEvents:[(macroEvent,
						   eventframes: Evs1,
						   modifiers: Mods1,
						   ops: CoreOps1,
						   me_ix: Meix1)|[(macroEvent,
								   eventframes: Evs2,
								   modifiers: Mods2,
								   ops: CoreOps2,
								   me_ix: Meix2)|_]],
				     macroEventRels:[macroeventrel|_]))),
		dtrs:[(core,
		       syn:(category: Cat,
			     val: Val,
			     clmm: clm_none),
		        sem:(index:I,
			     operators: (clauseops:ClauseOps,
					 coreops:CoreOps1),
			     frames:(buildMacroEvent:(eventframes:Evs1,
						      modifiers:Mods1,
						      me_ix: Meix1)))),(core,
									sem:(operators: (clauseops:ClauseOps,
											   coreops:CoreOps2),
									       frames:(buildMacroEvent:(eventframes:Evs2,
													modifiers:Mods2,
												        me_ix: Meix2))))]).
% Subtype of coreCoord. Communication frames: commuication recipient is the protagonist of the task.
% e.g. Mia told the cat to smile.
commCoreCoord cons (mother:(sem:(frames:(macroEventRels:[(semantic_embedding,
							  embedder:K,
							  embedded:T)|_]))),
		    dtrs:[(sem:(frames:(buildMacroEvent:(eventframes:[(communication_fr,
								       comm_recip: I,
								       task: T)],
							 me_ix:K)))),(syn:(val:[(sem:(index:I))],
									   clmm: clm_to),
								      sem:(frames:(buildMacroEvent:(me_ix:T))))]).

psychCoreCoord cons (mother:(sem:(frames:(macroEventRels:[(semantic_embedding,
							  embedder:K,
							  embedded:J)|_]))),
		     dtrs:[(sem:(frames:(buildMacroEvent:(eventframes:[(psych_situation_fr,
									stimulus: J)],
							  me_ix:K)))),(syn:(val:[_],
									    clmm: clm_to),
								       sem:(frames:(buildMacroEvent:(me_ix:J))))]).

% Abstract construction template: clausal cosubordination
% two core nodes under a single core node, with a shared periphery (modifiers & operators
% Must provide a relation between macroevents
% Concatenate macroevents, propositions, entities
clauseCosub cons (mother: (clause,
			   syn:(X,
				clmm: clm_none),
			   sem:(frames:(macroEventRels:[(macroeventrel,
							 rel_ix: I)]),
			        operators: Operators,
			        index: I)),
		  dtrs: [(clause,
			  periphery: minus,
			  syn:(X,
				clmm: clm_none),
			  sem:(operators: Operators)),(clause,
						       periphery: minus)]).

%Subtype of clause cosubordination. VP conjunction.
% Mia smiled and began to laugh.
vpReductionClauseCosub cons (mother: (sem:(frames:(macroEventRels:[(coordination,
								 evs: [I,J])]))),
			     dtrs: [(subj_clause,
				     syn:(category:Cat),
				     sem:(index:I,
					  frames:(entities:[(ix:Subj)|_]))),(subjless_clause,
									     sem:(index:J),
									     syn:(category:Cat,
										  clmm:clm_and,
										  val:[@np(_,Subj,_)]))]).


% Abstract construction template: clausal coordination
% Takes the macroevent list + macroevent rels list + clause operators from each daughter clause, and adds this as two propositions to the mother.
% Specific versions of this construction will supply different propostion rels.
clauseCoord cons (mother: (sentence,
			   syn:(X,
				clmm: clm_none),
			   sem: (frames:(propositionRels:[proprel|_],
					 propositions:[(proposition,
							pOps: ClauseO1,
							prop_ix: I)|[(proposition,
								      pOps: ClauseO2,
								      prop_ix: J)|_]]))),
		  dtrs: [(subj_clause,
			  syn: (X,
				category:Cat),
			  sem: (index: I,
				operators: (clauseops: ClauseO1))),(subj_clause,
								      syn: (category:Cat),
								      sem: (index: J,
									    operators: (clauseops: ClauseO2)))]).


andClauseCoord cons (mother:(sem:(frames:(propositionRels:[(conjunction,
							    proplist:[I,J])|_]))),
		     dtrs:[(sem:(index:I),
			    syn:(clmm:clm_none)),(sem:(index:J),
						  syn:(clmm:clm_and))]).

%Nuclear cosubordination (no subtypes currently implemented)

nucCosub cons (mother: (nucleus,
			syn:(Syn,
			     clmm: clm_none),
		        sem:(index:I,
			     operators: O)),
	       dtrs: [(nucleus,
		       periphery: minus,
		       syn:Syn,
		       sem:(index:I,
			    operators: O)),(nucleus,
					    periphery:minus)]).

% Verb + path particle
% e.g. Mia ran away.
v_pathparticle_nucCosub cons (mother: (sem:(frames:(buildMacroEvent:(eventframes:[(motion_along_a_path_fr,
										    sit: S,
										    manner: M,
										    path: P,
										    protag: Protag)])))),
			      dtrs: [(sem:(frames:(buildMacroEvent:(eventframes:[(M,self_motion_fr,
										  sit: S,
										  protag: Protag)])))),(sem:(frames:(buildMacroEvent:(eventframes:[(P,directional_path_fr,
																		    trajector: Protag)]))))]).
