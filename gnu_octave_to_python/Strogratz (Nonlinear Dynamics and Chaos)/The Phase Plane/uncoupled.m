function uncoupled
  x = -5:1:5;
  [X,Y] = meshgrid(x);
  Fx = 0.0001 * X;
  Fy = -Y;
  figure(1);
  quiver(X,Y,Fx,Fy);
  grid on;
  title('Play with the slider!');
  
  hslider = uicontrol (                  
         'style', 'slider',                
         'Units', 'normalized',            
         'position', [0.1, 0.1, 0.8, 0.1], 
         'min', -2,                        
         'max', 2,                        
         'value', 0,                      
         'callback', {@plotstuff}          
       );
endfunction

function plotstuff (h, event)
  a = get (h, 'value');
  x = -5:1:5;
  [X,Y] = meshgrid(x);
  Fx = a * X;
  Fy = -Y;
  figure(1);
  quiver(X,Y,Fx,Fy);
  grid on;
  title('Play with the slider!');
end