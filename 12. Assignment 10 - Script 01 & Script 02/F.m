function xp = F(t, x)
  xp = zeros(2, 1);
  xp(1) = -0.08 * x(1) + 0.0001 * x(1) * x(2);
  xp(2) = 0.04 * x(2) - 0.0003 * x(1) * x(2);
endfunction
