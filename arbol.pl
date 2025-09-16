
arbol(
    t(crono,
        t(rea,
            t(zeus,
                t(hades,    t(ares, nil, nil), nil),
                t(poseidon, t(hefesto, nil, nil), nil)
            ),
            nil
        ),
        nil)
).

% Se hace el recorrido en preorden
preorder(nil, []).
preorder(t(V,L,R), [V|T]) :-
    preorder(L, TL),
    preorder(R, TR),
    append(TL, TR, T).

