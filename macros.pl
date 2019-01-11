
% Macros
% ------------------------------------------------------------------------------
 v_lxm(Frame) macro  (lex_v_lxm,
		      sem: (frames: (buildMacroEvent:(eventframes:[Frame])))).

 v_lxm(Frame,Aspect) macro (lex_v_lxm,
			    sem: (frames: (buildMacroEvent:(eventframes:[(Frame,
									  aspect:Aspect)])))).

 prep_lxm(Frame,Form) macro (prep_lxm,
		      syn: (category: (pform: Form)),
		      sem: (frames:(buildMacroEvent:(eventframes:[Frame])))).

 part_lxm(Frame,Form) macro (particle_lxm,
		      syn: (category: (pform: Form)),
		      sem: (frames:(buildMacroEvent:(eventframes:[Frame])))).

 np(X,Y,Z) macro (np,
		  syn: (category: (case: X,
				   agr:(thirdsing:Z))),
		  sem: (index: Y)).

 pp(Pform,Index) macro (pp,
	        syn: (category:(pform:Pform,
				pobj: @np(_,Index,_)))).


 append([],L) +++> L.
 append([X|L1],L2) +++> [X|append(L1,L2)].
