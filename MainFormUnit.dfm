object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'TMaskEdit Demo - Contoh Penggunaan'
  ClientHeight = 700
  ClientWidth = 900
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 900
    Height = 700
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 900
      Height = 60
      Align = alTop
      BevelOuter = bvNone
      Color = 13158600
      ParentBackground = False
      TabOrder = 0
      object lblTitle: TLabel
        Left = 20
        Top = 15
        Width = 400
        Height = 30
        Caption = 'TMaskEdit Component - Contoh Penggunaan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlContent: TPanel
      Left = 0
      Top = 60
      Width = 900
      Height = 580
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object grpPhoneNumber: TGroupBox
        Left = 20
        Top = 20
        Width = 420
        Height = 80
        Caption = 'Nomor Telepon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblPhoneNumber: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtPhoneNumber: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '(###) ###-####;1;_'
          MaxLength = 14
          TabOrder = 0
          Text = '(   )    -    '
          OnChange = edtPhoneNumberChange
        end
      end
      object grpDate: TGroupBox
        Left = 460
        Top = 20
        Width = 420
        Height = 80
        Caption = 'Tanggal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lblDate: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtDate: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '!99/99/0000;1;_'
          MaxLength = 10
          TabOrder = 0
          Text = '__/__/____'
        end
      end
      object grpTime: TGroupBox
        Left = 20
        Top = 110
        Width = 420
        Height = 80
        Caption = 'Waktu'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object lblTime: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtTime: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '!99:99:99;1;_'
          MaxLength = 8
          TabOrder = 0
          Text = '__:__:__'
        end
      end
      object grpCPF: TGroupBox
        Left = 460
        Top = 110
        Width = 420
        Height = 80
        Caption = 'CPF Indonesia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lblCPF: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtCPF: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '!999.999.999-99;1;_'
          MaxLength = 14
          TabOrder = 0
          Text = '___.___.___.__._.._'
        end
      end
      object grpPassword: TGroupBox
        Left = 20
        Top = 200
        Width = 420
        Height = 80
        Caption = 'Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object lblPassword: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtPassword: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '!AAAAAAAAAA;1;_'
          MaxLength = 10
          PasswordChar = '*'
          TabOrder = 0
          Text = '__________'
        end
      end
      object grpNumbers: TGroupBox
        Left = 460
        Top = 200
        Width = 420
        Height = 80
        Caption = 'Angka Saja (0-999999)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object lblNumbers: TLabel
          Left = 20
          Top = 25
          Width = 69
          Height = 13
          Caption = 'Format Mask:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edtNumbers: TMaskEdit
          Left = 20
          Top = 40
          Width = 380
          Height = 25
          EditMask = '!999999;1;_'
          MaxLength = 6
          TabOrder = 0
          Text = '______'
        end
      end
      object lblResult: TLabel
        Left = 20
        Top = 300
        Width = 45
        Height = 13
        Caption = 'Output:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
      end
      object mmoResult: TMemo
        Left = 20
        Top = 320
        Width = 860
        Height = 220
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
    end
    object pnlButtons: TPanel
      Left = 0
      Top = 640
      Width = 900
      Height = 60
      Align = alBottom
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      object btnGetValues: TButton
        Left = 20
        Top = 15
        Width = 120
        Height = 30
        Caption = 'Tampilkan Nilai'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnGetValuesClick
      end
      object btnClear: TButton
        Left = 160
        Top = 15
        Width = 120
        Height = 30
        Caption = 'Bersihkan Semua'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = btnClearClick
      end
      object btnClose: TButton
        Left = 760
        Top = 15
        Width = 120
        Height = 30
        Caption = 'Tutup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnCloseClick
      end
    end
  end
end