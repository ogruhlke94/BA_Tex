classdef frames < uint16
    %FRAMES enumeration der Referenzframes
    %%Die Referenzframes geben die verschiedenen Koordinatensysteme an.
    enumeration
        image(0),cam(1),body(2),world(3),vrml(4)
    end
end