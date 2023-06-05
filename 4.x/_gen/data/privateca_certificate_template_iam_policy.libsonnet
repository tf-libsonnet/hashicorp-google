local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='privateca_certificate_template_iam_policy', url='', help='`privateca_certificate_template_iam_policy` represents the `google_privateca_certificate_template_iam_policy` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.privateca_certificate_template_iam_policy.new` injects a new `data_google_privateca_certificate_template_iam_policy` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.privateca_certificate_template_iam_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.privateca_certificate_template_iam_policy` using the reference:\n\n    $._ref.data_google_privateca_certificate_template_iam_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_privateca_certificate_template_iam_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `certificate_template` (`string`): Set the `certificate_template` field on the resulting data source block.\n  - `location` (`string`): Set the `location` field on the resulting data source block. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    certificate_template,
    location=null,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_privateca_certificate_template_iam_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(certificate_template=certificate_template, location=location, project=project),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.privateca_certificate_template_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `privateca_certificate_template_iam_policy`\nTerraform data source.\n\nUnlike [google.data.privateca_certificate_template_iam_policy.new](#fn-new), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `certificate_template` (`string`): Set the `certificate_template` field on the resulting object.\n  - `location` (`string`): Set the `location` field on the resulting object. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `privateca_certificate_template_iam_policy` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    certificate_template,
    location=null,
    project=null
  ):: std.prune(a={
    certificate_template: certificate_template,
    location: location,
    project: project,
  }),
  '#withCertificateTemplate':: d.fn(help='`google.string.withCertificateTemplate` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the certificate_template field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `certificate_template` field.\n', args=[]),
  withCertificateTemplate(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_template_iam_policy+: {
        [dataSrcLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the location field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_template_iam_policy+: {
        [dataSrcLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the project field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(dataSrcLabel, value): {
    data+: {
      google_privateca_certificate_template_iam_policy+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}
