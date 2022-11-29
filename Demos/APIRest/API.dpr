program API;

uses
  Vcl.Forms,
  Trysil.Attributes in '..\..\Trysil\Trysil.Attributes.pas',
  Trysil.Cache in '..\..\Trysil\Trysil.Cache.pas',
  Trysil.Classes in '..\..\Trysil\Trysil.Classes.pas',
  Trysil.Consts in '..\..\Trysil\Trysil.Consts.pas',
  Trysil.Context in '..\..\Trysil\Trysil.Context.pas',
  Trysil.Events.Abstract in '..\..\Trysil\Trysil.Events.Abstract.pas',
  Trysil.Events.Attributes in '..\..\Trysil\Trysil.Events.Attributes.pas',
  Trysil.Events.Factory in '..\..\Trysil\Trysil.Events.Factory.pas',
  Trysil.Events in '..\..\Trysil\Trysil.Events.pas',
  Trysil.Exceptions in '..\..\Trysil\Trysil.Exceptions.pas',
  Trysil.Factory in '..\..\Trysil\Trysil.Factory.pas',
  Trysil.Filter in '..\..\Trysil\Trysil.Filter.pas',
  Trysil.Generics.Collections in '..\..\Trysil\Trysil.Generics.Collections.pas',
  Trysil.IdentityMap in '..\..\Trysil\Trysil.IdentityMap.pas',
  Trysil.Lazy in '..\..\Trysil\Trysil.Lazy.pas',
  Trysil.Logger in '..\..\Trysil\Trysil.Logger.pas',
  Trysil.Mapping in '..\..\Trysil\Trysil.Mapping.pas',
  Trysil.Metadata in '..\..\Trysil\Trysil.Metadata.pas',
  Trysil.Provider in '..\..\Trysil\Trysil.Provider.pas',
  Trysil.Resolver in '..\..\Trysil\Trysil.Resolver.pas',
  Trysil.Rtti in '..\..\Trysil\Trysil.Rtti.pas',
  Trysil.Session in '..\..\Trysil\Trysil.Session.pas',
  Trysil.Sync in '..\..\Trysil\Trysil.Sync.pas',
  Trysil.Types in '..\..\Trysil\Trysil.Types.pas',
  Trysil.Data.Columns in '..\..\Trysil\Data\Trysil.Data.Columns.pas',
  Trysil.Data.Connection in '..\..\Trysil\Data\Trysil.Data.Connection.pas',
  Trysil.Data.Parameters in '..\..\Trysil\Data\Trysil.Data.Parameters.pas',
  Trysil.Data in '..\..\Trysil\Data\Trysil.Data.pas',
  Trysil.Data.SqlSyntax.FirebirdSQL in '..\..\Trysil\Data\SqlSyntax\Trysil.Data.SqlSyntax.FirebirdSQL.pas',
  Trysil.Data.SqlSyntax in '..\..\Trysil\Data\SqlSyntax\Trysil.Data.SqlSyntax.pas',
  Trysil.Data.SqlSyntax.SQLite in '..\..\Trysil\Data\SqlSyntax\Trysil.Data.SqlSyntax.SQLite.pas',
  Trysil.Data.SqlSyntax.SqlServer in '..\..\Trysil\Data\SqlSyntax\Trysil.Data.SqlSyntax.SqlServer.pas',
  Trysil.Data.FireDAC.Common in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.Common.pas',
  Trysil.Data.FireDAC.ConnectionPool in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.ConnectionPool.pas',
  Trysil.Data.FireDAC.FirebirdSQL in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.FirebirdSQL.pas',
  Trysil.Data.FireDAC in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.pas',
  Trysil.Data.FireDAC.SQLite in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.SQLite.pas',
  Trysil.Data.FireDAC.SqlServer in '..\..\Trysil\Data\FireDAC\Trysil.Data.FireDAC.SqlServer.pas',
  Trysil.JSon.Consts in '..\..\Trysil.JSon\Trysil.JSon.Consts.pas',
  Trysil.JSon.Context in '..\..\Trysil.JSon\Trysil.JSon.Context.pas',
  Trysil.JSon.Deserializer.Classes in '..\..\Trysil.JSon\Trysil.JSon.Deserializer.Classes.pas',
  Trysil.JSon.Deserializer in '..\..\Trysil.JSon\Trysil.JSon.Deserializer.pas',
  Trysil.JSon.Events in '..\..\Trysil.JSon\Trysil.JSon.Events.pas',
  Trysil.JSon.Exceptions in '..\..\Trysil.JSon\Trysil.JSon.Exceptions.pas',
  Trysil.JSon.Rtti in '..\..\Trysil.JSon\Trysil.JSon.Rtti.pas',
  Trysil.JSon.Serializer.Classes in '..\..\Trysil.JSon\Trysil.JSon.Serializer.Classes.pas',
  Trysil.JSon.Serializer in '..\..\Trysil.JSon\Trysil.JSon.Serializer.pas',
  Trysil.JSon.Types in '..\..\Trysil.JSon\Trysil.JSon.Types.pas',
  Trysil.Http.Attributes in '..\..\Trysil.Http\Trysil.Http.Attributes.pas',
  Trysil.Http.Classes in '..\..\Trysil.Http\Trysil.Http.Classes.pas',
  Trysil.Http.Consts in '..\..\Trysil.Http\Trysil.Http.Consts.pas',
  Trysil.Http.Controller in '..\..\Trysil.Http\Trysil.Http.Controller.pas',
  Trysil.Http.Cors in '..\..\Trysil.Http\Trysil.Http.Cors.pas',
  Trysil.Http.Exceptions in '..\..\Trysil.Http\Trysil.Http.Exceptions.pas',
  Trysil.Http.Filter in '..\..\Trysil.Http\Trysil.Http.Filter.pas',
  Trysil.Http.Listener in '..\..\Trysil.Http\Trysil.Http.Listener.pas',
  Trysil.Http in '..\..\Trysil.Http\Trysil.Http.pas',
  Trysil.Http.Rtti in '..\..\Trysil.Http\Trysil.Http.Rtti.pas',
  Trysil.Http.Context in '..\..\Trysil.Http\Trysil.Http.Context.pas',
  Trysil.Http.Types in '..\..\Trysil.Http\Trysil.Http.Types.pas',
  Trysil.Http.Log.Classes in '..\..\Trysil.Http\Log\Trysil.Http.Log.Classes.pas',
  Trysil.Http.Log.Consts in '..\..\Trysil.Http\Log\Trysil.Http.Log.Consts.pas',
  Trysil.Http.Log in '..\..\Trysil.Http\Log\Trysil.Http.Log.pas',
  Trysil.Http.Log.Threading in '..\..\Trysil.Http\Log\Trysil.Http.Log.Threading.pas',
  Trysil.Http.Log.Types in '..\..\Trysil.Http\Log\Trysil.Http.Log.Types.pas',
  Trysil.Http.Log.Writer in '..\..\Trysil.Http\Log\Trysil.Http.Log.Writer.pas',
  Trysil.Http.Authentication.Basic in '..\..\Trysil.Http\Authentication\Trysil.Http.Authentication.Basic.pas',
  Trysil.Http.Authentication.Bearer in '..\..\Trysil.Http\Authentication\Trysil.Http.Authentication.Bearer.pas',
  Trysil.Http.Authentication.Digest in '..\..\Trysil.Http\Authentication\Trysil.Http.Authentication.Digest.pas',
  Trysil.Http.Authentication in '..\..\Trysil.Http\Authentication\Trysil.Http.Authentication.pas',
  Trysil.Http.JWT in '..\..\Trysil.Http\Authentication\Trysil.Http.JWT.pas',
  API.Context in 'API\API.Context.pas',
  API.Config in 'API\API.Config.pas',
  API.Http in 'API\API.Http.pas',
  API.Model.Company in 'API\Model\API.Model.Company.pas',
  API.Model.Employee in 'API\Model\API.Model.Employee.pas',
  API.Controller in 'API\Controllers\API.Controller.pas',
  API.MainForm in 'API.MainForm.pas' {APIMainForm},
  Trysil.Transaction in '..\..\Trysil\Trysil.Transaction.pas',
  Trysil.Validation.Attributes in '..\..\Trysil\Trysil.Validation.Attributes.pas';

{$R *.res}

begin
{$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
{$ENDIF}
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.ShowMainForm := False;
  Application.CreateForm(TAPIMainForm, APIMainForm);
  Application.Run;
end.
