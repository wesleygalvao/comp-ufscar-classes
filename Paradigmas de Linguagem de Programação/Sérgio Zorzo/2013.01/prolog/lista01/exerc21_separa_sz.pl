separa_sz([],[],[]).
separa_sz([Cabeca|Cauda],[Cabeca|Negativos],NaoNegativos) :-
	Cabeca < 0,
	separa_sz(Cauda,Negativos,NaoNegativos).

separa_sz([Cabeca|Cauda],Negativos,[Cabeca|NaoNegativos]) :-
	Cabeca > 0,
	separa_sz(Cauda,Negativos,NaoNegativos).

separa_sz([Cabeca|Cauda],Negativos,NaoNegativos) :-
	Cabeca = 0,
	separa_sz(Cauda,Negativos,NaoNegativos).

