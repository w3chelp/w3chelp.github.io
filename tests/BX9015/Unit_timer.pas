unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton; //���ж�ʱ��
    Button2: TButton; //
    Label1: TLabel;
    Label2: TLabel; //������ݵ�Label
    Button3: TButton; //����Ϣ�򰴼�
    Button4: TButton; //���ļ�ѡ��Ի��򰴼�
    Timer1: TTimer; //��ʱ������
    OpenDialog1: TOpenDialog; //file open �Ի���
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   Label2.caption :=  Label2.caption + '|';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label2.caption := '';
  Timer1.Interval := 1000;
  Timer1.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Timer1.Enabled := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  showMessage('��Ϣ��');
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  OpenDialog1.Execute;
end;

end.
