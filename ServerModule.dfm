object UniServerModule: TUniServerModule
  AutoCoInitialize = True
  TempFolder = 'temp\'
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  CustomFiles.Strings = (
    'files/zxing.min.js')
  SSL.Enabled = True
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_2
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_2]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  SSL.SSLPassword = 'fmsoft'
  SSL.SSLPort = 8077
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 225
  Width = 323
  PixelsPerInch = 144
end
