  unit uTipo;

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

implementation

end.
