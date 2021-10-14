unit uGrafo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uConstantes;

type
  TForm1 = class(TForm)
      CalcularCaminho: TButton;
    private

    public
      FAresta: array of TAresta;
      FVertice: array of TVertice;

      constructor Create();override;
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

{ TForm1 }

constructor TForm1.Create;
begin
  inherited;
  FVertice[0].FSigla := 'RS';
  FVertice[0].FEstado := 'Rio Grande do Sul';

  FVertice[1].FSigla := 'SC';
  FVertice[1].FEstado := 'Santa Catarina';

  FVertice[2].FSigla := 'PR';
  FVertice[2].FEstado := 'Paraná';

  FVertice[3].FSigla := 'SP';
  FVertice[3].FEstado := 'São Paulo';

  FVertice[4].FSigla := 'MS';
  FVertice[4].FEstado := 'Mato Grosso do Sul';

  FVertice[5].FSigla := 'RJ';
  FVertice[5].FEstado := 'Rio de Janeiro';

  FVertice[6].FSigla := 'MG';
  FVertice[6].FEstado := 'Minas Gerais';

  FVertice[7].FSigla := 'ES';
  FVertice[7].FEstado := 'Espirito Santo';

  FVertice[8].FSigla := 'GO';
  FVertice[8].FEstado := 'Goias';

  FVertice[9].FSigla := 'DF';
  FVertice[9].FEstado := 'Distrito Federal';

  FVertice[10].FSigla := 'MT';
  FVertice[10].FEstado := 'Mato Grosso';

  FVertice[11].FSigla := 'BA';
  FVertice[11].FEstado := 'Bahia';

  FVertice[12].FSigla := 'TO';
  FVertice[12].FEstado := 'Tocantis';

  FVertice[13].FSigla := 'RO';
  FVertice[13].FEstado := 'Rondonia';

  FVertice[14].FSigla := 'AC';
  FVertice[14].FEstado := 'Acre';

  FVertice[15].FSigla := 'AM';
  FVertice[15].FEstado := 'Amazonas';

  FVertice[16].FSigla := 'RR';
  FVertice[16].FEstado := 'Roraima';

  FVertice[17].FSigla := 'AP';
  FVertice[17].FEstado := 'Amapá';

  FVertice[18].FSigla := 'MA';
  FVertice[18].FEstado := 'Maranhão';

  FVertice[19].FSigla := 'PI';
  FVertice[19].FEstado := 'Piauí';

  FVertice[20].FSigla := 'SE';
  FVertice[20].FEstado := 'Sergipe';

  FVertice[21].FSigla := 'AL';
  FVertice[21].FEstado := 'Alagoas';

  FVertice[22].FSigla := 'PE';
  FVertice[22].FEstado := 'Pernambuco';

  FVertice[23].FSigla := 'PB';
  FVertice[23].FEstado := 'Paraíba';

  FVertice[24].FSigla := 'RN';
  FVertice[24].FEstado := 'Rio Grande do Norte';

  FVertice[25].FSigla := 'CE';
  FVertice[25].FEstado := 'Ceará';

  FVertice[26].FSigla := 'PA';
  FVertice[26].FEstado := 'Pará';


  FAresta[0].FVertice1 := FVertice[0];
  FAresta[0].FVertice2 := FVertice[13];
  FAresta[0].FValor := 380;

  FAresta[1].FVertice1 := FVertice[0];
  FAresta[1].FVertice2 := FVertice[2];
  FAresta[1].FValor := 60;

  FAresta[2].FVertice1 := FVertice[0];
  FAresta[2].FVertice2 := FVertice[3];
  FAresta[2].FValor := 95;

  FAresta[3].FVertice1 := FVertice[1];
  FAresta[3].FVertice2 := FVertice[2];
  FAresta[3].FValor := 40;

  FAresta[4].FVertice1 := FVertice[1];
  FAresta[4].FVertice2 := FVertice[3];
  FAresta[4].FValor := 60;

  FAresta[5].FVertice1 := FVertice[1];
  FAresta[5].FVertice2 := FVertice[5];
  FAresta[5].FValor := 80;

  FAresta[6].FVertice1 := FVertice[2];
  FAresta[6].FVertice2 := FVertice[3];
  FAresta[6].FValor := 55;

  FAresta[7].FVertice1 := FVertice[2];
  FAresta[7].FVertice2 := FVertice[4];
  FAresta[7].FValor := 90;

  FAresta[8].FVertice1 := FVertice[3];
  FAresta[8].FVertice2 := FVertice[4];
  FAresta[8].FValor := 95;

  FAresta[9].FVertice1 := FVertice[3];
  FAresta[9].FVertice2 := FVertice[8];
  FAresta[9].FValor := 95;

  FAresta[10].FVertice1 := FVertice[3];
  FAresta[10].FVertice2 := FVertice[9];
  FAresta[10].FValor := 95;

  FAresta[11].FVertice1 := FVertice[3];
  FAresta[11].FVertice2 := FVertice[6];
  FAresta[11].FValor := 75;

  FAresta[12].FVertice1 := FVertice[3];
  FAresta[12].FVertice2 := FVertice[5];
  FAresta[12].FValor := 80;

  FAresta[13].FVertice1 := FVertice[6];
  FAresta[13].FVertice2 := FVertice[8];
  FAresta[13].FValor := 80;

  FAresta[14].FVertice1 := FVertice[6];
  FAresta[14].FVertice2 := FVertice[9];
  FAresta[14].FValor := 70;

  FAresta[15].FVertice1 := FVertice[8];
  FAresta[15].FVertice2 := FVertice[9];
  FAresta[15].FValor := 30;

  FAresta[16].FVertice1 := FVertice[8];
  FAresta[16].FVertice2 := FVertice[12];
  FAresta[16].FValor := 95;

  FAresta[17].FVertice1 := FVertice[9];
  FAresta[17].FVertice2 := FVertice[12];
  FAresta[17].FValor := 90;

  FAresta[18].FVertice1 := FVertice[5];
  FAresta[18].FVertice2 := FVertice[12];
  FAresta[18].FValor := 190;

  FAresta[19].FVertice1 := FVertice[6];
  FAresta[19].FVertice2 := FVertice[7];
  FAresta[19].FValor := 90;

  FAresta[20].FVertice1 := FVertice[5];
  FAresta[20].FVertice2 := FVertice[21];
  FAresta[20].FValor := 190;

  FAresta[21].FVertice1 := FVertice[7];
  FAresta[21].FVertice2 := FVertice[19];
  FAresta[21].FValor := 180;

  FAresta[22].FVertice1 := FVertice[7];
  FAresta[22].FVertice2 := FVertice[11];
  FAresta[22].FValor := 95;

  FAresta[23].FVertice1 := FVertice[7];
  FAresta[23].FVertice2 := FVertice[20];
  FAresta[23].FValor := 105;

  FAresta[24].FVertice1 := FVertice[11];
  FAresta[24].FVertice2 := FVertice[20];
  FAresta[24].FValor := 40;

  FAresta[25].FVertice1 := FVertice[20];
  FAresta[25].FVertice2 := FVertice[21];
  FAresta[25].FValor := 35;

  FAresta[26].FVertice1 := FVertice[20];
  FAresta[26].FVertice2 := FVertice[23];
  FAresta[26].FValor := 75;

  FAresta[27].FVertice1 := FVertice[21];
  FAresta[27].FVertice2 := FVertice[23];
  FAresta[27].FValor := 40;

  FAresta[28].FVertice1 := FVertice[21];
  FAresta[28].FVertice2 := FVertice[22];
  FAresta[28].FValor := 40;

  FAresta[29].FVertice1 := FVertice[11];
  FAresta[29].FVertice2 := FVertice[22];
  FAresta[29].FValor := 65;

  FAresta[30].FVertice1 := FVertice[11];
  FAresta[30].FVertice2 := FVertice[19];
  FAresta[30].FValor := 75;

  FAresta[31].FVertice1 := FVertice[19];
  FAresta[31].FVertice2 := FVertice[22];
  FAresta[31].FValor := 60;

  FAresta[32].FVertice1 := FVertice[19];
  FAresta[32].FVertice2 := FVertice[24];
  FAresta[32].FValor := 80;

  FAresta[33].FVertice1 := FVertice[22];
  FAresta[33].FVertice2 := FVertice[24];
  FAresta[33].FValor := 65;

  FAresta[34].FVertice1 := FVertice[22];
  FAresta[34].FVertice2 := FVertice[23];
  FAresta[34].FValor := 40;

  FAresta[35].FVertice1 := FVertice[23];
  FAresta[35].FVertice2 := FVertice[24];
  FAresta[35].FValor := 35;

  FAresta[36].FVertice1 := FVertice[24];
  FAresta[36].FVertice2 := FVertice[25];
  FAresta[36].FValor := 75;

  FAresta[37].FVertice1 := FVertice[19];
  FAresta[37].FVertice2 := FVertice[25];
  FAresta[37].FValor := 75;

  FAresta[38].FVertice1 := FVertice[18];
  FAresta[38].FVertice2 := FVertice[25];
  FAresta[38].FValor := 75;

  FAresta[39].FVertice1 := FVertice[17];
  FAresta[39].FVertice2 := FVertice[25];
  FAresta[39].FValor := 255;

  FAresta[40].FVertice1 := FVertice[18];
  FAresta[40].FVertice2 := FVertice[19];
  FAresta[40].FValor := 70;

  FAresta[41].FVertice1 := FVertice[17];
  FAresta[41].FVertice2 := FVertice[18];
  FAresta[41].FValor := 210;

  FAresta[42].FVertice1 := FVertice[18];
  FAresta[42].FVertice2 := FVertice[26];
  FAresta[42].FValor := 100;

  FAresta[43].FVertice1 := FVertice[19];
  FAresta[43].FVertice2 := FVertice[26];
  FAresta[43].FValor := 210;

  FAresta[44].FVertice1 := FVertice[12];
  FAresta[44].FVertice2 := FVertice[19];
  FAresta[44].FValor := 90;

  FAresta[45].FVertice1 := FVertice[11];
  FAresta[45].FVertice2 := FVertice[12];
  FAresta[45].FValor := 200;

  FAresta[46].FVertice1 := FVertice[10];
  FAresta[46].FVertice2 := FVertice[12];
  FAresta[46].FValor := 85;

  FAresta[47].FVertice1 := FVertice[12];
  FAresta[47].FVertice2 := FVertice[13];
  FAresta[47].FValor := 320;

  FAresta[48].FVertice1 := FVertice[10];
  FAresta[48].FVertice2 := FVertice[26];
  FAresta[48].FValor := 100;

  FAresta[49].FVertice1 := FVertice[4];
  FAresta[49].FVertice2 := FVertice[10];
  FAresta[49].FValor := 100;

  FAresta[50].FVertice1 := FVertice[4];
  FAresta[50].FVertice2 := FVertice[12];
  FAresta[50].FValor := 260;

  FAresta[51].FVertice1 := FVertice[10];
  FAresta[51].FVertice2 := FVertice[13];
  FAresta[51].FValor := 95;

  FAresta[52].FVertice1 := FVertice[13];
  FAresta[52].FVertice2 := FVertice[26];
  FAresta[52].FValor := 250;

  FAresta[53].FVertice1 := FVertice[13];
  FAresta[53].FVertice2 := FVertice[14];
  FAresta[53].FValor := 95;

  FAresta[54].FVertice1 := FVertice[14];
  FAresta[54].FVertice2 := FVertice[26];
  FAresta[54].FValor := 280;

  FAresta[55].FVertice1 := FVertice[15];
  FAresta[55].FVertice2 := FVertice[26];
  FAresta[55].FValor := 200;

  FAresta[56].FVertice1 := FVertice[16];
  FAresta[56].FVertice2 := FVertice[26];
  FAresta[56].FValor := 230;

  FAresta[57].FVertice1 := FVertice[17];
  FAresta[57].FVertice2 := FVertice[26];
  FAresta[57].FValor := 210;

  FAresta[58].FVertice1 := FVertice[15];
  FAresta[58].FVertice2 := FVertice[17];
  FAresta[58].FValor := 230;

  FAresta[59].FVertice1 := FVertice[16];
  FAresta[59].FVertice2 := FVertice[17];
  FAresta[59].FValor := 190;

  FAresta[60].FVertice1 := FVertice[15];
  FAresta[60].FVertice2 := FVertice[16];
  FAresta[60].FValor := 90;

  FAresta[61].FVertice1 := FVertice[14];
  FAresta[61].FVertice2 := FVertice[15];
  FAresta[61].FValor := 250;

  FAresta[62].FVertice1 := FVertice[14];
  FAresta[62].FVertice2 := FVertice[16];
  FAresta[62].FValor := 270;

  FAresta[63].FVertice1 := FVertice[12];
  FAresta[63].FVertice2 := FVertice[26];
  FAresta[63].FValor := 75;

  FAresta[64].FVertice1 := FVertice[0];
  FAresta[64].FVertice2 := FVertice[1];
  FAresta[64].FValor := 60;
end;

end.
