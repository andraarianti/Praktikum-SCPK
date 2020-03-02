% Nama : Berliana Andra Arianti
% NIM : 123180065

subplot(2,2,1)
    x=-3:0.1:3; 
    y=x.^3;
    plot (x,y)
    xlabel('Sumbu X'), ylabel('Sumbu Y')
    title ('Kurva Y=X^3')
    grid on

subplot(2,2,2)
  t = linspace(-pi,pi, 350);  
    X = t .* sin( pi * sin(t)./t);  
    Y = -abs(t) .* cos( pi * sin(t)./t);  
    plot(X,Y);  
    fill(X, Y, 'r');  
    set(gcf, 'Position', get(0,'Screensize'));  
    title('Love', 'FontSize', 28);  
   title ('love');

subplot(2,2,3)
    x=linspace(-10,5,2000);
    y=linspace(-10,5,2000);
    [xx,yy]=meshgrid(x,y);
    r=sqrt (xx.^2+yy.^2)+eps;
    z=sin(r)./r;
    mesh(x,y,z);
    xlabel('x'), ylabel('y'), zlabel('z');
    title ('3D');   
   
subplot(2,2,4)
    x = linspace(0,2*pi,100); 
    y1 = sin (x); 
    y2 = cos (x); 
    plot(y1, y2); 
    axis square; 
    title ('lingkaran');
    


