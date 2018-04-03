unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unit1, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AbstractFactory: TAbstractFactory;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  AbstractFactory:= TConcreteFactory2.Create;
  label1.Caption:=  AbstractFactory.printProductA;
  label2.Caption:=  AbstractFactory.printProductB;
  AbstractFactory.Destroy;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  AbstractFactory:= TConcreteFactory1.Create;
  label1.Caption:=  AbstractFactory.printProductA;
  label2.Caption:=  AbstractFactory.printProductB;
  AbstractFactory.Destroy;
end;

end.
