m117 zero protocol
g28 z; send z axis to switch
g92 z180; set z as 180 mm 
g28 x; send x to switch
g92 x1250; set x as 1250 mm
g28 y; send y to switch
g92 y0; set y as 0 mm
g92 a0; set a as 0 no switch yet

m117 open incubator
g0 z180 f3000; posicao raiz incubadora
G0 y760; align with incubator root position
g0 x790; align with incubator root position
g0 y920; vai para frente do puxador
g0 x810; encosta no puxador
g0 x1230; abre totalmente a gaveta
g0 x1220;

m117 get PD-lid in incub pos 1.1
g0 x918.1 y881.8 z180 f2500; vai para posicao em cima da lid 
g0 z69; abaixa pipeta e pega a lid
g0 z180; sobe de volta

m117 put PD-lid on lid holder
g0 x740 y1157.4  z180 f1800; go to top of holder
g0 z140; go down to release lid
g0 a21
g0 a0
g0 z180 f2500; go back to top

m117 get PD-base incub pos 1.1
g0 z180 f2500
g0 x 887.6 y883.3 ; go top position
g0 z53; go down
g0 z59; g0 up to smoth slide
g0 x857.6; slide x axis 30mm back to exist
g0 z53 f3000
g0 z180 f1800; go back up

m117 put PD-base in Trans-reg 
g0 z180 f1800; go up just to check hight
g0 y760; move in y to align
g0 x1220; move in x axis to align 
g0 y38; go to y pos  
g0 x1070;go to x pos
g0 z46; go down
g0 a21; eject
g0 a0; reset eject
g0 z180; go back up

m117 get PD-base from Trans-reg
g0 x1070 y38 z180 f1800; go top pos
g0 z40; go down to get
g0 z180; go back up
g0 x1220; move x to align exit
g0 y760; align y inc root pos
g0 x790; align x inc root pos

m117 put PD-base incub pos 1.1
g0 x857.6 y883 z180 f1800; go on top 
g0 z58; go down
g0 x887.6 y883.3; move in 30 mm
g0 a21; eject
g0 a0; reset eject
g0 z180; go back up

m117 get PD-lid from holder
g0 x740 y1157.4 z180 f2500
g0 z136
g0 z180 f1800

m117 put PD-lid back in incub p 1.1
g0 x918.1 y881.8g0  z180 f1800; go pos on top
g0 z74; down to 80
g0 a21; eject
g0 a0; retract ejector
g0 z180 f2500; go back to jog hight

m117 close incubator
g0 x790 f3000; aling x to incub root pos
g0 y760; aling y to incub root pos
g0 x1250 f2500; aling x to handle
g0 y920 ; aling y to handle
g0 x820; pull incubator close
g0 x830; clear handle
g0 y900; clear handle y
g0 x790 y760 z180; volta para posicao raiz