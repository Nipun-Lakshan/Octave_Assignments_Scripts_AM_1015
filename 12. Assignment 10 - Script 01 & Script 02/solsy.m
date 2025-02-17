function solsy(x10, x20)
  close
  t0 = 0;
  tf = 200;
  trange = [t0:tf];
  [t, x] = ode45('F', trange, [x10, x20]);
  disp('Time Foxes Rabbits]')
  disp([t, x(:,1), x(:,2)])
  figure;
  plot(t, x(:,1), t, x(:,2))
  xlabel('Time')
  ylabel('Population')
  title('Population over Time')
  legend('Foxes', 'Rabbits')
  figure;
  plot(x(:,1), x(:,2))
  xlabel('Foxes Population')
  ylabel('Rabbits Population')
  title('Trajectory')
endfunction
