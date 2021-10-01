unit uConstantes;

interface

type

  TVertice = record
    FSigla: string;
    FEstado: string;
  end;

  TAresta = record
    FVertice1: TVertice;
    FVertice2: TVertice;
    FValor: Integer;
  end;

var
  FAresta: array of TAresta;
  FVertice: array of TVertice;

implementation

procedure GerarConstantes();
begin
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
  FAresta[2].FValor := 40;

  FAresta[3].FVertice1 := FVertice[1];
  FAresta[3].FVertice2 := FVertice[2];
  FAresta[3].FValor := 40;

  FAresta[4].FVertice1 := FVertice[1];
  FAresta[4].FVertice2 := FVertice[3];
  FAresta[4].FValor := 60;

  FAresta[5].FVertice1 := FVertice[1];
  FAresta[5].FVertice2 := FVertice[5];
  FAresta[5].FValor := 80;

  FAresta[6].FVertice1 := FVertice[1];
  FAresta[6].FVertice2 := FVertice[2];
  FAresta[6].FValor := 40;
end;

end.
