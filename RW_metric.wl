(* ::Package:: *)

(* ::Input:: *)
(*ClearAll["Global`*"]*)


(* ::Input:: *)
(*(*defining coordinates*)*)
(*coords = {t, r, \[Theta], \[Phi]};*)


(* ::Input:: *)
(*(*Robertson Walker Metric*)*)
(*g = {{-1,0,0,0}, {0, a[t]^2/(1-k*r^2), 0, 0}, {0,0, a[t]^2*r^2, 0 }, {0,0, 0, a[t]^2*r^2*Sin[\[Theta]]^2}};*)


(* ::Input:: *)
(*gInv =Inverse[g];*)
(*	*)


(* ::Input:: *)
(*(*calculating Christoffel symbols Gamma^rho_mu_nu, *)*)
(*n = 4; (*dimensions*)*)
(*christoffel = Table[Sum[1/2 gInv[[\[Rho], \[Lambda]]](D[g[[\[Nu],  \[Lambda]]], coords[[\[Mu]]]]+ D[g[[\[Mu],  \[Lambda]]], coords[[\[Nu]]]]- D[g[[\[Mu], \[Nu]]], coords[[ \[Lambda]]]]), { \[Lambda],1, n}],{\[Rho],1, n}, {\[Mu], 1, n}, {\[Nu],1, n}];*)
(*christoffel = Simplify[christoffel]*)


(* ::Input:: *)
(*(*calculating Riemann curvature tensor R^rho_sigma_mu_nu*)*)


(* ::Input:: *)
(*riemann= Table[D[christoffel[[\[Rho], \[Nu], \[Sigma]]], coords[[\[Mu]]]]-D[christoffel[[\[Rho], \[Mu], \[Sigma]]], coords[[\[Nu]]]]+Sum[christoffel[[\[Lambda],\[Nu],\[Sigma]]]christoffel[[\[Rho], \[Lambda], \[Mu]]]-christoffel[[\[Lambda],\[Mu],\[Sigma]]]christoffel[[\[Rho], \[Lambda], \[Nu]]], {\[Lambda], 1, n}], {\[Rho],1, n},{\[Sigma],1, n}, {\[Mu], 1, n}, {\[Nu],1, n}];*)
(*riemann = Simplify[riemann] ;*)


(* ::Input:: *)
(*(*calculating Ricci tensor R_mu_nu*)*)
(*ricci = Table[Sum[riemann[[\[Rho], \[Mu], \[Rho], \[Nu]]], {\[Rho], 1, n}], {\[Mu], 1,n}, {\[Nu], 1, n}];*)
(*ricci = Simplify[ricci]*)


(* ::Input:: *)
(*(*calculating scalar curvature R*)*)
(*curvature = Sum[Sum[gInv[[\[Mu], \[Nu]]]ricci[[\[Mu], \[Nu]]], {\[Mu], 1, n}],{\[Nu], 1, n}];*)
(*curvature = Simplify[curvature]*)


(* ::Input:: *)
(*(*energy momentum tensor T^mu_nu*)*)
(*energyMomentumTensor = DiagonalMatrix[{-\[Rho][t],p[t], p[t], p[t]}];*)
(**)


(* ::Input:: *)
(*(*energy conservation equation, == 0. Recall index 1 is temporal.*)*)
(*Sum [D[energyMomentumTensor[[\[Mu], 1]], coords[[\[Mu]]]]+energyMomentumTensor[[1,1]]*christoffel[[\[Mu], 1,\[Mu]]]- Sum[energyMomentumTensor[[\[Mu],\[Lambda]]]*christoffel[[\[Lambda], 1,\[Mu]]], {\[Lambda], 1, n}], {\[Mu], 1, n}]*)
