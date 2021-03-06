unit FindUnit.Header;

interface

const
  VERSION: array[0..2] of Word = (1,0,11);//(MAJOR, RELEASE, BUILD)

type
  TListType = (ltClasses = 0,
    ltProcedures = 1,
    ltFunctions = 2,
    ltContants = 3,
    ltVariables = 4);

  TStringPosition = record
    Value: string;
    Line: Integer;
  end;

var
  strListTypeDescription: array[TListType] of string;
  VERSION_STR: string;

const
   MAX_RETURN_ITEMS = 200;
   AUTO_IMPORT_FILE = 'memoryconfig.ini';

implementation

uses
	SysUtils;

procedure LoadConts;
begin
  strListTypeDescription[ltClasses] := '';
  strListTypeDescription[ltProcedures] := ' - Procedure';
  strListTypeDescription[ltFunctions] := ' - Function';
  strListTypeDescription[ltContants] := ' - Constant';
  strListTypeDescription[ltVariables] := ' - Variable';

  VERSION_STR := Format('%d.%d.%d', [VERSION[0], VERSION[1], VERSION[2]]);
end;

initialization
  LoadConts;

end.
