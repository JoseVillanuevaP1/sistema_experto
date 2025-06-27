% Permite agregar/eliminar hechos en tiempo de ejecución
:- dynamic tiene/1.

%--------------------------------
% Reglas por enfermedad

% Gripe: Escalofríos, Malestar general, Fiebre
enfermedad(1) :-
    tiene(s2),  % Escalofríos
    tiene(s3),  % Malestar general
    tiene(s1).  % Fiebre

% Neumonía: Disnea, Dolor pleurítico, Tos
enfermedad(3) :-
    tiene(s5),  % Dolor pleurítico
    tiene(s4),  % Tos
    tiene(s6).  % Dolor muscular

% COVID: Fiebre, Tos, Dolor muscular
enfermedad(2) :-
    tiene(s1),  % Fiebre
    tiene(s4),  % Tos
    tiene(s6).  % Dolor muscular

% Alergia: Irritación nasal, Secreción acuosa, Estornudos
enfermedad(4) :-
    tiene(s7),  % Irritación nasal
    tiene(s8),  % Secreción acuosa
    tiene(s9).  % Estornudos

% Migraña: Náuseas, Fotofobia, Cefalea pulsátil, Malestar general
enfermedad(5) :-
    tiene(s10), % Náuseas
    tiene(s11), % Fotofobia
    tiene(s12), % Cefalea pulsátil
    tiene(s3).  % Malestar general

%--------------------------------
% Predicados de control

% Carga síntomas seleccionados
lista([]).
lista([H|T]) :- assert(tiene(H)), lista(T).

% Entrada principal desde PHP o consola
test(X) :-
    limpiar,
    lista(X),
    (   enfermedad(E)
    ->  write(E)
    ;   write('No se detecto la enfermedad')
    ).

% Limpia hechos previos
limpiar :- retractall(tiene(_)).
