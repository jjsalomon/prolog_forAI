% Knowledge Base
%
% Adding our Facts
parent(tom,bob).
parent(pam,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

female(pam).
male(tom).
male(bob).
female(liz).
female(pat).
female(ann).
male(jim).

% Alternatively
%sex(pam,feminine).
%sex(tom,masculine).
%sex(bob,masclune).
%sex(liz,feminine).
% etc..
%
% Mother relation
%mother(pam,bob).
%mother(pat,tim).

% For a large database of people, the mother relation can be
% defined more elegantly by making use of the fact that it can be
% logically derived from the already known relations parent and female
% based on:
% for all X and Y,
%   X is the mother of Y if
%     X is a parent of Y, and X is female
%This is written as:
mother(X,Y):- parent(X,Y),female(X).
