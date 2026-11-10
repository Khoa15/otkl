% 6.061/6.690 Spring Term 2011
% Problem 7.1: Simple-Minded Load Flow Example
% First, impedances
Z1=.005+j*.1;
Z2=.01+j*.1;
Z3=.005+j*.15;
Z4=.001+j*.05;
Z5=.005+j*.1;
Z6=.005+j*.2;
Z7=.01+j*.3;
Z8=.005+j*.05;
%
%  Enter the node-incidence Matrix Here: It should have as
%  many rows as there are buses and as many columns as
%  there are lines
NI=[];
% This is the vector of "known" voltage magnitudes
VNM = [0 0 1 1 0 0]';
% And the vector of known voltage angles
VNA = [0 0 0 0 0 0]';
% and this is the "key" to which are actually known
KNM = [0 0 1 1 0 0]';
KNA = [0 0 0 1 0 0]';
% and which are to be manipulated by the system
KUM = 1 - KNM;
KUA = 1 - KNA;
% Here are the known loads (positive is INTO network
% Use zeros for unknowns
P=[2 -2 1 0 -1 0]';
Q=[0 -.5 0 0 -.5 0]';
% and here are the corresponding vectors to indicate
% which elements should be checked in error checking
PC = [1 1 1 0 1 1]';
QC = [1 1 0 0 1 1]';
Check = KNM + KNA + PC + QC;
% Unknown P and Q vectors
PU = 1 - PC;
QU = 1 - QC;
fprintf('Here is the line admittance matrix:\n');
Y=[1/Z1 0 0 0 0 0 0 0;
    0 1/Z2  0 0 0 0 0 0;
    0 0 1/Z3 0 0 0 0 0;
    0 0 0 1/Z4 0 0 0 0;
    0 0 0 0 1/Z5 0 0 0;
    0 0 0 0 0 1/Z6 0 0;
    0 0 0 0 0 0 1/Z7 0;
    0 0 0 0 0 0 0 1/Z8]
% Construct Node-Admittance Matrix
fprintf('And here is the bus admittance matrix\n')
YN=NI*Y*NI'
% Now: here are some starting voltage magnitudes and angles
VM = [1 1 1 1 1 1]';
VA = [.0965 .146 .00713 .0261 0 0]';
% Here starts a loop
Error = 1;
Tol=1e-16;

N = length(VNM);
 % Construct a candidate voltage from what we have so far
VMAG = VNM .* KNM + VM .* KUM;
VANG = VNA .* KNA + VA .* KUA;
V = VMAG .* exp(j .* VANG);

% and calculate power to start
 I = (YN*V);
 PI = real(V .* conj(I));
 QI = imag(V .* conj(I));
%pause
while(Error>Tol);
 for i=1:N,		% Run through all of the buses
                        % What we do depends on what bus!
   if (KUM(i) == 1) & (KUA(i) == 1),	% don't know voltage magnitude or angle
      pvc= (P(i)-j*Q(i))/conj(V(i));
      for n=1:N,
        if n ~=i, pvc = pvc - (YN(i,n) * V(n)); end
      end
      V(i) = pvc/YN(i,i);

   elseif (KUM(i) == 0) & (KUA(i) == 1), % know magnitude but not angle
      % first must generate an estimate for Q
      Qn = imag(V(i) * conj(YN(i,:)*V));
      pvc= (P(i)-j*Qn)/conj(V(i));
      for n=1:N,
        if n ~=i, pvc = pvc - (YN(i,n) * V(n));  end
      end
      pv=pvc/YN(i,i);
      V(i) = VNM(i) * exp(j*angle(pv));
   end		% probably should have more cases
 end		% one shot through voltage list: check error
      
 % Now calculate currents indicated by this voltage expression
 I = (YN*V);
 % For error checking purposes, compute indicated power
 PI = real(V .* conj(I));
 QI = imag(V .* conj(I));
 % Now we find out how close we are to desired conditions
 PERR = (P-PI) .* PC;
 QERR = (Q-QI) .* QC;
 
Error = sum(abs(PERR) .^2 + abs(QERR) .^2);
end
fprintf('Here are the voltages\n')
V
fprintf('Magnitudes\n')
abs(V)
fprintf('Real Power\n')
PI
fprintf('Reactive Power\n')
QI
fprintf('Line Voltages are\n')
Vline = NI'*V
fprintf('Line Currents are\n')
Iline = Y*Vline
