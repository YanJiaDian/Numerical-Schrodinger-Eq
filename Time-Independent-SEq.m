NSchrodinger[hbar_, m_, f_, n_, xmin_, xmax_, quantumnumber_] := Module[
  {
    x = Table[i, {i, xmin, xmax, (xmax - (xmin))/(n - 1)}]
    },
  Module[
    {
     d = DiagonalMatrix[Table[1, {i, 1, n - 1}], 1] + DiagonalMatrix[Table[-1, {i, 1, n - 1}], -1],
     dd = (DiagonalMatrix[Table[1, {i, 1, n - 1}], 1] + DiagonalMatrix[Table[1, {i, 1, n - 1}], -1] + DiagonalMatrix[Table[-2, {i, 1, n}]])/(x[[2]] - x[[1]])^2
     },
    Module[
      {
      h = -(hbar^2/(2 * m)) dd + DiagonalMatrix@Table[f[x], {x, xmin, xmax, (xmax - (xmin))/(n - 1)}]
      },
     H = h;
     eigE = Sort[Eigenvalues[h]][[quantumnumber]];
     eigV = Eigenvectors[h][[n - quantumnumber + 1]];
     ]
    ]
   ];
