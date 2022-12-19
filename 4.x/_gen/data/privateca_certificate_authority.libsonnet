local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_certificate_authority', url='', help='`privateca_certificate_authority` represents the `google_privateca_certificate_authority` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.privateca_certificate_authority.new` injects a new `data_google_privateca_certificate_authority` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.privateca_certificate_authority.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.privateca_certificate_authority` using the reference:\n\n    $._ref.data_google_privateca_certificate_authority.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_privateca_certificate_authority.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority. When `null`, the `certificate_authority_id` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by\nrunning \u0026#39;gcloud privateca locations list\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to. When `null`, the `pool` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    certificate_authority_id=null,
    location=null,
    pool=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_privateca_certificate_authority',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      certificate_authority_id=certificate_authority_id,
      location=location,
      pool=pool,
      project=project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.privateca_certificate_authority.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_authority`\nTerraform data source.\n\nUnlike [google.data.privateca_certificate_authority.new](#fn-privatecacertificateauthoritynew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_authority_id` (`string`): The user provided Resource ID for this Certificate Authority. When `null`, the `certificate_authority_id` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the CertificateAuthority. A full list of valid locations can be found by\nrunning &#39;gcloud privateca locations list&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `pool` (`string`): The name of the CaPool this Certificate Authority belongs to. When `null`, the `pool` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `privateca_certificate_authority` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificate_authority_id=null,
    location=null,
    pool=null,
    project=null
  ):: std.prune(a={
    certificate_authority_id: certificate_authority_id,
    location: location,
    pool: pool,
    project: project,
  }),
  '#withCertificateAuthorityId':: d.fn(help='`google.string.withCertificateAuthorityId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the certificate_authority_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `certificate_authority_id` field.\n', args=[]),
  withCertificateAuthorityId(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          certificate_authority_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPool':: d.fn(help='`google.string.withPool` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the pool field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `pool` field.\n', args=[]),
  withPool(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          pool: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_authority+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
