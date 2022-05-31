set serveroutput on
DECLARE

v_numero number(4):=&numero;        
v_iterador number;           
v_resultado number;
v_veredicto varchar(50);    

BEGIN

v_iterador := 2; 
v_resultado := 1;
  
  for v_iterador in 2..v_numero/2
    loop
        if mod(v_numero, v_iterador) = 0
        then
            v_resultado := 0;
            exit;
        end if;
    end loop;
   
    if v_resultado = 1
    then
        v_veredicto:=('El numero ingresado es primo');
    else
        v_veredicto:=('El numero ingresado no es primo');
    end if;
    DBMS_OUTPUT.PUT_LINE(v_veredicto);

END;         
 /
