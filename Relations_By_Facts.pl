% Defining relations by Facts
% The fact is Tom is a parent of Bob can be written as: etc etc
%
% Knowledge Base:
parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

% Queries
% Is Bob a parent of Pat?
% parent(bob,pat).
%
% Is Liz a parent of Pat?
% parent(liz,pat).
%
% Who is Liz's Parents?
% parent(X,liz).
%
% Who are Bob's Children?
% parent(bob,X).
%
% Who is a parent of whom?
% parent(X,Y).
%
% Who is the grandfather of Jim?
% --Break this down into:
% --- Who is the parent of Jim, assume this is Y
% --- Who is the parent of Y, assume this is X
% parent(Y,jim),parent(X,Y).
%
% Who is Tom's Grandchildren?
% parent(tom,X),parent(X,Y).
%
% Do Ann and Pat have a common parent>
% --Who is a parent,X,of Ann?
% --Is X also a parent of Pat?
% parent(X,ann),parent(X,pat).
% --- This means:
% --X is a parent of Ann and
% --X is a parent of Pat.
%
