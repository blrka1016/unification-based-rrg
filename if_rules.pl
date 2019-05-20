% Definite clauses
% ------------------------------------------------------------------------------

% Determines which constructions can participate in the pumping rule (pumpingCx)
 pump(subj_clause,clauseToS) if true.
 pump(core,coreToSubjClause) if true.
 pump(core,coreToSubjlessClause) if true.
 pump(nucleus,nnucToNCore) if true.
 pump(pp,ppToNuc) if true.
 pump(pp,ppToVerbalMod) if true.
 %pump(core,plNCoreToGenericNP) if true.
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
 %twoconstnosemconcat(that_clause) if true.
 %twoconstnosemconcat(adjNNuc) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllSemFrames rule
 buildMEConcatSem(coreModTimeAdv) if true.
% buildMEConcatSem(coreModPPV) if true.
%concatAllSem(ppNPMod) if true. %NEED TO FIX THIS ONE
 concatAllSem(fake) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllExclModFrames rule
 buildMEConcatSemexclmod(coreModCompletionTimePP) if true.
 buildMEConcatSemexclmod(coreModDurationPP) if true.
 buildMEConcatSemexclmod(fake) if true.

% Determines which constructions can participate in the twoConstituentsConcatAllExclEventFrames rule
 buildMEConcatSemexclef(subjPred) if true.
 buildMEConcatSemexclef(predArg) if true.
 buildMEConcatSemexclef(coreCosubSubjRaiseOnsetPhase) if true.
 %buildMEConcatSemexclef(coreCosubSubjRaiseGerundPhase) if true.
 buildMEConcatSemexclef(coreCosubSubjControlPsychTo) if true.
 buildMEConcatSemexclef(vpConjunctionReductionCoreCosub) if true.
 buildMEConcatSemexclef(v_pathparticle_nucCosub) if true.
 buildMEConcatSemexclef(fake) if true.

% Determines which constructions can participate in the coreCoord rule
 mecoord(commCoreCoord) if true.
 mecoord(psychCoreCoord) if true.

 concatentMEPropProprels(vpReductionClauseCosub) if true.

 propCoord(andClauseCoord) if true.

% Procedure for concatenating lists of frames
 concat_frames([],L,L) if true.
 concat_frames([X|L1],L2,[X|L3]) if concat_frames(L1,L2,L3).

