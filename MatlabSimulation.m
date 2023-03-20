




zeta = .522728; 
f0 = 5650; % break frequency
f = 200:1:1000000; % sweep frequency

numerator = .7943; 
denominator = (1-(f/f0).^2).^2+(2*zeta*f/f0).^2;

h = numerator./denominator;

h_db = 10*log10(h);


%theoretical 
semilogx(f,h_db);
hold on

%simulator
%semilogx(fre)

title("Simulation")
ylabel('|H(f)|')
xlabel('Frequency')