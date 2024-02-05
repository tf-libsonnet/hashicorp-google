local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='integration_connectors_connection', url='', help='`integration_connectors_connection` represents the `google_integration_connectors_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  auth_config:: {
    additional_variable:: {
      encryption_key_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected\nformat: projects/*/locations/*/keyRings/*/cryptoKeys/*.\nWill be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;]\n\n**Returns**:\n  - An attribute object that represents the `encryption_key_value` sub block.\n', args=[]),
        new(
          type,
          kms_key_name=null
        ):: std.prune(a={
          kms_key_name: kms_key_name,
          type: type,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `key` (`string`): Key for the configVariable\n  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.encryption_key_value.new](#fn-auth_configauth_configencryption_key_valuenew) constructor.\n  - `secret_value` (`list[obj]`): Secret value of configVariable. When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.secret_value.new](#fn-auth_configauth_configsecret_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_variable` sub block.\n', args=[]),
      new(
        key,
        boolean_value=null,
        encryption_key_value=null,
        integer_value=null,
        secret_value=null,
        string_value=null
      ):: std.prune(a={
        boolean_value: boolean_value,
        encryption_key_value: encryption_key_value,
        integer_value: integer_value,
        key: key,
        secret_value: secret_value,
        string_value: string_value,
      }),
      secret_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `secret_value` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.new` constructs a new object with attributes and blocks configured for the `auth_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_key` (`string`): The type of authentication configured. When `null`, the `auth_key` field will be omitted from the resulting object.\n  - `auth_type` (`string`): authType of the Connection Possible values: [&#34;USER_PASSWORD&#34;, &#34;OAUTH2_JWT_BEARER&#34;, &#34;OAUTH2_CLIENT_CREDENTIALS&#34;, &#34;SSH_PUBLIC_KEY&#34;, &#34;OAUTH2_AUTH_CODE_FLOW&#34;]\n  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.additional_variable.new](#fn-auth_configadditional_variablenew) constructor.\n  - `oauth2_auth_code_flow` (`list[obj]`): Parameters to support Oauth 2.0 Auth Code Grant Authentication. When `null`, the `oauth2_auth_code_flow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.new](#fn-auth_configoauth2_auth_code_flownew) constructor.\n  - `oauth2_client_credentials` (`list[obj]`): OAuth3 Client Credentials for Authentication. When `null`, the `oauth2_client_credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_client_credentials.new](#fn-auth_configoauth2_client_credentialsnew) constructor.\n  - `oauth2_jwt_bearer` (`list[obj]`): OAuth2 JWT Bearer for Authentication. When `null`, the `oauth2_jwt_bearer` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.new](#fn-auth_configoauth2_jwt_bearernew) constructor.\n  - `ssh_public_key` (`list[obj]`): SSH Public Key for Authentication. When `null`, the `ssh_public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.new](#fn-auth_configssh_public_keynew) constructor.\n  - `user_password` (`list[obj]`): User password for Authentication. When `null`, the `user_password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.user_password.new](#fn-auth_configuser_passwordnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `auth_config` sub block.\n', args=[]),
    new(
      auth_type,
      additional_variable=null,
      auth_key=null,
      oauth2_auth_code_flow=null,
      oauth2_client_credentials=null,
      oauth2_jwt_bearer=null,
      ssh_public_key=null,
      user_password=null
    ):: std.prune(a={
      additional_variable: additional_variable,
      auth_key: auth_key,
      auth_type: auth_type,
      oauth2_auth_code_flow: oauth2_auth_code_flow,
      oauth2_client_credentials: oauth2_client_credentials,
      oauth2_jwt_bearer: oauth2_jwt_bearer,
      ssh_public_key: ssh_public_key,
      user_password: user_password,
    }),
    oauth2_auth_code_flow:: {
      client_secret:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.client_secret.new` constructs a new object with attributes and blocks configured for the `client_secret`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `client_secret` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.new` constructs a new object with attributes and blocks configured for the `oauth2_auth_code_flow`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_uri` (`string`): Auth URL for Authorization Code Flow. When `null`, the `auth_uri` field will be omitted from the resulting object.\n  - `client_id` (`string`): Client ID for user-provided OAuth app. When `null`, the `client_id` field will be omitted from the resulting object.\n  - `enable_pkce` (`bool`): Whether to enable PKCE when the user performs the auth code flow. When `null`, the `enable_pkce` field will be omitted from the resulting object.\n  - `scopes` (`list`): Scopes the connection will request when the user performs the auth code flow. When `null`, the `scopes` field will be omitted from the resulting object.\n  - `client_secret` (`list[obj]`): Client secret for user-provided OAuth app. When `null`, the `client_secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_auth_code_flow.client_secret.new](#fn-auth_configauth_configclient_secretnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oauth2_auth_code_flow` sub block.\n', args=[]),
      new(
        auth_uri=null,
        client_id=null,
        client_secret=null,
        enable_pkce=null,
        scopes=null
      ):: std.prune(a={
        auth_uri: auth_uri,
        client_id: client_id,
        client_secret: client_secret,
        enable_pkce: enable_pkce,
        scopes: scopes,
      }),
    },
    oauth2_client_credentials:: {
      client_secret:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_client_credentials.client_secret.new` constructs a new object with attributes and blocks configured for the `client_secret`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `client_secret` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_client_credentials.new` constructs a new object with attributes and blocks configured for the `oauth2_client_credentials`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_id` (`string`): Secret version of Password for Authentication.\n  - `client_secret` (`list[obj]`): Secret version reference containing the client secret. When `null`, the `client_secret` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_client_credentials.client_secret.new](#fn-auth_configauth_configclient_secretnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oauth2_client_credentials` sub block.\n', args=[]),
      new(
        client_id,
        client_secret=null
      ):: std.prune(a={
        client_id: client_id,
        client_secret: client_secret,
      }),
    },
    oauth2_jwt_bearer:: {
      client_key:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.client_key.new` constructs a new object with attributes and blocks configured for the `client_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `client_key` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
      jwt_claims:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.jwt_claims.new` constructs a new object with attributes and blocks configured for the `jwt_claims`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audience` (`string`): Value for the &#34;aud&#34; claim. When `null`, the `audience` field will be omitted from the resulting object.\n  - `issuer` (`string`): Value for the &#34;iss&#34; claim. When `null`, the `issuer` field will be omitted from the resulting object.\n  - `subject` (`string`): Value for the &#34;sub&#34; claim. When `null`, the `subject` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `jwt_claims` sub block.\n', args=[]),
        new(
          audience=null,
          issuer=null,
          subject=null
        ):: std.prune(a={
          audience: audience,
          issuer: issuer,
          subject: subject,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.new` constructs a new object with attributes and blocks configured for the `oauth2_jwt_bearer`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_key` (`list[obj]`): Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate.\nThis private key will be used to sign JWTs used for the jwt-bearer authorization grant.\nSpecified in the form as: projects/*/secrets/*/versions/*. When `null`, the `client_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.client_key.new](#fn-auth_configauth_configclient_keynew) constructor.\n  - `jwt_claims` (`list[obj]`): JwtClaims providers fields to generate the token. When `null`, the `jwt_claims` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.oauth2_jwt_bearer.jwt_claims.new](#fn-auth_configauth_configjwt_claimsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `oauth2_jwt_bearer` sub block.\n', args=[]),
      new(
        client_key=null,
        jwt_claims=null
      ):: std.prune(a={
        client_key: client_key,
        jwt_claims: jwt_claims,
      }),
    },
    ssh_public_key:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.ssh_public_key.new` constructs a new object with attributes and blocks configured for the `ssh_public_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cert_type` (`string`): Format of SSH Client cert. When `null`, the `cert_type` field will be omitted from the resulting object.\n  - `username` (`string`): The user account used to authenticate.\n  - `ssh_client_cert` (`list[obj]`): SSH Client Cert. It should contain both public and private key. When `null`, the `ssh_client_cert` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert.new](#fn-auth_configauth_configssh_client_certnew) constructor.\n  - `ssh_client_cert_pass` (`list[obj]`): Password (passphrase) for ssh client certificate if it has one. When `null`, the `ssh_client_cert_pass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert_pass.new](#fn-auth_configauth_configssh_client_cert_passnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ssh_public_key` sub block.\n', args=[]),
      new(
        username,
        cert_type=null,
        ssh_client_cert=null,
        ssh_client_cert_pass=null
      ):: std.prune(a={
        cert_type: cert_type,
        ssh_client_cert: ssh_client_cert,
        ssh_client_cert_pass: ssh_client_cert_pass,
        username: username,
      }),
      ssh_client_cert:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert.new` constructs a new object with attributes and blocks configured for the `ssh_client_cert`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `ssh_client_cert` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
      ssh_client_cert_pass:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.ssh_public_key.ssh_client_cert_pass.new` constructs a new object with attributes and blocks configured for the `ssh_client_cert_pass`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `ssh_client_cert_pass` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
    },
    user_password:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.user_password.new` constructs a new object with attributes and blocks configured for the `user_password`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): Username for Authentication.\n  - `password` (`list[obj]`): Password for Authentication. When `null`, the `password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.user_password.password.new](#fn-auth_configauth_configpasswordnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `user_password` sub block.\n', args=[]),
      new(
        username,
        password=null
      ):: std.prune(a={
        password: password,
        username: username,
      }),
      password:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.auth_config.user_password.password.new` constructs a new object with attributes and blocks configured for the `password`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `password` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
    },
  },
  config_variable:: {
    encryption_key_value:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.config_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected\nformat: projects/*/locations/*/keyRings/*/cryptoKeys/*.\nWill be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;]\n\n**Returns**:\n  - An attribute object that represents the `encryption_key_value` sub block.\n', args=[]),
      new(
        type,
        kms_key_name=null
      ):: std.prune(a={
        kms_key_name: kms_key_name,
        type: type,
      }),
    },
    '#new':: d.fn(help='\n`google.integration_connectors_connection.config_variable.new` constructs a new object with attributes and blocks configured for the `config_variable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): Boolean Value of configVariable When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): Integer Value of configVariable When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `key` (`string`): Key for the configVariable\n  - `string_value` (`string`): String Value of configVariabley When `null`, the `string_value` field will be omitted from the resulting object.\n  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.encryption_key_value.new](#fn-config_variableencryption_key_valuenew) constructor.\n  - `secret_value` (`list[obj]`): Secret value of configVariable. When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.secret_value.new](#fn-config_variablesecret_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `config_variable` sub block.\n', args=[]),
    new(
      key,
      boolean_value=null,
      encryption_key_value=null,
      integer_value=null,
      secret_value=null,
      string_value=null
    ):: std.prune(a={
      boolean_value: boolean_value,
      encryption_key_value: encryption_key_value,
      integer_value: integer_value,
      key: key,
      secret_value: secret_value,
      string_value: string_value,
    }),
    secret_value:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.config_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `secret_value` sub block.\n', args=[]),
      new(
        secret_version
      ):: std.prune(a={
        secret_version: secret_version,
      }),
    },
  },
  destination_config:: {
    destination:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.destination_config.destination.new` constructs a new object with attributes and blocks configured for the `destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): For publicly routable host. When `null`, the `host` field will be omitted from the resulting object.\n  - `port` (`number`): The port is the target port number that is accepted by the destination. When `null`, the `port` field will be omitted from the resulting object.\n  - `service_attachment` (`string`): PSC service attachments. Format: projects/*/regions/*/serviceAttachments/* When `null`, the `service_attachment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destination` sub block.\n', args=[]),
      new(
        host=null,
        port=null,
        service_attachment=null
      ):: std.prune(a={
        host: host,
        port: port,
        service_attachment: service_attachment,
      }),
    },
    '#new':: d.fn(help='\n`google.integration_connectors_connection.destination_config.new` constructs a new object with attributes and blocks configured for the `destination_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): The key is the destination identifier that is supported by the Connector.\n  - `destination` (`list[obj]`): The destinations for the key. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.destination.new](#fn-destination_configdestinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `destination_config` sub block.\n', args=[]),
    new(
      key,
      destination=null
    ):: std.prune(a={
      destination: destination,
      key: key,
    }),
  },
  eventing_config:: {
    additional_variable:: {
      encryption_key_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected\nformat: projects/*/locations/*/keyRings/*/cryptoKeys/*.\nWill be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type of Encryption Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_key_value` sub block.\n', args=[]),
        new(
          kms_key_name=null,
          type=null
        ):: std.prune(a={
          kms_key_name: kms_key_name,
          type: type,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `key` (`string`): Key for the configVariable\n  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable. When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.encryption_key_value.new](#fn-eventing_configeventing_configencryption_key_valuenew) constructor.\n  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.secret_value.new](#fn-eventing_configeventing_configsecret_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_variable` sub block.\n', args=[]),
      new(
        key,
        boolean_value=null,
        encryption_key_value=null,
        integer_value=null,
        secret_value=null,
        string_value=null
      ):: std.prune(a={
        boolean_value: boolean_value,
        encryption_key_value: encryption_key_value,
        integer_value: integer_value,
        key: key,
        secret_value: secret_value,
        string_value: string_value,
      }),
      secret_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `secret_value` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
    },
    auth_config:: {
      additional_variable:: {
        encryption_key_value:: {
          '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected\nformat: projects/*/locations/*/keyRings/*/cryptoKeys/*.\nWill be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_key_value` sub block.\n', args=[]),
          new(
            kms_key_name=null,
            type=null
          ):: std.prune(a={
            kms_key_name: kms_key_name,
            type: type,
          }),
        },
        '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `key` (`string`): Key for the configVariable\n  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.encryption_key_value.new](#fn-eventing_configeventing_configauth_configencryption_key_valuenew) constructor.\n  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.secret_value.new](#fn-eventing_configeventing_configauth_configsecret_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_variable` sub block.\n', args=[]),
        new(
          key,
          boolean_value=null,
          encryption_key_value=null,
          integer_value=null,
          secret_value=null,
          string_value=null
        ):: std.prune(a={
          boolean_value: boolean_value,
          encryption_key_value: encryption_key_value,
          integer_value: integer_value,
          key: key,
          secret_value: secret_value,
          string_value: string_value,
        }),
        secret_value:: {
          '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `secret_value` sub block.\n', args=[]),
          new(
            secret_version
          ):: std.prune(a={
            secret_version: secret_version,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.new` constructs a new object with attributes and blocks configured for the `auth_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auth_key` (`string`): The type of authentication configured. When `null`, the `auth_key` field will be omitted from the resulting object.\n  - `auth_type` (`string`): authType of the Connection Possible values: [&#34;USER_PASSWORD&#34;]\n  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.additional_variable.new](#fn-eventing_configeventing_configadditional_variablenew) constructor.\n  - `user_password` (`list[obj]`): User password for Authentication. When `null`, the `user_password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.user_password.new](#fn-eventing_configeventing_configuser_passwordnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `auth_config` sub block.\n', args=[]),
      new(
        auth_type,
        additional_variable=null,
        auth_key=null,
        user_password=null
      ):: std.prune(a={
        additional_variable: additional_variable,
        auth_key: auth_key,
        auth_type: auth_type,
        user_password: user_password,
      }),
      user_password:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.user_password.new` constructs a new object with attributes and blocks configured for the `user_password`\nTerraform sub block.\n\n\n\n**Args**:\n  - `username` (`string`): Username for Authentication. When `null`, the `username` field will be omitted from the resulting object.\n  - `password` (`list[obj]`): Password for Authentication. When `null`, the `password` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.user_password.password.new](#fn-eventing_configeventing_configauth_configpasswordnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `user_password` sub block.\n', args=[]),
        new(
          password=null,
          username=null
        ):: std.prune(a={
          password: password,
          username: username,
        }),
        password:: {
          '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.auth_config.user_password.password.new` constructs a new object with attributes and blocks configured for the `password`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): The resource name of the secret version in the format,\nformat as: projects/*/secrets/*/versions/*.\n\n**Returns**:\n  - An attribute object that represents the `password` sub block.\n', args=[]),
          new(
            secret_version
          ):: std.prune(a={
            secret_version: secret_version,
          }),
        },
      },
    },
    '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.new` constructs a new object with attributes and blocks configured for the `eventing_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enrichment_enabled` (`bool`): Enrichment Enabled. When `null`, the `enrichment_enabled` field will be omitted from the resulting object.\n  - `additional_variable` (`list[obj]`): List containing additional auth configs. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.additional_variable.new](#fn-eventing_configadditional_variablenew) constructor.\n  - `auth_config` (`list[obj]`): authConfig for Eventing Configuration. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.auth_config.new](#fn-eventing_configauth_confignew) constructor.\n  - `registration_destination_config` (`list[obj]`): registrationDestinationConfig When `null`, the `registration_destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.registration_destination_config.new](#fn-eventing_configregistration_destination_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `eventing_config` sub block.\n', args=[]),
    new(
      additional_variable=null,
      auth_config=null,
      enrichment_enabled=null,
      registration_destination_config=null
    ):: std.prune(a={
      additional_variable: additional_variable,
      auth_config: auth_config,
      enrichment_enabled: enrichment_enabled,
      registration_destination_config: registration_destination_config,
    }),
    registration_destination_config:: {
      destination:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.registration_destination_config.destination.new` constructs a new object with attributes and blocks configured for the `destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): Host When `null`, the `host` field will be omitted from the resulting object.\n  - `port` (`number`): port number When `null`, the `port` field will be omitted from the resulting object.\n  - `service_attachment` (`string`): Service Attachment When `null`, the `service_attachment` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destination` sub block.\n', args=[]),
        new(
          host=null,
          port=null,
          service_attachment=null
        ):: std.prune(a={
          host: host,
          port: port,
          service_attachment: service_attachment,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.eventing_config.registration_destination_config.new` constructs a new object with attributes and blocks configured for the `registration_destination_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `key` (`string`): Key for the connection When `null`, the `key` field will be omitted from the resulting object.\n  - `destination` (`list[obj]`): destinations for the connection When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.registration_destination_config.destination.new](#fn-eventing_configeventing_configdestinationnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `registration_destination_config` sub block.\n', args=[]),
      new(
        destination=null,
        key=null
      ):: std.prune(a={
        destination: destination,
        key: key,
      }),
    },
  },
  lock_config:: {
    '#new':: d.fn(help='\n`google.integration_connectors_connection.lock_config.new` constructs a new object with attributes and blocks configured for the `lock_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `locked` (`bool`): Indicates whether or not the connection is locked.\n  - `reason` (`string`): Describes why a connection is locked. When `null`, the `reason` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `lock_config` sub block.\n', args=[]),
    new(
      locked,
      reason=null
    ):: std.prune(a={
      locked: locked,
      reason: reason,
    }),
  },
  log_config:: {
    '#new':: d.fn(help='\n`google.integration_connectors_connection.log_config.new` constructs a new object with attributes and blocks configured for the `log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): Enabled represents whether logging is enabled or not for a connection.\n\n**Returns**:\n  - An attribute object that represents the `log_config` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  '#new':: d.fn(help="\n`google.integration_connectors_connection.new` injects a new `google_integration_connectors_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.integration_connectors_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.integration_connectors_connection` using the reference:\n\n    $._ref.google_integration_connectors_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_integration_connectors_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connector_version` (`string`): connectorVersion of the Connector.\n  - `description` (`string`): An arbitrary description for the Conection. When `null`, the `description` field will be omitted from the resulting object.\n  - `eventing_enablement_type` (`string`): Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [\u0026#34;EVENTING_AND_CONNECTION\u0026#34;, \u0026#34;ONLY_EVENTING\u0026#34;] When `null`, the `eventing_enablement_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location in which Connection needs to be created.\n  - `name` (`string`): Name of Connection needs to be created.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Service account needed for runtime plane to access Google Cloud resources. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `suspended` (`bool`): Suspended indicates if a user has suspended a connection or not. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `auth_config` (`list[obj]`): authConfig for the connection. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.new](#fn-auth_confignew) constructor.\n  - `config_variable` (`list[obj]`): Config Variables for the connection. When `null`, the `config_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.new](#fn-config_variablenew) constructor.\n  - `destination_config` (`list[obj]`): Define the Connectors target endpoint. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.new](#fn-destination_confignew) constructor.\n  - `eventing_config` (`list[obj]`): Eventing Configuration of a connection When `null`, the `eventing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.new](#fn-eventing_confignew) constructor.\n  - `lock_config` (`list[obj]`): Determines whether or no a connection is locked. If locked, a reason must be specified. When `null`, the `lock_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.lock_config.new](#fn-lock_confignew) constructor.\n  - `log_config` (`list[obj]`): Log configuration for the connection. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.log_config.new](#fn-log_confignew) constructor.\n  - `node_config` (`list[obj]`): Node configuration for the connection. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.node_config.new](#fn-node_confignew) constructor.\n  - `ssl_config` (`list[obj]`): SSL Configuration of a connection When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.new](#fn-ssl_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    connector_version,
    location,
    name,
    auth_config=null,
    config_variable=null,
    description=null,
    destination_config=null,
    eventing_config=null,
    eventing_enablement_type=null,
    labels=null,
    lock_config=null,
    log_config=null,
    node_config=null,
    project=null,
    service_account=null,
    ssl_config=null,
    suspended=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_integration_connectors_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      auth_config=auth_config,
      config_variable=config_variable,
      connector_version=connector_version,
      description=description,
      destination_config=destination_config,
      eventing_config=eventing_config,
      eventing_enablement_type=eventing_enablement_type,
      labels=labels,
      location=location,
      lock_config=lock_config,
      log_config=log_config,
      name=name,
      node_config=node_config,
      project=project,
      service_account=service_account,
      ssl_config=ssl_config,
      suspended=suspended,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.integration_connectors_connection.newAttrs` constructs a new object with attributes and blocks configured for the `integration_connectors_connection`\nTerraform resource.\n\nUnlike [google.integration_connectors_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connector_version` (`string`): connectorVersion of the Connector.\n  - `description` (`string`): An arbitrary description for the Conection. When `null`, the `description` field will be omitted from the resulting object.\n  - `eventing_enablement_type` (`string`): Eventing enablement type. Will be nil if eventing is not enabled. Possible values: [&#34;EVENTING_AND_CONNECTION&#34;, &#34;ONLY_EVENTING&#34;] When `null`, the `eventing_enablement_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location in which Connection needs to be created.\n  - `name` (`string`): Name of Connection needs to be created.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_account` (`string`): Service account needed for runtime plane to access Google Cloud resources. When `null`, the `service_account` field will be omitted from the resulting object.\n  - `suspended` (`bool`): Suspended indicates if a user has suspended a connection or not. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `auth_config` (`list[obj]`): authConfig for the connection. When `null`, the `auth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.auth_config.new](#fn-auth_confignew) constructor.\n  - `config_variable` (`list[obj]`): Config Variables for the connection. When `null`, the `config_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.config_variable.new](#fn-config_variablenew) constructor.\n  - `destination_config` (`list[obj]`): Define the Connectors target endpoint. When `null`, the `destination_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.destination_config.new](#fn-destination_confignew) constructor.\n  - `eventing_config` (`list[obj]`): Eventing Configuration of a connection When `null`, the `eventing_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.eventing_config.new](#fn-eventing_confignew) constructor.\n  - `lock_config` (`list[obj]`): Determines whether or no a connection is locked. If locked, a reason must be specified. When `null`, the `lock_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.lock_config.new](#fn-lock_confignew) constructor.\n  - `log_config` (`list[obj]`): Log configuration for the connection. When `null`, the `log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.log_config.new](#fn-log_confignew) constructor.\n  - `node_config` (`list[obj]`): Node configuration for the connection. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.node_config.new](#fn-node_confignew) constructor.\n  - `ssl_config` (`list[obj]`): SSL Configuration of a connection When `null`, the `ssl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.new](#fn-ssl_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `integration_connectors_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    connector_version,
    location,
    name,
    auth_config=null,
    config_variable=null,
    description=null,
    destination_config=null,
    eventing_config=null,
    eventing_enablement_type=null,
    labels=null,
    lock_config=null,
    log_config=null,
    node_config=null,
    project=null,
    service_account=null,
    ssl_config=null,
    suspended=null,
    timeouts=null
  ):: std.prune(a={
    auth_config: auth_config,
    config_variable: config_variable,
    connector_version: connector_version,
    description: description,
    destination_config: destination_config,
    eventing_config: eventing_config,
    eventing_enablement_type: eventing_enablement_type,
    labels: labels,
    location: location,
    lock_config: lock_config,
    log_config: log_config,
    name: name,
    node_config: node_config,
    project: project,
    service_account: service_account,
    ssl_config: ssl_config,
    suspended: suspended,
    timeouts: timeouts,
  }),
  node_config:: {
    '#new':: d.fn(help='\n`google.integration_connectors_connection.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_node_count` (`number`): Minimum number of nodes in the runtime nodes. When `null`, the `max_node_count` field will be omitted from the resulting object.\n  - `min_node_count` (`number`): Minimum number of nodes in the runtime nodes. When `null`, the `min_node_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `node_config` sub block.\n', args=[]),
    new(
      max_node_count=null,
      min_node_count=null
    ):: std.prune(a={
      max_node_count: max_node_count,
      min_node_count: min_node_count,
    }),
  },
  ssl_config:: {
    additional_variable:: {
      encryption_key_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.additional_variable.encryption_key_value.new` constructs a new object with attributes and blocks configured for the `encryption_key_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The [KMS key name] with which the content of the Operation is encrypted. The expected\nformat: projects/*/locations/*/keyRings/*/cryptoKeys/*.\nWill be empty string if google managed. When `null`, the `kms_key_name` field will be omitted from the resulting object.\n  - `type` (`string`): Type of Encription Key Possible values: [&#34;GOOGLE_MANAGED&#34;, &#34;CUSTOMER_MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `encryption_key_value` sub block.\n', args=[]),
        new(
          kms_key_name=null,
          type=null
        ):: std.prune(a={
          kms_key_name: kms_key_name,
          type: type,
        }),
      },
      '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.additional_variable.new` constructs a new object with attributes and blocks configured for the `additional_variable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `boolean_value` (`bool`): Boolean Value of configVariable. When `null`, the `boolean_value` field will be omitted from the resulting object.\n  - `integer_value` (`number`): Integer Value of configVariable. When `null`, the `integer_value` field will be omitted from the resulting object.\n  - `key` (`string`): Key for the configVariable\n  - `string_value` (`string`): String Value of configVariabley. When `null`, the `string_value` field will be omitted from the resulting object.\n  - `encryption_key_value` (`list[obj]`): Encription key value of configVariable When `null`, the `encryption_key_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.encryption_key_value.new](#fn-ssl_configssl_configencryption_key_valuenew) constructor.\n  - `secret_value` (`list[obj]`): Secret value of configVariable When `null`, the `secret_value` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.secret_value.new](#fn-ssl_configssl_configsecret_valuenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `additional_variable` sub block.\n', args=[]),
      new(
        key,
        boolean_value=null,
        encryption_key_value=null,
        integer_value=null,
        secret_value=null,
        string_value=null
      ):: std.prune(a={
        boolean_value: boolean_value,
        encryption_key_value: encryption_key_value,
        integer_value: integer_value,
        key: key,
        secret_value: secret_value,
        string_value: string_value,
      }),
      secret_value:: {
        '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.additional_variable.secret_value.new` constructs a new object with attributes and blocks configured for the `secret_value`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `secret_value` sub block.\n', args=[]),
        new(
          secret_version
        ):: std.prune(a={
          secret_version: secret_version,
        }),
      },
    },
    client_certificate:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.client_certificate.new` constructs a new object with attributes and blocks configured for the `client_certificate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `client_certificate` sub block.\n', args=[]),
      new(
        secret_version
      ):: std.prune(a={
        secret_version: secret_version,
      }),
    },
    client_private_key:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.client_private_key.new` constructs a new object with attributes and blocks configured for the `client_private_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `client_private_key` sub block.\n', args=[]),
      new(
        secret_version
      ):: std.prune(a={
        secret_version: secret_version,
      }),
    },
    client_private_key_pass:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.client_private_key_pass.new` constructs a new object with attributes and blocks configured for the `client_private_key_pass`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `client_private_key_pass` sub block.\n', args=[]),
      new(
        secret_version
      ):: std.prune(a={
        secret_version: secret_version,
      }),
    },
    '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.new` constructs a new object with attributes and blocks configured for the `ssl_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `client_cert_type` (`string`): Type of Client Cert (PEM/JKS/.. etc.) Possible values: [&#34;PEM&#34;] When `null`, the `client_cert_type` field will be omitted from the resulting object.\n  - `server_cert_type` (`string`): Type of Server Cert (PEM/JKS/.. etc.) Possible values: [&#34;PEM&#34;] When `null`, the `server_cert_type` field will be omitted from the resulting object.\n  - `trust_model` (`string`): Enum for Trust Model Possible values: [&#34;PUBLIC&#34;, &#34;PRIVATE&#34;, &#34;INSECURE&#34;] When `null`, the `trust_model` field will be omitted from the resulting object.\n  - `type` (`string`): Enum for controlling the SSL Type (TLS/MTLS) Possible values: [&#34;TLS&#34;, &#34;MTLS&#34;]\n  - `use_ssl` (`bool`): Bool for enabling SSL When `null`, the `use_ssl` field will be omitted from the resulting object.\n  - `additional_variable` (`list[obj]`): Additional SSL related field values. When `null`, the `additional_variable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.additional_variable.new](#fn-ssl_configadditional_variablenew) constructor.\n  - `client_certificate` (`list[obj]`): Client Certificate When `null`, the `client_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_certificate.new](#fn-ssl_configclient_certificatenew) constructor.\n  - `client_private_key` (`list[obj]`): Client Private Key When `null`, the `client_private_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_private_key.new](#fn-ssl_configclient_private_keynew) constructor.\n  - `client_private_key_pass` (`list[obj]`): Secret containing the passphrase protecting the Client Private Key When `null`, the `client_private_key_pass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.client_private_key_pass.new](#fn-ssl_configclient_private_key_passnew) constructor.\n  - `private_server_certificate` (`list[obj]`): Private Server Certificate. Needs to be specified if trust model is PRIVATE. When `null`, the `private_server_certificate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.integration_connectors_connection.ssl_config.private_server_certificate.new](#fn-ssl_configprivate_server_certificatenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ssl_config` sub block.\n', args=[]),
    new(
      type,
      additional_variable=null,
      client_cert_type=null,
      client_certificate=null,
      client_private_key=null,
      client_private_key_pass=null,
      private_server_certificate=null,
      server_cert_type=null,
      trust_model=null,
      use_ssl=null
    ):: std.prune(a={
      additional_variable: additional_variable,
      client_cert_type: client_cert_type,
      client_certificate: client_certificate,
      client_private_key: client_private_key,
      client_private_key_pass: client_private_key_pass,
      private_server_certificate: private_server_certificate,
      server_cert_type: server_cert_type,
      trust_model: trust_model,
      type: type,
      use_ssl: use_ssl,
    }),
    private_server_certificate:: {
      '#new':: d.fn(help='\n`google.integration_connectors_connection.ssl_config.private_server_certificate.new` constructs a new object with attributes and blocks configured for the `private_server_certificate`\nTerraform sub block.\n\n\n\n**Args**:\n  - `secret_version` (`string`): Secret version of Secret Value for Config variable.\n\n**Returns**:\n  - An attribute object that represents the `private_server_certificate` sub block.\n', args=[]),
      new(
        secret_version
      ):: std.prune(a={
        secret_version: secret_version,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.integration_connectors_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withAuthConfig':: d.fn(help='`google.list[obj].withAuthConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auth_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuthConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auth_config` field.\n', args=[]),
  withAuthConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          auth_config: value,
        },
      },
    },
  },
  '#withAuthConfigMixin':: d.fn(help='`google.list[obj].withAuthConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auth_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuthConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auth_config` field.\n', args=[]),
  withAuthConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          auth_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConfigVariable':: d.fn(help='`google.list[obj].withConfigVariable` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config_variable field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withConfigVariableMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config_variable` field.\n', args=[]),
  withConfigVariable(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          config_variable: value,
        },
      },
    },
  },
  '#withConfigVariableMixin':: d.fn(help='`google.list[obj].withConfigVariableMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the config_variable field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withConfigVariable](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `config_variable` field.\n', args=[]),
  withConfigVariableMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          config_variable+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectorVersion':: d.fn(help='`google.string.withConnectorVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the connector_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `connector_version` field.\n', args=[]),
  withConnectorVersion(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          connector_version: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestinationConfig':: d.fn(help='`google.list[obj].withDestinationConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDestinationConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_config` field.\n', args=[]),
  withDestinationConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          destination_config: value,
        },
      },
    },
  },
  '#withDestinationConfigMixin':: d.fn(help='`google.list[obj].withDestinationConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_config` field.\n', args=[]),
  withDestinationConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          destination_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEventingConfig':: d.fn(help='`google.list[obj].withEventingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the eventing_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `eventing_config` field.\n', args=[]),
  withEventingConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          eventing_config: value,
        },
      },
    },
  },
  '#withEventingConfigMixin':: d.fn(help='`google.list[obj].withEventingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the eventing_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `eventing_config` field.\n', args=[]),
  withEventingConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          eventing_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEventingEnablementType':: d.fn(help='`google.string.withEventingEnablementType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the eventing_enablement_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `eventing_enablement_type` field.\n', args=[]),
  withEventingEnablementType(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          eventing_enablement_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withLockConfig':: d.fn(help='`google.list[obj].withLockConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the lock_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLockConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `lock_config` field.\n', args=[]),
  withLockConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          lock_config: value,
        },
      },
    },
  },
  '#withLockConfigMixin':: d.fn(help='`google.list[obj].withLockConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the lock_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLockConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `lock_config` field.\n', args=[]),
  withLockConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          lock_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLogConfig':: d.fn(help='`google.list[obj].withLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          log_config: value,
        },
      },
    },
  },
  '#withLogConfigMixin':: d.fn(help='`google.list[obj].withLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `log_config` field.\n', args=[]),
  withLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNodeConfig':: d.fn(help='`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  '#withNodeConfigMixin':: d.fn(help='`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the node_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `node_config` field.\n', args=[]),
  withNodeConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withServiceAccount':: d.fn(help='`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_account field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_account` field.\n', args=[]),
  withServiceAccount(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  '#withSslConfig':: d.fn(help='`google.list[obj].withSslConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSslConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_config` field.\n', args=[]),
  withSslConfig(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          ssl_config: value,
        },
      },
    },
  },
  '#withSslConfigMixin':: d.fn(help='`google.list[obj].withSslConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ssl_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSslConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ssl_config` field.\n', args=[]),
  withSslConfigMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          ssl_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSuspended':: d.fn(help='`google.bool.withSuspended` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the suspended field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `suspended` field.\n', args=[]),
  withSuspended(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          suspended: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_integration_connectors_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
