% Permite agregar/eliminar hechos en tiempo de ejecución
:- dynamic tiene/1.

%--------------------------------
% Reglas por enfermedad
enfermedad('Gripe') :-
    tiene(s1), % Fiebre
    tiene(s2), % Dolor de garganta
    tiene(s3). % Congestión nasal

enfermedad('COVID-19') :-
    tiene(s1), % Fiebre
    tiene(s4), % Tos seca
    tiene(s5). % Dificultad para respirar

enfermedad('Neumonía') :-
    tiene(s1), % Fiebre
    tiene(s5), % Dificultad para respirar
    tiene(s6). % Dolor en el pecho

enfermedad('Alergia') :-
    tiene(s3), % Congestión nasal
    tiene(s7), % Estornudos
    tiene(s8). % Picazón en ojos/nariz

enfermedad('Migraña') :-
    tiene(s9),  % Dolor de cabeza intenso
    tiene(s10), % Náuseas
    tiene(s11). % Sensibilidad a la luz

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
