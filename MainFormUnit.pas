unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TMainForm = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    lblTitle: TLabel;
    pnlContent: TPanel;
    grpPhoneNumber: TGroupBox;
    lblPhoneNumber: TLabel;
    edtPhoneNumber: TMaskEdit;
    grpDate: TGroupBox;
    lblDate: TLabel;
    edtDate: TMaskEdit;
    grpTime: TGroupBox;
    lblTime: TLabel;
    edtTime: TMaskEdit;
    grpCPF: TGroupBox;
    lblCPF: TLabel;
    edtCPF: TMaskEdit;
    grpPassword: TGroupBox;
    lblPassword: TLabel;
    edtPassword: TMaskEdit;
    grpNumbers: TGroupBox;
    lblNumbers: TLabel;
    edtNumbers: TMaskEdit;
    pnlButtons: TPanel;
    btnGetValues: TButton;
    btnClear: TButton;
    btnClose: TButton;
    mmoResult: TMemo;
    lblResult: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnGetValuesClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure edtPhoneNumberChange(Sender: TObject);
  private
    { Private declarations }
    procedure SetupMaskEdits;
    procedure DisplayValues;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  SetupMaskEdits;
  mmoResult.Clear;
end;

procedure TMainForm.SetupMaskEdits;
begin
  // Phone Number: (123) 456-7890
  edtPhoneNumber.EditMask := '(###) ###-####;1;_';
  edtPhoneNumber.Text := '(   )    -    ';
  edtPhoneNumber.MaxLength := 14;
  
  // Date: DD/MM/YYYY
  edtDate.EditMask := '!99/99/0000;1;_';
  edtDate.Text := '__/__/____';
  edtDate.MaxLength := 10;
  
  // Time: HH:MM:SS
  edtTime.EditMask := '!99:99:99;1;_';
  edtTime.Text := '__:__:__';
  edtTime.MaxLength := 8;
  
  // CPF (Brazilian ID): 999.999.999-99
  edtCPF.EditMask := '!999.999.999-99;1;_';
  edtCPF.Text := '___.___.___.__._.._';
  edtCPF.MaxLength := 14;
  
  // Password field
  edtPassword.EditMask := '!AAAAAAAAAA;1;_';
  edtPassword.PasswordChar := '*';
  edtPassword.Text := '__________';
  edtPassword.MaxLength := 10;
  
  // Numbers only (0-999999)
  edtNumbers.EditMask := '!999999;1;_';
  edtNumbers.Text := '______';
  edtNumbers.MaxLength := 6;
end;

procedure TMainForm.edtPhoneNumberChange(Sender: TObject);
begin
  // Optional: Real-time validation example
end;

procedure TMainForm.btnGetValuesClick(Sender: TObject);
begin
  DisplayValues;
end;

procedure TMainForm.DisplayValues;
var
  sOutput: String;
begin
  mmoResult.Clear;
  
  sOutput := 'Captured Values:' + #13#10;
  sOutput := sOutput + '==================' + #13#10#13#10;
  
  sOutput := sOutput + 'Phone Number: ' + edtPhoneNumber.Text + #13#10;
  sOutput := sOutput + 'Date: ' + edtDate.Text + #13#10;
  sOutput := sOutput + 'Time: ' + edtTime.Text + #13#10;
  sOutput := sOutput + 'CPF: ' + edtCPF.Text + #13#10;
  sOutput := sOutput + 'Password: ' + StringOfChar('*', Length(edtPassword.Text)) + #13#10;
  sOutput := sOutput + 'Numbers: ' + edtNumbers.Text + #13#10;
  
  sOutput := sOutput + #13#10 + '==================' + #13#10#13#10;
  sOutput := sOutput + 'Nilai Tanpa Format:' + #13#10;
  sOutput := sOutput + '==================' + #13#10#13#10;
  
  try
    sOutput := sOutput + 'Phone: ' + edtPhoneNumber.EditText + #13#10;
  except
    sOutput := sOutput + 'Phone: [Invalid]' + #13#10;
  end;
  
  try
    sOutput := sOutput + 'Date: ' + edtDate.EditText + #13#10;
  except
    sOutput := sOutput + 'Date: [Invalid]' + #13#10;
  end;
  
  try
    sOutput := sOutput + 'CPF: ' + edtCPF.EditText + #13#10;
  except
    sOutput := sOutput + 'CPF: [Invalid]' + #13#10;
  end;
  
  mmoResult.Text := sOutput;
end;

procedure TMainForm.btnClearClick(Sender: TObject);
begin
  edtPhoneNumber.Clear;
  edtDate.Clear;
  edtTime.Clear;
  edtCPF.Clear;
  edtPassword.Clear;
  edtNumbers.Clear;
  mmoResult.Clear;
  edtPhoneNumber.SetFocus;
end;

procedure TMainForm.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.