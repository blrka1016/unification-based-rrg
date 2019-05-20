% Signature
% -------------------------------------------------

bot sub [fake,sign_none, syn, sem, list, cx, frame, category, verbform, case, bool, num, per, gnd, confg, pform, temp, frames, definiteness, macroEvent, operators, proposition, aspect, macroeventrel].
  sign_none sub [sign, none].
    sign sub [lex_sign, layers]
      intro [syn: syn,
              sem: sem].
      layers sub [word, nucleus, core, clause, sentence, np, pp]
      intro [periphery: bool].
        clause sub [subj_clause, subjless_clause].
        core sub [ncore, vcore, pcore].
      lex_sign sub [lexeme, word].
        lexeme sub [v_lxm, n_lxm, invariant_lxm].
          v_lxm sub [aux_lxm, copula_lxm, lex_v_lxm].
          invariant_lxm sub [nom_lxm,p_lxm, mod_lxm,function_lxm].
            nom_lxm sub [pn_lxm,pro_lxm].
            mod_lxm sub [adv_lxm, adj_lxm].
            function_lxm sub [det_lxm,clm_lxm].
              p_lxm sub [particle_lxm,prep_lxm].
          n_lxm sub [cn_lxm].
  syn sub []
    intro [category: category,
           val: list,
	   clmm: clm].
  sem sub []
    intro [index: (a_ _),
    	   frames: frames,
	   operators: operators].
  list sub [e_list, ne_list].
    ne_list sub [] 
            intro [hd: bot, 
                   tl:list].
  cx sub [lCx, pCx]
    intro [mother : sign,
           dtrs : list].
    pCx sub [pumpCx,argCx,modCx,junctCx,ppCx,npCx,argstCx].
      argstCx sub [intr_argst, ditrans_argst, trans_argst, pp_argst, protag_phase_argst].
        intr_argst sub [intr_unerg_argst, intr_unacc_argst, motion_path_argst2].
        trans_argst sub [protag_phase_obj_argst, stim_exp_trans_argst,causative_trans_argst, exp_stim_trans_argst, communication_argst, consume_create_trans_bounded_argst].
          consume_create_trans_bounded_argst sub [consume_trans_bounded_argst, create_trans_bounded_argst].
        pp_argst sub [pp_on_argst,motion_path_argst].
    pumpCx sub [predToNuc, nucToCore, coreToClause, clauseToS, nToNNuc, pnToNP, nnucToNCore, ppToNuc,plNCoreToGenericNP,ppToVerbalMod].
      coreToClause sub [coreToSubjClause,coreToSubjlessClause].
    argCx sub [subjPred, predArg].
    modCx sub [nucMod, coreMod, clauseMod, sMod, npMod].
      coreMod sub [coreModTimeAdv,coreModPPV, coreModMotionPathP, coreModCausedMotionPathP, coreModDurationPP, coreModCompletionTimePP].
        npMod sub [ppNPMod].
    npCx sub [articleNCore,adjNNuc].
    ppCx sub [prepN].
    junctCx sub [nucCosub, coreCosub, coreCoord, clauseCosub, clauseCoord, clm_cx].
      coreCosub sub [coreCosubSubjRaise, coreCosubSubjControl, coreCosubTo, coreCosubGerund].
        coreCosubSubjRaise sub [phaseCx].
          phaseCx sub [coreCosubSubjRaiseOnsetPhase, coreCosubSubjRaiseGerundPhase].
            coreCosubTo sub [coreCosubSubjRaiseOnsetPhase,coreCosubSubjControlPsychTo].
            coreCosubGerund sub [coreCosubSubjRaiseGerundPhase].
        coreCosubSubjControl sub [psychCx,vpConjunctionReductionCoreCosub].
          psychCx sub [coreCosubSubjControlPsychTo].
      coreCoord sub [commCoreCoord, psychCoreCoord].
      nucCosub sub [v_pathparticle_nucCosub].
      clauseCosub sub [vpReductionClauseCosub].
      clauseCoord sub [andClauseCoord].
      clm_cx sub [and_clause,and_core,to_core,that_clause].
  frame sub [ent_fr, ev_fr, mod_fr, property_fr, path_fr, interval_fr, role_fr].
    role_fr sub [stimulus].
      stimulus sub [stimulus_entity, stimulus_event, stimulus_proposition].
    ent_fr sub [ent_category, construed_ent, naming_fr, given_ent]
      intro [entity: (a_ _),
	     confg: confg].
    ent_category sub [concrete_fr, abstract_fr].
      concrete_fr sub [animate_fr,inanimate_fr].
        animate_fr sub [dog_fr,cat_fr,man_fr, turtle_fr, owl_fr, shark_fr, camel_fr, fish_fr, dolphin_fr, deer_fr, spider_fr, pig_fr, ant_fr, crocodile_fr, lion_fr, lobster_fr, zebra_fr, duck_fr, chicken_fr, seal_fr, panda_fr, hippopotamus_fr, sheep_fr, horse_fr, monkey_fr, alligator_fr, scorpion_fr, fox_fr, frog_fr, elephant_fr, cheetah_fr, puppy_fr, goat_fr, eagle_fr, squirrel_fr, snail_fr, kangaroo_fr, bear_fr, tiger_fr, giraffe_fr, chimpanzee_fr, rabbit_fr, kitten_fr, goldfish_fr, fly_fr, cow_fr, rat_fr, bee_fr, bird_fr, wolf_fr, hamster_fr, octopus_fr, snake_fr].
        inanimate_fr sub [object_fr,location_fr].
          object_fr sub [vase_fr,plate_fr,chair_fr,cake_fr].
      abstract_fr sub [time_unit_fr].
        time_unit_fr sub [week_fr, hour_fr, century_fr, nanosecond_fr, month_fr, second_fr, millennium_fr, minute_fr, fortnight_fr, year_fr, day_fr, decade_fr].
    ev_fr sub [protag_ev, no_protag_ev]
      intro [sit: (a_ _),
	     aspect: aspect].
      no_protag_ev sub [phase_fr, appears_fr, weather_fr].
        phase_fr sub [phase_onset_fr, keeping_fr, finishing_fr]
          intro [phase_of_event: ev_fr].
          phase_onset_fr sub [beginning_fr, starting_fr].
      protag_ev sub [cause_fr, change_state, action_fr, stim_fr, be_state]
        intro [protag: (a_ _)].
      change_state sub [instant_change_state, gradual_change_state,causeEffectAction_fr]
        intro [affected: (a_ _)].
          instant_change_state sub [breaking_fr,falling_fr].
          gradual_change_state sub [melting_fr, vaporizing_fr, defrosting_fr, liquefying_fr, condensing_fr, evaporating_fr, freezing_fr, solidifying_fr, thawing_fr, subliming_fr].
      cause_fr sub [causeEffectAction_fr]
      intro [causer: (a_ _),
	     causedSituation: ev_fr,
	     causingSituation: ev_fr].
        causeEffectAction sub [caused_motion_fr].
      action_fr sub [intern_caused_act_fr, motion_along_a_path_fr, existing_fr, apply_force_fr, communication_fr].
        intern_caused_act_fr sub [make_faces_fr, self_motion_fr, make_noise_fr, create_consume_fr].
          self_motion_fr sub [running_fr, skipping_fr, dancing_fr, walking_fr, jogging_fr, crawling_fr, climbing_fr, sailing_fr, slopping_fr, wading_fr, darting_fr, crawling_fr, sauntering_fr, strutting_fr, cruising_fr, staggering_fr, clomping_fr, swaggering_fr, driving_fr, stomping_fr, tottering_fr, tiptoing_fr, jumping_fr, clambering_fr, waltzing_fr, swimming_fr, mincing_fr, swimming_fr, wriggling_fr, hitchhiking_fr, moseying_fr, flying_fr, romping_fr, hurrying_fr, sashaying_fr, hastenning_fr, prancing_fr, vaulting_fr, scampering_fr, parading_fr, strolling_fr, cantering_fr, flouncing_fr, promenading_fr, strolling_fr, roaming_fr, swinging_fr, making_fr, waddling_fr, tacking_fr, marching_fr, bopping_fr, capering_fr, marching_fr, striding_fr, ambling_fr, coasting_fr, jaunting_fr, loping_fr, trudging_fr, tripping_fr, barging_fr, springing_fr, bustling_fr, limping_fr, lunging_fr, heading_fr, stalking_fr, sprinting_fr, gamboling_fr, shuffling_fr, scooting_fr, trotting_fr, sprinting_fr, edging_fr, shuffling_fr, roving_fr, treading_fr, pacing_fr, proceeding_fr, advancing_fr, lumbering_fr, scrambling_fr, frolicking_fr, scrambling_fr, filing_fr, scurrying_fr, slouching_fr, gallivanting_fr, dashing_fr, trundling_fr, hiking_fr, sleepwalking_fr, venturing_fr, slipping_fr, padding_fr, bounding_fr, storming_fr, dashing_fr, sidling_fr, plodding_fr, pouncing_fr, backing_fr, meandering_fr, lurching_fr, waying_fr, wandering_fr, trooping_fr, creeping_fr, slalomming_fr, shouldering_fr, sneaking_fr, taxiing_fr, rushing_fr, skimming_fr, burrowing_fr, prowling_fr, sloshing_fr, slinking_fr, traipsing_fr, stealing_fr, flitting_fr, slogging_fr, scuttling_fr, repairing_fr, slogging_fr, leaping_fr, nancing_fr, treking_fr, toddling_fr, stumbling_fr, hopping_fr, hobbling_fr, tramping_fr, ripping_fr, slithering_fr, straggling_fr, stepping_fr, hiking_fr, stepping_fr, skulking_fr].
        make_noise_fr sub [laughing_fr, purring_fr, bellowing_fr, coughing_fr, plashing_fr, neighing_fr, blaring_fr, snickering_fr, tweeting_fr, tinkling_fr, rasping_fr, thumping_fr, squawking_fr, pattering_fr, babbling_fr, hissing_fr, clanging_fr, whistling_fr, snarling_fr, mooing_fr, blasting_fr, yammering_fr, snoring_fr, rustling_fr, crying_fr, snorting_fr, twittering_fr, crooning_fr, barking_fr, clicking_fr, chuckling_fr, thundering_fr, whimpering_fr, splooshing_fr, tolling_fr, crunching_fr, wailing_fr, soughing_fr, mewing_fr, peeping_fr, mewling_fr, quacking_fr, giggling_fr, guffawing_fr, roaring_fr, braying_fr, screeching_fr, keening_fr, cooing_fr, croaking_fr, sobbing_fr, burbling_fr, hooting_fr, squeaking_fr, plonking_fr, clacking_fr, ringing_fr, gurgling_fr, moaning_fr, scrunching_fr, plopping_fr, yaping_fr, beeping_fr, whining_fr, crepitating_fr, squealing_fr, sizzling_fr, cackling_fr, humming_fr, whinnying_fr, tittering_fr, grunting_fr, chattering_fr, sounding_fr, cawing_fr, gobbling_fr, yodeling_fr, rattling_fr, whispering_fr, creaking_fr, yowling_fr, trumpetting_fr, purring_fr, growling_fr, scraping_fr, droning_fr, booming_fr, bleating_fr, clashing_fr, chirping_fr, pealing_fr, clattering_fr, gasping_fr, hawking_fr, ululating_fr, yelping_fr, cheeping_fr, caterwauling_fr, fizzling_fr, sniggering_fr, screaming_fr, howling_fr].
        make_faces_fr sub [smiling_fr, frowning_fr, pouting_fr, smirking_fr, scowling_fr, grinning_fr, grimacing_fr].
        communication_fr sub [telling_fr, asking_fr]
          intro [comm_recip: (a_ _),
	         task: (a_ _)]. %ADD MESSAGE ONCE PROPOSITIONS ARE INTEGRATED
        motion_along_a_path_fr sub [motion_along_a_path_fr_bounded, motion_along_a_path_fr_unbounded]
          intro [manner: self_motion_fr,
	         path: path_fr,
		 boundedb: bool].
        apply_force_fr sub [rely_fr, depend_fr, lean_fr]
          intro [force_recip: (a_ _)].
        create_consume_fr sub [create_fr, consume_fr]
            intro [boundingObj: (a_ _)].
          consume_fr sub [eating_fr, reading_fr]
            intro [consumed: (a_ _)].
          create_fr sub [writing_fr, composing_fr, jotting_fr, chronicling_fr, authoring_fr, penning_fr, signing_fr, saying_fr, drafting_fr, printing_fr, uttering_fr, typing_fr, speaking_fr, casting_fr, drawing_fr, sculpting_fr, painting_fr]
            intro [created: (a_ _)].
      stim_fr sub [stim_exp_fr, exp_stim_fr]
        intro [stimulus: (a_ _),
	       experiencer: (a_ _)].
        stim_exp_fr sub [amusing_fr,scaring_fr].
        exp_stim_fr sub [wanting_fr, liking_fr, fancying_fr, craving_fr, covetting_fr, psych_situation_fr, pitying_fr, despising_fr, liking_fr, loving_fr, regretting_fr, disliking_fr, grieving_fr, envying_fr, resenting_fr, detesting_fr, adoring_fr, dreading_fr, mourning_fr, fearing_fr, ruing_fr, hating_fr, abhoring_fr, loathing_fr, overhearing_fr, detecting_fr, feeling_fr, perceiving_fr, tasting_fr, hearing_fr, sensing_fr, smelling_fr, witnessing_fr, seeing_fr].
            wanting_fr sub [wanting_situation_fr].
            liking_fr sub [liking_situation_fr].
            psych_situation_fr sub [wanting_situation_fr, liking_situation_fr]
              intro [desired_sit: ev_fr].
      be_state sub [be_entity, be_property, be_location]
        intro [state_holder: (a_ _),
	       state: frame].
    mod_fr sub [time_mod_fr, time_length_fr]
      intro [mod_event: (a_ _)].
        time_length_fr sub [duration_fr,completion_time_fr]
          intro [time_length: (a_ _)].
    time_mod_fr sub [time_loc_fr].
      time_loc_fr sub [today_fr, yesterday_fr, tomorrow_fr].
    property_fr sub [traj_lm, green_fr, old_fr]
      intro [trajector: (a_ _)].
      traj_lm sub [location_fr, path_fr, time_length_fr,benefit_fr]
        intro [landmark: (a_ _)].
        path_fr sub [source_path_fr, goal_path_fr, directional_path_fr]
          intro [source: (a_ _),
	         goal: (a_ _),
		 boundedc: bool].
  category sub [nonverbal, agreement].
    nonverbal sub [nominal, adj, adv, clm].
      nominal sub [noun, det, prep]
          intro [case : case,
	         count: confg,
		 definiteness: definiteness].
      prep sub []
        intro [pform: pform,
	       pobj: pobj].
      clm sub [clm_to, clm_that, clm_and, clm_none].
    verbal sub [verb, verb_particle]
      intro [verbform : verbform,
	     psa: (a_ _)].
    agreement sub [verbal, nominal]
      intro [agr:agr].
  verbform sub [fin, inf, base, prp, psp, pas, ger].
  case sub [nom, acc].
  bool sub [plus, minus].
  confg sub [count, mass].
  num sub [sg, pl].
  per sub [first, second, third].
  gnd sub [masc,fem].
  temp sub [past,pres,fut].
  definiteness sub [def_marked, unmarked].
    def_marked sub [definite,indefinite,generic,quantified].
  frames sub [buildRD, buildME, buildProp, buildNone]
    intro [entities: list,
	   propositions: list,
	   propositionRels: list].
    buildRD sub []
      intro [referentdescriptor: referentdescriptor].
    buildME sub []
      intro [buildMacroEvent: macroEvent].
    buildProp sub []
      intro [macroEvents: list,
	     macroEventRels: list].
  agr sub []
    intro [num : num,
	   per : per,
	   gnd : gnd,
	   thirdsing: bool].
  pform sub [with,under,on,in,behind,of,for,into,over,away,up,down,from,to].
  macroEvent sub []
    intro [eventframes: list,
	   modifiers: list,
	   ops: coreops,
	   aspectprofile:aspect,
	   me_ix: (a_ _)].
  referentdescriptor sub []
    intro [cat: frame,
	   modifrs: list,
	   bounded: bool,
	   def: definiteness,
	   number: num,
	   ix: (a_ _)].
  proposition sub []
    intro [macroEvs: list,
	   pOps: clauseops,
	   macroEvRels: list,
	   prop_ix: (a_ _)].
  operators sub []
    intro [nucops: nucops,
           coreops: coreops,
	   clauseops: clauseops].
  coreops sub []
    intro [eventquant: bool,
	   deonticmod: bool,
	   narrowneg: bool].
  clauseops sub []
    intro [epistmod: bool,
	   tense: temp,
	   wideneg: bool,
	   if: bool].
  nucops sub []
    intro [nucneg: bool].
  aspect sub [state, activity, achievement, semelfactive, accomplishment, active_accomplishment]
  intro [static: bool,
	 dynam: bool,
	 telic: bool,
	 punctual: bool].	  
  sem_output sub []
    intro [ents: list,
	   props: list,
	   proprels: list].
  macroeventrel sub [coordination, semantic_embedding]
    intro [rel_ix: (a_ _)].
  coordination sub []
    intro [evs: list].
  semantic_embedding sub []
  intro [embedder: (a_ _),
	 embedded: (a_ _)].
  proprel sub [conjunction]
    intro [proplist: list].
  pobj sub [nopobj,np].
