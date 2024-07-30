unit uModel.Charts.Interfaces;

interface

uses
  System.Classes;

type
  EnumColors = (none, blue, indigo, purple, pink ,red ,orange, yellow, green, teal, cyan, black, white, gray, graydark, gray100, gray200, gray300, gray400, gray500, gray600, gray700, gray800, gray900, primary, secondary, success, info, warning, danger, light, dark, transparent);

type
  iModelChartData = interface;
  iModelChartDataSet = interface;
  iModelChart = interface;

  iModelChartData = interface
    ['{8E128234-A31F-422D-9001-00D12883C4E5}']
    function LabelName(AValue: string): iModelChartData; overload;
    function Value(AValue: Variant): iModelChartData; overload;
    function BackgroundColor(AValue: EnumColors): iModelChartData; overload;
    function BorderColor(AValue: EnumColors): iModelChartData; overload;
    function PointBackgroundColor(AValue: EnumColors): iModelChartData; overload;
    function PointBorderColor(AValue: EnumColors): iModelChartData; overload;
    function PointHoverBackgroundColor(AValue: EnumColors): iModelChartData; overload;
    function PointHoverBorderColor(AValue: EnumColors): iModelChartData; overload;

    function LabelName: string; overload;
    function Value: Variant; overload;
    function BackgroundColor: EnumColors; overload;
    function BorderColor: EnumColors; overload;
    function PointBackgroundColor: EnumColors; overload;
    function PointBorderColor: EnumColors; overload;
    function PointHoverBackgroundColor: EnumColors; overload;
    function PointHoverBorderColor: EnumColors; overload;
  end;

  iModelChartDataSet = interface
    ['{A1234567-89AB-CDEF-0123-456789ABCDEF}']
    function GenerateLabels: string;
    function AddChartData(ALabel: string; AValue: Variant; ABackgroundColor, ABorderColor: EnumColors; APointBackgroundColor: EnumColors = None; APointBorderColor: EnumColors = None; APointHoverBackgroundColor: EnumColors = None; APointHoverBorderColor: EnumColors = None): iModelChartDataSet;
    function LabelName: string; overload;
    function LabelName(AValue: string): iModelChartDataSet; overload;
    function Opacity(AValue: Double): iModelChartDataSet; overload;
    function Generate: string;
    function Opacity: Double; overload;
    function RecordCount: integer;
    function &End: iModelChart;
  end;

  iModelChart = interface
    ['{C9BD1133-7A8F-42A9-A2C9-950251F8177A}']
    function AddChartDataSet(ALabel: string): iModelChartDataSet;
    function LabelName: string; overload;
    function LabelName(AValue: string): iModelChart; overload;
    function ClearDataSets: iModelChart;
    function Height(AValue: string): iModelChart;
    function Width(AValue: string): iModelChart;
    function Generate: string;
  end;

  iModelChartFactory = interface
    ['{AABB99D5-B5A5-4F99-B2AF-332E27B66172}']
    function Bar: iModelChart;
    function Line: iModelChart;
    function Pie: iModelChart;
    function Doughnut: iModelChart;
    function PolarArea: iModelChart;
    function Radar: iModelChart;
  end;

implementation

end.

