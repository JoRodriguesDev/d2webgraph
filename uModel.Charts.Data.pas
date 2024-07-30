unit uModel.Charts.Data;

interface

uses
  uModel.Charts.Interfaces;

type
  TModelChartData = class(TInterfacedObject, iModelChartData)
  private
    FLabelName: string;
    FValue: Variant;
    FBackgroundColor: EnumColors;
    FBorderColor: EnumColors;
    FPointBackgroundColor: EnumColors;
    FPointBorderColor: EnumColors;
    FPointHoverBackgroundColor: EnumColors;
    FPointHoverBorderColor: EnumColors;
  public
    constructor Create(const ALabel: string; AValue: Variant; ABackgroundColor, ABorderColor, APointBackgroundColor, APointBorderColor, APointHoverBackgroundColor, APointHoverBorderColor: EnumColors);
    class function New(const ALabel: string; AValue: Variant; ABackgroundColor, ABorderColor, APointBackgroundColor, APointBorderColor, APointHoverBackgroundColor, APointHoverBorderColor: EnumColors): iModelChartData;
    destructor Destroy; override;
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

implementation

{ TChartData }

function TModelChartData.BorderColor: EnumColors;
begin
  result := FBorderColor;
end;

function TModelChartData.BorderColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FBorderColor := AValue;
end;

function TModelChartData.BackgroundColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FBackgroundColor := AValue;
end;

function TModelChartData.BackgroundColor: EnumColors;
begin
  Result := FBackgroundColor;
end;

constructor TModelChartData.Create(const ALabel: string; AValue: Variant; ABackgroundColor, ABorderColor, APointBackgroundColor, APointBorderColor, APointHoverBackgroundColor, APointHoverBorderColor: EnumColors);
begin
  FLabelName                  := ALabel;
  FValue                      := AValue;
  FBackgroundColor            := ABackgroundColor;
  FBorderColor                := ABorderColor;
  FPointBackgroundColor       := APointBackgroundColor;
  FPointBorderColor           := APointBorderColor;
  FPointHoverBackgroundColor  := APointHoverBackgroundColor;
  FPointHoverBorderColor      := APointHoverBorderColor;
end;

destructor TModelChartData.Destroy;
begin

  inherited;
end;

function TModelChartData.LabelName: string;
begin
  Result := FLabelName;
end;

function TModelChartData.LabelName(AValue: string): iModelChartData;
begin
  result := Self;
  FLabelName := AValue;
end;

class function TModelChartData.New(const ALabel: string; AValue: Variant; ABackgroundColor, ABorderColor, APointBackgroundColor, APointBorderColor, APointHoverBackgroundColor, APointHoverBorderColor: EnumColors): iModelChartData;
begin
  result := self.Create(ALabel, AValue, ABackgroundColor, ABorderColor, APointBackgroundColor, APointBorderColor, APointHoverBackgroundColor, APointHoverBorderColor);
end;

function TModelChartData.PointBackgroundColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FPointBackgroundColor := AValue;
end;

function TModelChartData.PointBackgroundColor: EnumColors;
begin
  Result := FPointBackgroundColor;
end;

function TModelChartData.PointBorderColor: EnumColors;
begin
  Result := FPointBorderColor;
end;

function TModelChartData.PointBorderColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FPointBorderColor := AValue;
end;

function TModelChartData.PointHoverBackgroundColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FPointHoverBackgroundColor := AValue;
end;

function TModelChartData.PointHoverBackgroundColor: EnumColors;
begin
  Result := FPointHoverBackgroundColor;
end;

function TModelChartData.PointHoverBorderColor(AValue: EnumColors): iModelChartData;
begin
  result := Self;
  FPointHoverBorderColor := AValue;
end;

function TModelChartData.PointHoverBorderColor: EnumColors;
begin
  Result := FPointHoverBorderColor;
end;

function TModelChartData.Value(AValue: Variant): iModelChartData;
begin
  result := Self;
  FValue := AVAlue;
end;

function TModelChartData.Value: Variant;
begin
  result := FValue;
end;

end.
