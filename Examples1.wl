xmin = -5;
xmax = 5;

(* Harmonic Oscillator *)

V1 = 1/2*100*#^2 &;
Plot[V1[x], {x, -5, 5}]

NSchrodinger[1, 1, V1, 1000, xmin, xmax, 10];

ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], eigV},
              PlotRange -> All, PlotTheme -> "Scientific", PlotLegends -> "\[Psi](x)", PlotLabel -> "E = " <> ToString[eigE]]
ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], Conjugate[eigV]*eigV},
              PlotRange -> All, PlotTheme -> "Scientific",PlotLegends -> "\!\(\*TemplateBox[{\"\[Psi]\",\"\[Psi]\"},\n\"BraKet\"]\)"]
              

(* Woods-Saxon Potential *)

V2 = -1/(1 + Exp[(Abs[#] - 6.2)/0.5]) &;
Plot[V2[x], {x, -5, 5}]

NSchrodinger[1, 1, V2, 1000, xmin, xmax, 10]

ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], eigV},
              PlotRange -> All, PlotTheme -> "Scientific", PlotLegends -> "\[Psi](x)", PlotLabel -> "E = " <> ToString[eigE]]
ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], Conjugate[eigV]*eigV},
              PlotRange -> All, PlotTheme -> "Scientific", PlotLegends -> "\!\(\*TemplateBox[{\"\[Psi]\",\"\[Psi]\"},\n\"BraKet\"]\)"]
              

(* Cornell Potential *)

rmin = 0.01;
rmax = 20;

V = 0.491*#1 - 0.472/#1 + (#2 (#2 + 1))/(2 #1^2) &;
Plot[V[r, 3], {r, 0, 10}]

NSchrodinger[1, 1, V[#, 0] &, 1000, rmin, rmax, 10]

ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], eigV},
              PlotRange -> All, PlotTheme -> "Scientific", PlotLegends -> "\[Psi](x)", PlotLabel -> "E = " <> ToString[eigE]]
ListLinePlot[Transpose@{Table[i, {i, xmin, xmax, (xmax - xmin)/(1000 - 1)}], Conjugate[eigV]*eigV},
              PlotRange -> All, PlotTheme -> "Scientific", PlotLegends -> "\!\(\*TemplateBox[{\"\[Psi]\",\"\[Psi]\"},\n\"BraKet\"]\)"]
