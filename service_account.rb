require 'json'

def service_account
  # 以下はサンプルデータ。このままでは動作しない。サービスアカウントのキー（本物）に差し替えること
  JSON.parse '
{
  "type": "service_account",
  "project_id": "oreore-mdm-yusukeiwaki",
  "private_key_id": "473ff6c5895bcd5a1897d0d2254df4b806193230",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIXEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQClCi8P7xOyALdl\nt5Ov6Pq3WXcbZ3Xi1EdLcaUcPAfEPCLY6v/K9CKqUIug/BknuK/h3GGF9XXu/6+C\nAKYpdeejDEC7fRl+pgf7F7NWXi4gxa7jNvGVZSxP1qYPi3bAWZeU+ElYyIX8GVqA\nIvqth5cmxNc+AQdWA1WY9IhXimnovENbk/T505wBAYt+xiuemhTqBcyStERsVqJb\n2aaPhQQllKZwmKFnWYNKzuZy8+McZbpicDF2MyeVgvuX/f0nFaOt6lNLVI+lCrNP\nbq5OeBFEcCE4U6kcBewc4Z7idVAK6ZSR/lo1cIcD6EEweyWKDFNWCD5dA6jx0ugk\niRpwhe/3AgMBAAECggEADUcO9zi0PG9bUdcdjhrvxL1xXCaMMOYEIFkxv95Cf7KY\n2Ru63YCbo1kciqSNf4kXuVOKEwVm6gXvAEX+GDrQmmj7cjoDyZEg9j33YxzrmB5f\nTg9XCz5a/MdXj8uYD6yFieoZuIdVZC1D/ygRQ9GzQt62NFpP1UcqZUZTC7vqfls5\n9bAsJDmR6ud0+pwYM2Voj0OVpuM3NUldVRQyqJvj016p0SUbbTjx0HECJqLIQQU8\nYJX/aznRylnTCjJUvEgcxdajeHJzbBwoa/b4brU/MGFEf0kyQlp/9gqZn5RtgMiZ\nRKZ1DBFL/qu6TUfZ2I5mGpw8mW7d5bxMYxmwcvJCDQKBgQDVHY/y9S2w7mP2EnyE\n5Q7BEu0QTmISvaJQkROn9d0GGPySUX07/6NMtMG6z3TjhKxUU33r8dFfkFl+iXCe\ntwypIqwHlfeQ0LyiiOQsG+bIfJGDerAFWz4f+RAUDCm0pu7z2LGiAt06Zvf0MyAI\nlzIzBJPHuRnyOA1tmaO2MhbRswKBgQDGQAxqfJcNyjpYaXGYkmFa2Q5ZVv8W7d6O\nOFVpNaIMNtxWESCQSVLF8mKYrvt4sgp216ZPEkTXq6XEbhBYmw+m9f5DNRaAap+o\nnyUVq8w1mIgfnqDSQ+Mw1qndqUJafPR7trcj0N5P1+u2txdTaAAi17CQGTh57msj\nautvIzverQKBgQCNgpS8EjtludXcZogSQnraj3OkmTecFBl8f+jaZXJ/AwZrLfsH\nZQcM/xWIswp9rPI1CD+b9TU+zH3wfNiwOwIIKQKsAtOhcElhb556/4ft5nFFKalJ\n1T1aQ6p+dVkYIKSYfHHvDxHRHuBUYcJKkgL+R3LNcsacxMV92kAP0hC+6wKBgFm9\ncGFbmHzzh8mxoWwxBsS68FXcnYfhkRbLxU3kqz/gLYkAI79skX1tJNh8jPSrkzUM\nlQnB+UuvNVBfiiKxvjoTrE773v2uRitsLrtKkxvHugamJaJIfLUE1sux7IlNetXt\ndaVOzPNTiC2jX3mv4C/ldtUjtX7sP68+nOgoCNfZAoGAGtBEsBSNNXBpzC7vhPOG\nsKlAtykg77MHdrBgZfxbbOa7E6lSXA9QLxZnfC93/M4pwoNfG5FTkTrcO+zDaojK\nui/ZM4gFuDH5HivKtXBNfyoFkMKMZXo04qOrctnLA1bGZFeDAYWX5PUYr4zEgJXD\nTv8pd5ZFIZ9IL6N7et2fvyY=\n-----END PRIVATE KEY-----\n",
  "client_email": "oreore-mdm-apiclient@oreore-mdm-yusukeiwaki.iam.gserviceaccount.com",
  "client_id": "117074759620705009623",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/oreore-mdm-apiclient%40oreore-mdm-yusukeiwaki.iam.gserviceaccount.com"
}'
end
