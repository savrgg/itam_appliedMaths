function [x] = miprueba (point,fungrad,name,maxit)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%
%prueba realizada con funcion de prueba min=(x-1)^2 +(x-3.5)^2
%se conoce con antelacion el minimo (1,3,5)
%se probara para 3 casos (GC=gradienteConjugado; LS=lineSearch:
%
%   1) SI AMPL, NO GC, NO LS
%   2) SI AMPL, SI GC, NO LS
%   3) SI AMPL, NO GC, SI LS
%   4) SI AMPL, SI GC, SI LS
%   
%
%   Salvador Garcia G. Octubre 2013
%
%   ITAM, Analisis Aplicado I
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%mandar llamar con:
%{
%
%incluir el path antes de iniciar
%path(path,'/bin/AMPL/');
%
%
%prueba 1
%funcion min=(x-1)^2 +(x-3.5)^2
use_ampl_stub rosenbr.nl;
x=miprueba ('amplpnt','amplstub', 'rosenbr', 50);

%prueba2
%funcion banana de rosenberg
use_ampl_stub rosenbrOriginal.nl;
x=miprueba ('amplpnt','amplstub', 'rosenbrOriginal', 50);

%prueba3
%arglina
use_ampl_stub arglina.nl;
x=miprueba ('amplpnt','amplstub', 'arglina', 50);

%prueba conflictiva
%biggs6
use_ampl_stub biggs6.nl;
x=miprueba ('amplpnt','amplstub', 'biggs6', 50);

%prueba mas conflictiva
%maratosb.nl
use_ampl_stub maratosb.nl;
x=miprueba ('amplpnt','amplstub', 'maratosb', 50);

%prueba una y me rindo
%extrosnb
use_ampl_stub extrosnb.nl
x=miprueba ('amplpnt','amplstub', 'maratosb', 50);
%}

%7 nov/SEGUNDO PROYECTO

%prueba pol.mod
%path(path,'/bin/AMPL/');
%use_ampl_stub pol.nl
%x=miprueba ('amplpnt','amplstub', 'pol', 50);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[x,s,y]=feval(point);
[f,c,g,A,H]=feval(fungrad,x,s,y);
f_ant=inf;
fout = fopen(name,'wt');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n=length(x);
m=length(y);
iter=0; tol=10e-6; norm_g=inf;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf( fout, ' Problema  ......................... %s    \n', name);
fprintf( fout, ' Numero de variables  .............. %3i   \n', n);
fprintf( fout, ' Numero de restricciones ........... %3i \n\n', m);
fprintf( fout, ' ITER         f                ||g||   \n\n');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while ( norm_g > tol && iter <= maxit && abs(f_ant-f)>10e-6)
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %{
    %%%% 1) SI AMPL, NO GC, NO LS
    p_N = -H\g;
    x = x + p_N;
    [f,c,g,A,H] = feval(fungrad,x,s,y);
    norm_g = norm(g);
    fprintf( fout, ' %3i   % 14.8e   %14.8e  \n', iter,    f,   norm_g );  
    iter = iter + 1;
    %}
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %{
    %%%% 2) SI AMPL, SI GC, NO LS
    p_N=GradienteConjugado2(H,-g,x,10e-12);
    x1   = x + p_N; 
    x=x1+x;
    [ f, c, g, A, H ] = feval( fungrad, x, s, y);   
    norm_g = norm(g);
    fprintf( 1, ' %3i   % 14.8e   %14.8e  \n', iter,    f,   norm_g );  
    iter = iter + 1;
    %}
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
   
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %%%% 3) SI AMPL, NO GC, SI LS
    %p_N = -H\g;
    %[alpha,x,f,g]=linesch_sw(x,f,g,p_N,fungrad,s,y,0.0001,0.9,2);
    %[f,c,g,A,H]=feval(fungrad,x,s,y);
    %norm_g = norm(g);
    %fprintf( 1, ' %3i   % 14.8e   %14.8e  \n', iter,    f,   norm_g );  
    %iter = iter + 1;
    %}
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
    
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    %%%% 4) SI AMPL, SI GC, SI LS
    p_N=GradienteConjugado2(H,-g,x,10e-6);
    p_N =( x + p_N); 
    if(p_N'*(-g) < 0)
       p_N=-g; 
    end
    if(norm(p_N)<tol || norm(g)<tol)
        break;
    end
       f_ant=f;
    [alpha,x,f,g]=linesch_sw(x,f,g,p_N,fungrad,s,y,0.0001,0.9,2);
    [f,c,g,A,H]=feval(fungrad,x,s,y);
    %alpha
    %x
    norm_g = norm(g);
    fprintf( fout, ' %3i   % 14.8e   %14.8e  \n', iter,    f,   norm_g );  
    iter = iter + 1;
    %}
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    
    
    
end


fclose(fout);

end 
