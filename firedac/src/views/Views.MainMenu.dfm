object FrmMainMenu: TFrmMainMenu
  Left = 0
  Top = 0
  Caption = 'FireDAC - Universidade Delphi'
  ClientHeight = 761
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContent: TPanel
    Left = 200
    Top = 50
    Width = 784
    Height = 711
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 686
      Width = 784
      Height = 25
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      Color = 12477460
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 3
      object Label1: TLabel
        Left = 581
        Top = 6
        Width = 192
        Height = 13
        Alignment = taRightJustify
        Caption = 'Universidade Delphi | Mateus Vicente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object pnlToolbar: TPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    Color = 12477460
    ParentBackground = False
    TabOrder = 1
    object imgMenu: TImage
      Left = 10
      Top = 9
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
        00200806000000737A7AF40000002B744558744372656174696F6E2054696D65
        0053756E20322041756720323031352031373A30353A3430202D30363030AB9D
        78EE0000000774494D4507DF0802160936B3167602000000097048597300002E
        2300002E230178A53F760000000467414D410000B18F0BFC61050000003B4944
        415478DAEDD3310100200C0341EA5F3454020BA1C3BD81DC925A9F2B00809180
        DD3D19EB00AE00C9000066BE00201900C0CC1700240300003859BE2421B37CDF
        370000000049454E44AE426082}
      OnClick = imgMenuClick
    end
    object lblTitle: TLabel
      Left = 52
      Top = 15
      Width = 65
      Height = 21
      Caption = 'FireDAC '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object splitView: TSplitView
    Left = 0
    Top = 50
    Width = 200
    Height = 711
    CloseStyle = svcCompact
    Color = clBlack
    OpenedWidth = 200
    Placement = svpLeft
    TabOrder = 2
    DesignSize = (
      200
      711)
    object catMenuItems: TCategoryButtons
      Left = 0
      Top = -22
      Width = 200
      Height = 733
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      ButtonFlow = cbfVertical
      ButtonHeight = 40
      ButtonWidth = 100
      ButtonOptions = [boFullSize, boShowCaptions, boCaptionOnlyBorder]
      Categories = <
        item
          Color = clNone
          Collapsed = False
          Items = <
            item
              Action = actArrayDML
            end
            item
              Action = actHandlingErrors
            end
            item
              Action = actPagination
              ImageIndex = 2
            end>
          TextColor = clNone
        end>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      HotButtonColor = 12477460
      Images = ImageList
      RegularButtonColor = clNone
      SelectedButtonColor = clNone
      TabOrder = 0
    end
  end
  object ActionList: TActionList
    Images = ImageList
    Left = 128
    Top = 308
    object actArrayDML: TAction
      Caption = '  Array DML'
      ImageIndex = 0
      OnExecute = actArrayDMLExecute
    end
    object actHandlingErrors: TAction
      Caption = '  Handling Errors'
      ImageIndex = 1
      OnExecute = actHandlingErrorsExecute
    end
    object actPagination: TAction
      Caption = '  Pagination'
      OnExecute = actPaginationExecute
    end
  end
  object ImageList: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 72
    Top = 308
    Bitmap = {
      494C010103000800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E0E3A3A3A3A5E5E5E5E747474747E7E
      7E7E7D7D7D7D717171712323232399999999919191910C0C0C0C000000000000
      00004C4C4C4CDFDFDFDF16161616000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101030303030000
      0000000000000000000000000000000000002B2B2B2BA9A9A9A9ECECECECF8F8
      F8F8CCCCCCCC6262626201010101000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000020000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D3B393939790000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001717171776767676CBCBCBCBFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF8181818180808080FFFFFFFFE0E0E0E054545454A2A2
      A2A2FFFFFFFFE8E8E8E801010101000000000000000000000000000000000707
      07074B4B4B4B8B8B8B8BBCBCBCBCE0E0E0E0F6F6F6F6FFFFFFFFFFFFFFFFF1F1
      F1F1E1E1E1E1C0C0C0C08D8D8D8D75757575EBEBEBEB6D6D6D6D0F0F0F0F0303
      03033C3C3C3CCDCDCDCDA3A3A3A3010101010000000000000000000000000000
      0000000000000000000A19191950515151908F8F8FBFCACACAE3EFEFEFF7FFFF
      FFFFFFFFFFFFE5E5E5F2CACACAE3898989BB4E4E4E8D1616164C000000080000
      0000000000000D0D0D3BCBCBCBE40D0D0D3B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101017777
      7777F4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFC4C4C4C43D3D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA6A6A6A60000000000000000000000000F0F0F0F86868686EDED
      EDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFC3B3B3B3B3B3B3B3B010101010000
      00002828282818181818CDCDCDCD626262620000000000000000000000000101
      011451515190E3E3E3F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDF6D1D1D1E7E1E1E1F04A4A
      4A8A1616164CCBCBCBE40D0D0D3B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008E8E8E8EFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCBCBCBCB09090909F9F9F9F9FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF71717171000000000000000027272727DEDEDEDEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A0A000000000B5B5B5B5939393933B3B
      3B3BE4E4E4E4292929293C3C3C3CCCCCCCCC00000000000000000A0A0A33D1D1
      D1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE0E0E0EF2424246100000005000000000303031D7272
      72ABFFFFFFFF2727276400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009090909FAFAFAFAFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F6F6C7C7C7C79595959579797979696969695959
      5959555555555E5E5E5E1A1A1A1AB5B5B5B5FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF3F3F3F35252525200000000C8C8C8C8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6F6E6E6E6E6D6D6D6D6CCCCCCCCD2D2
      D2D2E1E1E1E1F8F8F8F8FFFFFFFF67676767000000000A0A0A0AC7C7C7C7F8F8
      F8F83C3C3C3C0000000004040404F6F6F6F60000000000000000BDBDBDDCFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9F4CBCBCBE4B0B0
      B0D4B0B0B0D4FBFBFBFD0E0E0E3C000000000000000000000000000000000000
      0000727272ABB7B7B7D800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141414FFFFFFFFF8F8
      F8F8A8A8A8A8444444440C0C0C0C3F3F3F3F6E6E6E6E91919191A7A7A7A7B1B1
      B1B17373737322222222D6D6D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFE7E7E7E7EFEFEFEFEFFFFFFFFFFFFFFFFC6C6
      C6C67A7A7A7A4747474713131313141414142A2A2A2A33333333363636362C2C
      2C2C1C1C1C1C020202028B8B8B8B75757575000000003B3B3B3BE5E5E5E5C7C7
      C7C7939393930101010110101010EEEEEEEE0000000001010113FFFFFFFFFFFF
      FFFFFDFDFDFE8F8F8FBF36363676111111420000000F020202170707072B0A0A
      0A3536363676707070A900000000000000000000000000000000000000000000
      00000303031DFDFDFDFE01010112000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141414BABABABA1E1E
      1E1E41414141ABABABABF7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9090909050505050B4B4B4B4C3C3C3C3D2D2D2D2FAFAFAFAFFFFFFFFFFFF
      FFFFDBDBDBDBBCBCBCBCADADADAD8E8E8E8EFEFEFEFE9D9D9D9D2B2B2B2B2A2A
      2A2A7F7F7F7FBFBFBFBFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF6F6F6F6E8E8E8E8CECECECE04040404CACACACA3B3B3B3B0A0A
      0A0AB8B8B8B8434343436D6D6D6DA7A7A7A70000000001010114F7F7F7FB5353
      5392050505240909093145454585969696C4E5E5E5F2FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3838387800000000000000000000000000000000000000000000
      000000000000D3D3D3E801010114000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000404040412121212ADAD
      ADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4F4F4F47A7A7A7A55555555464646461B1B1B1BA6A6A6A6FFFFFFFFF9F9
      F9F9181818180D0D0D0D00000000000000004A4A4A4A2E2E2E2EBCBCBCBCFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F04040404000000000000
      0000000000003B3B3B3BEBEBEBEB23232323000000000000000D0E0E0E3D0C0C
      0C38999999C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF4A4A4A8A00000000000000000000000000000000000000000000
      000000000006E0E0E0EF0000000D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B4B4B4B4FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4B444444444FFFFFFFFADAD
      ADAD4C4C4C4CAFAFAFAF000000000000000048484848F6F6F6F6FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECECE747474746969
      6969A1A1A1A1E8E8E8E83D3D3D3D0000000000000000000000001E1E1E58F5F5
      F5FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC6C6C6E10000000D000000000000000000000000000000000000
      000024242461868686B900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D0DFEFEFEFEFFFF
      FFFFFFFFFFFFFBFBFBFBCACACACA969696966363636347474747373737372727
      2727252525253333333344444444656565658B8B8B8B09090909DEDEDEDE4A4A
      4A4AADADADADFDFDFDFD0C0C0C0C00000000DEDEDEDEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFE1E1E1E1C4C4C4C4B3B3B3B3A3A3A3A3A0A0A0A0B0B0
      B0B0C1C1C1C1DADADADAFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6E6E6E6E0B0B0B0B00000000000000000000000000000004E0E0E0EFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDDC939393C27C7C7CB26767
      67A25C5C5C99989898C5747474AC0000000D0000000000000000000000000E0E
      0E3CE0E0E0EFE1E1E1F000000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141414FFFFFFFFE0E0
      E0E079797979191919193131313171717171A1A1A1A1C4C4C4C4DBDBDBDBE5E5
      E5E5E5E5E5E5DBDBDBDBC4C4C4C4A1A1A1A171717171313131310A0A0A0A0707
      0707DCDCDCDCFFFFFFFF1414141400000000FFFFFFFFFFFFFFFFF1F1F1F19797
      97974A4A4A4A1818181823232323474747475E5E5E5E676767676A6A6A6A6161
      61614D4D4D4D29292929141414144141414188888888E7E7E7E7FFFFFFFFFFFF
      FFFF292929290000000000000000000000000000000001010114FFFFFFFFFFFF
      FFFFDADADAEC5050508F1313134601010116050505261515154A2323235F2B2B
      2B692A2A2A682121215CB2B2B2D5C6C6C6E14A4A4A8A39393979717171AAF5F5
      F5FAFFFFFFFFFFFFFFFF01010114000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000141414148F8F8F8F0F0F
      0F0F72727272DBDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBDB7171
      71710F0F0F0F929292921414141400000000F1F1F1F16F6F6F6F131313135A5A
      5A5AB0B0B0B0EFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F5F5F5BCBCBCBC69696969151515155A5A5A5AE5E5
      E5E5292929290000000000000000000000000000000001010114D8D8D8EB2727
      27640101011424242461828282B6E7E7E7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF757575AD0101
      01142A2A2A68DEDEDEEE01010114000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000022222222D5D5
      D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD4D4D4D42121212100000000000000002929292954545454E3E3E3E3FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEF6F6F6F6F1818
      181813131313000000000000000000000000000000000000000A0303031F2525
      2562D6D6D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6D6
      D6EA2121215C040404220000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CDCDCDCDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4
      F4F4F4F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCCCCCCCC000000000000000069696969FEFEFEFEFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F
      8F8F0000000000000000000000000000000000000000000000003C3C3C7CFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3838387800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111111FFFFFFFFFFFF
      FFFFFFFFFFFFEDEDEDEDA6A6A6A66E6E6E6E363636361A1A1A1A161616161919
      191919191919161616161A1A1A1A373737376F6F6F6FA6A6A6A6EDEDEDEDFFFF
      FFFFFFFFFFFFFFFFFFFF1010101000000000EBEBEBEBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFECECECECB4B4B4B49494949482828282707070706D6D6D6D7F7F
      7F7F91919191ACACACACE4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFE151515150000000000000000000000000000000000000007F1F1F1F8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D3E8797979B054545493414141813030
      306F3030306F4141418154545493797979B0D3D3D3E8FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE9E9E9F400000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014141414FFFFFFFFD1D1
      D1D1616161611B1B1B1B63636363A3A3A3A3D3D3D3D3F7F7F7F7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F7F7F7D2D2D2D2A3A3A3A3626262621B1B1B1B6161
      6161D2D2D2D2FFFFFFFF1414141400000000FFFFFFFFFFFFFFFFE1E1E1E17979
      79792727272725252525565656567A7A7A7A919191919A9A9A9A9D9D9D9D9393
      93937F7F7F7F5B5B5B5B2D2D2D2D1E1E1E1E68686868D2D2D2D2FFFFFFFFFFFF
      FFFF292929290000000000000000000000000000000001010114FFFFFFFFFFFF
      FFFFBABABADA31313170040404220606062A1E1E1E583D3D3D7D535353925F5F
      5F9C5F5F5F9C535353923D3D3D7D1E1E1E58060606290404042131313170B8B8
      B8D9FFFFFFFFFFFFFFFF01010114000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000013131313808080801F1F
      1F1F9F9F9F9FF8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F89E9E
      9E9E1E1E1E1E828282821313131300000000EAEAEAEA5C5C5C5C242424248989
      8989E1E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBEB989898983030303045454545DBDB
      DBDB292929290000000000000000000000000000000001010114CACACAE31919
      19500606062952525291D1D1D1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFE6525252910606
      062919191951CBCBCBE401010114000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000038383838ECEC
      ECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEBEBEBEB373737370000000000000000222222227E7E7E7EF8F8F8F8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFD9A9A9A9A1818
      18181010101000000000000000000000000000000000000000090303031C4E4E
      4E8DF7F7F7FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7
      F7FB4C4C4C8B0303031C00000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010101DEDEDEDEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDDDDDDDD000000000000000087878787FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAE
      AEAE0000000000000000000000000000000000000000000000005E5E5E9BFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF5C5C5C9900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006060606F8F8F8F8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8F80606060600000000EEEEEEEEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF171717170000000000000000000000000000000000000007F7F7F7FBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7F7F7FB00000006000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000085858585FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF838383830000000000000000BEBEBEBEFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1
      E1E1040404040000000000000000000000000000000000000000ABABABD1FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA9A9A9D000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      7171F2F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1
      F1F1707070700000000000000000000000001E1E1E1ED5D5D5D5FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E7E73333
      333300000000000000000000000000000000000000000000000006060628C1C1
      C1DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFBFBFBFDD0505052700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001414141473737373CACACACAFCFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFCCACACACA737373731414
      141400000000000000000000000000000000000000000909090977777777E3E3
      E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEE8B8B8B8B121212120000
      0000000000000000000000000000000000000000000000000000000000000000
      000D42424282D4D4D4E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4D4E94141
      41810000000C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E0E3B3B3B3B5F5F5F5F777777777F7F
      7F7F7F7F7F7F777777775F5F5F5F3B3B3B3B0E0E0E0E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      03034040404081818181B3B3B3B3D8D8D8D8EEEEEEEEFAFAFAFAFCFCFCFCEEEE
      EEEEDDDDDDDDB9B9B9B98A8A8A8A4A4A4A4A0808080800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000051212124545454585828282B6BCBCBCDBDEDEDEEEF7F7
      F7FBF7F7F7FBDEDEDEEEBCBCBCDB828282B64545458512121245000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF00FE0031FF9F01000000000000F00001E0
      0000000000000000C00003800010000000000000C00003000080000000000000
      8000010000840000000000008000000000800000000000008000000000000000
      00000000800003000038000000000000C0000300000100000000000080000100
      0003000000000000800001000007000000000000800001000007000000000000
      C00003000007000000000000C0000300000F0000000000008000010000070000
      00000000800001000007000000000000800001000007000000000000C0000300
      000700000000000080000300000F000000000000800001000007000000000000
      C00003000007000000000000E0000700000F000000000000F0000F80001F0000
      00000000FE007FE0007F00000000000000000000000000000000000000000000
      000000000000}
  end
end
