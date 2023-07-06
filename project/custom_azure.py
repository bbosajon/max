from storages.backends.azure_storage import AzureStorage

class AzureMediaStorage(AzureStorage):
    account_name = 'maxmedia' # Must be replaced by your <storage_account_name>
    account_key = 'qIcKgw0mM5/ghHe4Zg9eDhttwpgVQVjTkuUr1NodHvQheaSRpxGbeHSAgQ4/5vWjXpC2B44CemR/+ASt8TTqYw==' # Must be replaced by your <storage_account_key>
    azure_container = 'media'
    expiration_secs = None

class AzureStaticStorage(AzureStorage):
    account_name = 'djangoaccountstorage' # Must be replaced by your storage_account_name
    account_key = 'UMjniE09b+aSPpPHKguVEVGOZzddYbyvIVVK0zpTSI7b2tgKr3nO5XZIBOJDtX2qRk0Acg60fcRZ+AStJDgWEw==' # Must be replaced by your <storage_account_key>
    azure_container = 'static'
    expiration_secs = None