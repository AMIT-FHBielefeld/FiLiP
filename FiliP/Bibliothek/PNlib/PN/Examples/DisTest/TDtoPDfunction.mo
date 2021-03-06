within PNlib.PN.Examples.DisTest;

model TDtoPDfunction
  extends Modelica.Icons.Example;
  PNlib.PN.Components.PD P1(nInDis = 1, startTokens = 1) annotation(
    Placement(visible = true, transformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PNlib.PN.Components.TD T1(arcWeightOutDis = {P1.t}, nOutDis = 1) annotation(
    Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  inner PNlib.PN.Components.Settings settings annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(P1.inTransitionDis[1], T1.outPlacesDis[1]) annotation(
    Line(points = {{9.2, 0}, {9.2, 0}, {-15.2, 0}}));
  annotation(
    Diagram(coordinateSystem(extent = {{-40, -40}, {40, 40}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    experiment(StartTime = 0.0, StopTime = 5.0, Tolerance = 1e-6));
end TDtoPDfunction;
