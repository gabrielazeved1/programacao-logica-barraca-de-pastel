% Programação Lógica 
% Racha Cuca - Barraca de Pastel
% https://rachacuca.com.br/logica/problemas/barraca-de-pastel/
% Gabriel Azevedo Santos Lopes
 % A resposta será do tipo:
%mesa(cliente(,,,,,),
     %cliente(,,,,,),
     %cliente(,,,,,),
     %cliente(,,,,,),
     %cliente(,,,,,)).

resolve(Sol) :-
    Sol = mesa(_,_,_,_,_),
    % Júlio está exatamente à direita do Bancário.
    exatamente_a_direita(A,B,Sol),
    membro(A,Sol),
    nome(A,julio),
    profissao(B,bancario),
    %Quem gosta de Maionese está em algum lugar entre quem gosta de Pimenta e quem gosta de Mostarda, nessa ordem.
    algum_lugar_entre(Sol,C,D,E),
    condimento(D,maionese),
    condimento(C,pimenta),
    condimento(E,mostarda),
    %Fabiano vai comer um pastel de Frango.
    membro(F,Sol),
    nome(F,fabiano),
    pastel(F,frango),
    %O cliente de Vermelho está ao lado de quem vai beber um suco de Maracuja.
    aolado(G,H,Sol),  
    camiseta(G,vermelho),
    suco(H,maracuja),
    %Fabiano está em algum lugar entre quem gosta de Vinagrete e o Carlos, nessa ordem.
    algum_lugar_entre(Sol,I,J,K),
    nome(J,fabiano),
    condimento(I,vinagrete),
    nome(K, carlos),
    %O Entregador pediu um pastel de Carne.
    membro(L,Sol),
    profissao(L,entregador),
    pastel(L,carne),
    % O Relojoeiro está exatamente à esquerda de quem beberá um suco de Maçã.
    exatamente_a_esquerda(M,N,Sol),
    profissao(M,relojoeiro),
    suco(N,maca),
    % O rapaz de Vermelho está em algum lugar à esquerda de quem gosta de Ketchup.
    algum_lugar_a_esquerda(Sol,O,P),
    camiseta(O,vermelho),
    condimento(P,ketchup),
    % Na quarta posição está o cliente que gosta de Mostarda.
    quarta(Q,Sol),
    condimento(Q,mostarda),
    % O Feirante está ao lado de quem gosta de Pimenta.
    aolado(R,S,Sol),
    profissao(R, feirante),
    condimento(S, pimenta),
    % Quem vai comer um pastel de Carne está em algum lugar entre quem vai comer um pastel de Frango e quem vai comer um pastel de Calabresa, nessa ordem.
    algum_lugar_entre(Sol,T,U,V),
    pastel(T,frango),
    pastel(U,carne),
    pastel(V,calabresa),
    % O cliente de Azul gosta de Maionese.
    membro(W,Sol),
    camiseta(W,azul),
    condimento(W,maionese),
    % Rubens está exatamente à direita de quem pediu um pastel de Queijo.
    exatamente_a_direita(X,Y,Sol),
    nome(X,rubens),
    pastel(Y,queijo),
    % O Feirante vai beber um suco de Maracujá.
    membro(Z,Sol),
    profissao(Z,feirante),
    suco(Z,maracuja),
    % O rapaz de Amarelo está em algum lugar à esquerda do rapaz de Branco.
    algum_lugar_a_esquerda(Sol,Z1,Z2),
    camiseta(Z1,amarelo),
    camiseta(Z2,branco),
    % Quem pediu um suco de Laranja está em algum lugar entre Júlio e quem pediu suco de Limão, nessa ordem.
    algum_lugar_entre(Sol,Z3,Z4,Z5),
    suco(Z4,laranja),
    nome(Z3,julio),
    suco(Z5,limao),
    % Na primeira posição está quem vai comer um pastel de Pizza.
    primeira(Z6,Sol),
    pastel(Z6,pizza),
    % O Bancário está usando um camiseta Verde.
    membro(Z7,Sol),
    profissao(Z7,bancario),
    camiseta(Z7,verde),
    % Quem gosta de Pimenta está em algum lugar entre o Relojoeiro e o cliente de Azul, nessa ordem.
    algum_lugar_entre(Sol,Z9,Z8,Z10),
    condimento(Z8,pimenta),
    profissao(Z9,relojoeiro),
    camiseta(Z10,azul),
    
    %resto
    membro(Y1,Sol),
    nome(Y1,marcelo),
    membro(Y2,Sol),
    suco(Y2,maca),
    membro(Y3,Sol),
    suco(Y3,uva),
    membro(Y4,Sol),
    profissao(Y4,vendedor),
    membro(Y5,Sol),
    pastel(Y5,queijo).
    
    
membro(X,mesa(X,_,_,_,_)).
membro(X,mesa(_,X,_,_,_)).
membro(X,mesa(_,_,X,_,_)).
membro(X,mesa(_,_,_,X,_)).
membro(X,mesa(_,_,_,_,X)).

camiseta(cliente(X,_,_,_,_,_),X).
nome(cliente(_,X,_,_,_,_),X).
pastel(cliente(_,_,X,_,_,_),X).
condimento(cliente(_,_,_,X,_,_),X).
suco(cliente(_,_,_,_,X,_),X).
profissao(cliente(_,_,_,_,_,X),X).


aolado(X,Y,mesa(X,Y,_,_,_)).
aolado(X,Y,mesa(Y,X,_,_,_)).
aolado(X,Y,mesa(_,X,Y,_,_)).
aolado(X,Y,mesa(_,Y,X,_,_)).
aolado(X,Y,mesa(_,_,X,Y,_)).
aolado(X,Y,mesa(_,_,Y,X,_)).
aolado(X,Y,mesa(_,_,_,X,Y)).
aolado(X,Y,mesa(_,_,_,Y,X)).

algum_lugar_entre(mesa(C,D,E,_,_),C,D,E).
algum_lugar_entre(mesa(C,D,_,E,_),C,D,E).
algum_lugar_entre(mesa(C,D,_,_,E),C,D,E).
algum_lugar_entre(mesa(C,_,D,E,_),C,D,E).
algum_lugar_entre(mesa(C,_,D,_,E),C,D,E).
algum_lugar_entre(mesa(C,_,_,D,E),C,D,E).
algum_lugar_entre(mesa(_,C,D,E,_),C,D,E).
algum_lugar_entre(mesa(_,C,D,_,E),C,D,E).
algum_lugar_entre(mesa(_,C,_,D,E),C,D,E).
algum_lugar_entre(mesa(_,_,C,D,E),C,D,E).




algum_lugar_a_esquerda(mesa(X,Y,_,_,_),X,Y).
algum_lugar_a_esquerda(mesa(X,_,Y,_,_),X,Y).
algum_lugar_a_esquerda(mesa(X,_,_,Y,_),X,Y).
algum_lugar_a_esquerda(mesa(X,_,_,_,Y),X,Y).
algum_lugar_a_esquerda(mesa(_,X,Y,_,_),X,Y).
algum_lugar_a_esquerda(mesa(_,X,_,Y,_),X,Y).
algum_lugar_a_esquerda(mesa(_,X,_,_,Y),X,Y).
algum_lugar_a_esquerda(mesa(_,_,X,Y,_),X,Y).
algum_lugar_a_esquerda(mesa(_,_,X,_,Y),X,Y).
algum_lugar_a_esquerda(mesa(_,_,_,X,Y),X,Y).

primeira(X,mesa(X,_,_,_,_)).
quarta(X,mesa(_,_,_,X,_)).



    
exatamente_a_esquerda(X,Y,mesa(X,Y,_,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,X,Y,_,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,X,Y,_)).
exatamente_a_esquerda(X,Y,mesa(_,_,_,X,Y)).

exatamente_a_direita(X,Y,Mesa) :-
   exatamente_a_esquerda(Y,X,Mesa).