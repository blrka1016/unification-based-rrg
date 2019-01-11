% Definite clauses
% ------------------------------------------------------------------------------

% Determines which constructions can participate in the pumping rule (pumpingCx)
 pump(subj_clause,clauseToS) if true.
 pump(core,coreToSubjClause) if true.
 pump(core,coreToSubjlessClause) if true.
 pump(nucleus,nnucToNCore) if true.
 pump(pp,ppToNuc) if true.
 pump(pp,ppToVerbalMod) if true.
 pump(core,plNCoreToGenericNP) if true.
 pump(core,pnToNP) if true.
 pump(word,predToNuc) if true.
 pump(word,nToNNuc) if true.

% Determines which constructions can participate in the argument structure construction rule (argst_cx1)
 argstcx(intr_unerg_argst) if true.
 argstcx(intr_unacc_argst) if true.
 argstcx(stim_exp_trans_argst) if true.
 argstcx(causative_trans_argst) if true.
 argstcx(exp_stim_trans_argst) if true.
 argstcx(pp_on_argst) if true.
 argstcx(protag_phase_argst) if true.
 argstcx(communication_argst) if true.
 argstcx(motion_path_argst) if true.
 argstcx(consume_trans_bounded_argst) if true.
 argstcx(create_trans_bounded_argst) if true.
 argstcx(protag_phase_obj_argst) if true.
 argstcx(motion_path_argst2) if true.

% Determines which constructions can participate in the twoConstituentsNoSemConcat rule
 twoconstnosemconcat(articleNCore) if true.
 twoconstnosemconcat(prepN) if true.
 twoconstnosemconcat(to_core) if true.
 twoconstnosemconcat(and_clause) if true.
 twoconstnosemconcat(and_core) if true.
 twoconstnosemconcat(that_clause) if true.
 twoconstnosemconcat(adjNNuc) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllSemFrames rule
 concatAllSem(coreModTimeAdv) if true.
 concatAllSem(coreModPPV) if true.
 concatAllSem(ppNPMod) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllExclModFrames rule
 concatallexclmod(coreModCompletionTimePP) if true.
 concatallexclmod(coreModDurationPP) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllExclEventFrames rule
 concatallexclef(predArg) if true.
 concatallexclef(subjPred) if true.
 concatallexclef(coreCosubSubjRaiseOnsetPhase) if true.
 concatallexclef(coreCosubSubjRaiseGerundPhase) if true.
 concatallexclef(coreCosubSubjControlPsychTo) if true.
 concatallexclef(vpConjunctionReductionCoreCosub) if true.
 concatallexclef(v_pathparticle_nucCosub) if true.

% Determines which constructions can participate in the coreCoord rule
 mecoord(commCoreCoord) if true.
 mecoord(psychCoreCoord) if true.

 concatentMEPropProprels(vpReductionClauseCosub) if true.

 propCoord(andClauseCoord) if true.

% Procedure for concatenating lists of frames
 concat_frames([],L,L) if true.
 concat_frames([X|L1],L2,[X|L3]) if concat_frames(L1,L2,L3).

