object Form1: TForm1
  Left = 289
  Top = 171
  Width = 348
  Height = 460
  Align = alCustom
  Caption = 'Form1'
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 376
    Width = 129
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1087#1072#1087#1082#1080':'
  end
  object FileListBox1: TFileListBox
    Left = 16
    Top = 144
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 16
    Top = 40
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object DriveComboBox1: TDriveComboBox
    Left = 16
    Top = 16
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 16
    Top = 248
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 16
    Top = 280
    Width = 145
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 312
    Width = 145
    Height = 25
    Caption = #1050#1091#1076#1072' '#1089#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 16
    Top = 344
    Width = 145
    Height = 25
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 168
    Top = 280
    Width = 145
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 168
    Top = 312
    Width = 145
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 168
    Top = 344
    Width = 145
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 168
    Top = 376
    Width = 145
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 10
    OnClick = Button7Click
  end
  object FileListBox2: TFileListBox
    Left = 168
    Top = 144
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 11
  end
  object DirectoryListBox2: TDirectoryListBox
    Left = 168
    Top = 40
    Width = 145
    Height = 97
    FileList = FileListBox2
    ItemHeight = 16
    TabOrder = 12
  end
  object FilterComboBox2: TFilterComboBox
    Left = 168
    Top = 248
    Width = 145
    Height = 21
    FileList = FileListBox2
    TabOrder = 13
  end
  object DriveComboBox2: TDriveComboBox
    Left = 168
    Top = 16
    Width = 145
    Height = 19
    DirList = DirectoryListBox2
    TabOrder = 14
  end
  object Edit1: TEdit
    Left = 16
    Top = 392
    Width = 145
    Height = 21
    TabOrder = 15
    Text = 'Edit1'
  end
end
