# d2webgraph
Este repositório contém um conjunto de classes Delphi desenvolvido para gerar gráficos no formato HTML. Inicialmente criado para um projeto pessoal em D2Bridge, um framework que permite compilar projetos VCL ou FireMonkey para a Web com o mesmo código.

# Instalação
Instalação usando o boss
```
boss install https://github.com/JoRodriguesDev/d2webgraph
```

# Declaração
Para utilizar o d2webgraph você deve adicionar as uses:
```pascal
  uModel.Charts.Interfaces,
  uModel.Charts.Factory;
```

Declarar no head do html
```html
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
```

# Tipos
```
Bootstrap 5 Doughnut Chart
Bootstrap 5 Bar Chart
Bootstrap 5 Line Chart
Bootstrap 5 Pie Chart
Bootstrap 5 Polar Area Chart
Bootstrap 5 Radar Chart
```

# Como usar
```pascal
  var HTML := TModelChartFactory.New
                                .Bar
                                   .AddChartDataSet('2023')
                                   .Opacity(0.5)
                                     .AddChartData('Janeiro', 50, primary, primary)
                                     .AddChartData('Fevereiro', 45, primary, primary)
                                     .AddChartData('Março', 70, primary, primary)
                                     .AddChartData('Abril', 75, primary, primary)
                                     .AddChartData('Maio', 90, primary, primary)
                                     .AddChartData('Junho', 30, primary, primary)
                                   .&end
                                   .AddChartDataSet('2024')
                                   .Opacity(0.8)
                                     .AddChartData('Janeiro', 55, success, success)
                                     .AddChartData('Fevereiro', 50, success, success)
                                     .AddChartData('Março', 82, success, success)
                                     .AddChartData('Abril', 79, success, success)
                                     .AddChartData('Maio', 80, success, success)
                                     .AddChartData('Junho', 42, success, success)
                                   .&end
                                   .Generate;
```
