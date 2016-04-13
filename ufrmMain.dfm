object frmPicSSConvert: TfrmPicSSConvert
  Left = 0
  Top = 0
  Caption = 'Picture Spreadsheet Converter'
  ClientHeight = 515
  ClientWidth = 778
  Color = clBtnFace
  Constraints.MinHeight = 540
  Constraints.MinWidth = 700
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 426
    Height = 73
    AutoSize = False
    Caption = 
      'This program takes a couple of spreadsheets with names and pictu' +
      're file pointers and generates web pages from templates for a pi' +
      'cture directory kiosk. It was built for the Beaverton SDA Church' +
      ' lobby picture board by David Cornelius.'
    WordWrap = True
  end
  object btnFindSpreadsheet: TSpeedButton
    Left = 408
    Top = 103
    Width = 26
    Height = 26
    Action = actFindLastNamesSpreadsheet
  end
  object SpeedButton2: TSpeedButton
    Left = 408
    Top = 296
    Width = 26
    Height = 26
    Action = actSetWebTemplateFolder
  end
  object SpeedButton3: TSpeedButton
    Left = 408
    Top = 375
    Width = 26
    Height = 26
    Action = actSetWebOutputFolder
  end
  object Label2: TLabel
    Left = 8
    Top = 327
    Width = 266
    Height = 16
    Caption = 'Searches for LastNames*.HTML and FirstNames*.HTML'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 406
    Width = 169
    Height = 16
    Caption = 'Like-named files will be over-written.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 134
    Width = 398
    Height = 16
    Caption = 
      'Expected Columns: Last Name, First Name(s), Optional Children, {' +
      'blank}, Picture File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 214
    Width = 416
    Height = 16
    Caption = 
      'Expected Columns: First Name, Last Name, First Name(s), Optional' +
      ' Children, Picture File'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 408
    Top = 183
    Width = 26
    Height = 26
    Action = actFindFirstNamesSpreadsheet
  end
  object edtLastNamesSpreadsheetFile: TLabeledEdit
    Left = 8
    Top = 104
    Width = 402
    Height = 24
    EditLabel.Width = 178
    EditLabel.Height = 16
    EditLabel.Caption = '"&Last Names" Spreadsheet file:'
    TabOrder = 0
  end
  object edtHTMLTemplateFolder: TLabeledEdit
    Left = 8
    Top = 297
    Width = 402
    Height = 24
    EditLabel.Width = 135
    EditLabel.Height = 16
    EditLabel.Caption = '&HTML Template Folder:'
    TabOrder = 1
  end
  object edtHTMLOutputFolder: TLabeledEdit
    Left = 8
    Top = 376
    Width = 402
    Height = 24
    EditLabel.Width = 182
    EditLabel.Height = 16
    EditLabel.Caption = '&Generated HTML Output Folder:'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 458
    Width = 177
    Height = 35
    Action = actGenerateWebPages
    Caption = '&Process Spreadsheets'
    TabOrder = 3
  end
  object cbTestMode: TCheckBox
    Left = 200
    Top = 467
    Width = 234
    Height = 17
    Caption = 'Random picture file names (KIDS###.JPG)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object edtFirstNamesSpreadsheetFile: TLabeledEdit
    Left = 8
    Top = 184
    Width = 402
    Height = 24
    EditLabel.Width = 180
    EditLabel.Height = 16
    EditLabel.Caption = '"&First Names" Spreadsheet file:'
    TabOrder = 5
  end
  object Panel1: TPanel
    Left = 448
    Top = 0
    Width = 330
    Height = 515
    Align = alRight
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel1'
    TabOrder = 6
    ExplicitTop = 8
    ExplicitWidth = 270
    object lbConvertLog: TListBox
      Left = 1
      Top = 375
      Width = 328
      Height = 139
      Align = alBottom
      TabOrder = 0
      ExplicitWidth = 268
    end
    object lbConvertStatus: TListBox
      Left = 1
      Top = 1
      Width = 328
      Height = 374
      Align = alClient
      TabOrder = 1
      ExplicitTop = 327
      ExplicitWidth = 268
      ExplicitHeight = 187
    end
  end
  object aclMain: TActionList
    Images = imlMain
    Left = 456
    Top = 64
    object actFindLastNamesSpreadsheet: TAction
      Hint = 'Find "Last Names" Spreadsheet'
      ImageIndex = 0
      OnExecute = actFindLastNamesSpreadsheetExecute
    end
    object actFindFirstNamesSpreadsheet: TAction
      Hint = 'Find "First Names" Spreadsheet'
      ImageIndex = 0
      OnExecute = actFindFirstNamesSpreadsheetExecute
    end
    object actSetRootPicFolder: TBrowseForFolder
      DialogCaption = 'Set Root Picture Folder'
      BrowseOptions = [bifBrowseForComputer, bifNewDialogStyle, bifNoNewFolderButton, bifUseNewUI, bifValidate]
      BrowseOptionsEx = []
      ImageIndex = 0
    end
    object actSetWebTemplateFolder: TBrowseForFolder
      DialogCaption = 'Select HTML Template Folder'
      BrowseOptions = [bifBrowseForComputer, bifNewDialogStyle, bifNoNewFolderButton, bifUseNewUI, bifValidate]
      BrowseOptionsEx = []
      ImageIndex = 0
      BeforeExecute = actSetWebTemplateFolderBeforeExecute
      OnAccept = actSetWebTemplateFolderAccept
    end
    object actSetWebOutputFolder: TBrowseForFolder
      DialogCaption = 'Select HTML Output Folder'
      BrowseOptions = [bifBrowseForComputer, bifNewDialogStyle, bifUseNewUI, bifValidate]
      BrowseOptionsEx = []
      ImageIndex = 0
      BeforeExecute = actSetWebOutputFolderBeforeExecute
      OnAccept = actSetWebOutputFolderAccept
    end
    object actGenerateWebPages: TAction
      Caption = '&Process Spreadsheets'
      ImageIndex = 1
      OnExecute = actGenerateWebPagesExecute
    end
  end
  object imlMain: TImageList
    Left = 456
    Top = 112
    Bitmap = {
      494C010102000800900010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000053B6E40037ABE4003BAE
      E60039ACE5003AADE6003AADE6003AADE6003AADE60039ACE5003CAEE60037AA
      E4004DB3E3000000000000000000FFFFFF000000000000000000478DE6005396
      E800000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003094B7001D98CA002CA1EF0030A3
      F6002FA2F40030A3F50030A3F50030A3F50030A3F5002FA2F40030A3F6002FA1
      ED00279CCD004CB3E100FFFFFF00FFFFFF000000000000000000A8CDF30029BE
      EC005AAAEC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D85A8002094C10039A7EE003FA8
      F8003DA7F7003EA8F7003EA8F7003EA8F7003DA7F7003EA8F6003CA6F70041A8
      F3003CABDC0038ABDF00FFFFFF00FFFFFF0000000000000000000000000093BD
      F10027FFFF0090A2E90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000217FA5002589AF0038ACD50044B1
      F30043B0F60043B1F40044B1F50044B1F60043B0F60044B1F50043AFF60048B3
      F30049B6E6003FB0E40085CDEF00FFFFFF00000000000000000000000000EFF3
      FC002BE7F7000CE3F800D8D6F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002480A6002184AA0026A0C90045BA
      F3004CBDF9004BBCF7004CBDF9004CBDF8004BBDF8004CBCF7004ABCF8004CBC
      F50052BDE90043B7EF004FB6E800FFFFFF000000000000000000000000000000
      000085A1E90024FFFF00259CE800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002582A7001E83AA001F9AC7004DBF
      F20052C5FC004FC3FB0050C4FB0050C4FB0050C4FC0050C3FB0050C4FC004FC2
      F70055BFE90049BDF40038AEE600FEFEFE000000000000000000000000000000
      0000DFE3F9002AD8F40008FFFF00479EED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002581A7001F83AB002197BF0055B8
      DD005CC9FA0059CBFE005ACBFE0059CCFF005ACBFE005ACAFC005CCBFE005AC8
      F9005AC3EE0051C3F6003FB1E700FFFFFF000000000000000000000000000000
      00000000000096AFEB0021FFFF0000D2FF007E93E20000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002786AC002985AC002187B0002AA4
      DB0051C9F90057CCFA0057C8F40058C8F40057CCFB0057CDFC0057CDFC0056CA
      FB0057C5FA004BC3F60037AEE500FFFFFF000000000000000000000000000000
      000000000000DDDAF60039B4EB000CFFFF0006A8F3007076D600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002585AC002986AD002186AF00189A
      D40020A5DF0023A2D9002A8FB8002890B80022A1D90022A4DE0023A3DC0022A4
      DD0022A3DE0038ACE00050B6E600FFFFFF000000000000000000000000009CD2
      F500008AE500008AE500129CEA0008DBFD0000DDFF0006A8F3006262CC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000368CB0002887AF002493BB001F96
      BF001D94BF001B93BE001B90B700329ABF0039A1C60037A1C50039A1C600349F
      C5004CABCB00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F5F6
      FD0076DFF60041FFFF0000D4FA0000D4FA0000D4FA0000CFFF0006A8F3008093
      DF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0057A2BF003099C0002092
      B9001D8FB5001D90B70049ABCC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EEF2FC009CF4F80057FFFF003DD8F80046D5F70034E8FF0023E3FF0006A8
      F300ACAFE7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0056A1BF003E95
      B6003C93B50053A0BE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FBFDFE000000000000000000000000000000
      000000000000C5D4F40098FFFF004CF0FE0053EAFE0068BCEE00699DE000B3CD
      F000888DDD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFF00A0CBF1006CFCFF0037E2FC0051DEFD007E9DE1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000DEE6F80090E0F7005EF4FF003CE1FF0054D0FA00849A
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000CDE1F7008AF0FE0049EAFF0036ECFF0047BE
      F1007CA3E1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FDFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FDFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000A6CAF0007DD2F5007AC7F20075C8
      F3006AA9E30092BEEA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008006CFFF000000000000C7FF00000000
      0000E3FF000000000000E1FF000000000000F1FF000000000000F0FF00000000
      0000F87F000000000000F83F000000000000E01F000000000000E00F00000000
      0000F007000000000002F807000000000000F81F000000000000FC0F00000000
      01F8FE07000000000000FF030000000000000000000000000000000000000000
      000000000000}
  end
  object ccRegistryLayoutSaver: TccRegistryLayoutSaver
    Left = 456
    Top = 208
  end
  object dlgOpenSpreadsheet: TOpenDialog
    Filter = 'Spreadsheet files|*.xls;*.xlsx|All files|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofNoChangeDir, ofPathMustExist, ofFileMustExist, ofNoTestFileCreate, ofEnableSizing]
    Title = 'Find the Picture Spreadsheet'
    Left = 552
    Top = 160
  end
end
