unit RamkaMenuGlowne_frm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects,
  FMX.Effects;

type
  TRamkaMenuGlowne = class(TFrame)
    Menu: TRectangle;
    btn_new_diagram: TButton;
    lbl_menu_name: TLabel;
    btn_close_menu: TButton;
    BlurEffect1: TBlurEffect;
    BackGround: TRectangle;
    btn_full_screen_mode: TButton;
    btn_open: TButton;
    btn_save: TButton;
    sett_line_Solid: TLine;
    sett_line_Dash: TLine;
    sett_line_DashDot: TLine;
    sett_line_DashDotDot: TLine;
    sett_line_Dot: TLine;
    rbtn_Solid: TRadioButton;
    rbtn_Dash: TRadioButton;
    rbtn_DashDot: TRadioButton;
    rbtn_DashDotDot: TRadioButton;
    rbtn_Dot: TRadioButton;
    rect_rodzaje_linii: TRectangle;
    procedure rbtn_SolidChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses MainForm_frm;

procedure TRamkaMenuGlowne.rbtn_SolidChange(Sender: TObject);
begin
 if rbtn_Solid.IsChecked      then AOknoGl.Zmien_styl_linii(sett_line_Solid.Stroke.Dash);
 if rbtn_Dash.IsChecked       then AOknoGl.Zmien_styl_linii(sett_line_Dash.Stroke.Dash);
 if rbtn_DashDot.IsChecked    then AOknoGl.Zmien_styl_linii(sett_line_DashDot.Stroke.Dash);
 if rbtn_DashDotDot.IsChecked then AOknoGl.Zmien_styl_linii(sett_line_DashDotDot.Stroke.Dash);
 if rbtn_Dot.IsChecked        then AOknoGl.Zmien_styl_linii(sett_line_Dot.Stroke.Dash);
end;

end.
