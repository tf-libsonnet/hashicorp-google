local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='healthcare_consent_store', url='', help='`healthcare_consent_store` represents the `google_healthcare_consent_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.healthcare_consent_store.new` injects a new `google_healthcare_consent_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.healthcare_consent_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.healthcare_consent_store` using the reference:\n\n    $._ref.google_healthcare_consent_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_healthcare_consent_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n\u0026#39;projects/{project}/locations/{location}/datasets/{dataset}\u0026#39;\n  - `default_consent_ttl` (`string`): Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.\n\nA duration in seconds with up to nine fractional digits, terminated by \u0026#39;s\u0026#39;. Example: \u0026#34;3.5s\u0026#34;. When `null`, the `default_consent_ttl` field will be omitted from the resulting object.\n  - `enable_consent_create_on_update` (`bool`): If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist. When `null`, the `enable_consent_create_on_update` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-supplied key-value pairs used to organize Consent stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: \u0026#39;[\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}\u0026#39;\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: \u0026#39;[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}\u0026#39;\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of this ConsentStore, for example:\n\u0026#34;consent1\u0026#34;\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_consent_store.timeouts.new](#fn-healthcare_consent_storetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset,
    name,
    default_consent_ttl=null,
    enable_consent_create_on_update=null,
    labels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_consent_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      default_consent_ttl=default_consent_ttl,
      enable_consent_create_on_update=enable_consent_create_on_update,
      labels=labels,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.healthcare_consent_store.newAttrs` constructs a new object with attributes and blocks configured for the `healthcare_consent_store`\nTerraform resource.\n\nUnlike [google.healthcare_consent_store.new](#fn-healthcare_consent_storenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset` (`string`): Identifies the dataset addressed by this request. Must be in the format\n&#39;projects/{project}/locations/{location}/datasets/{dataset}&#39;\n  - `default_consent_ttl` (`string`): Default time to live for consents in this store. Must be at least 24 hours. Updating this field will not affect the expiration time of existing consents.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `default_consent_ttl` field will be omitted from the resulting object.\n  - `enable_consent_create_on_update` (`bool`): If true, [consents.patch] [google.cloud.healthcare.v1.consent.UpdateConsent] creates the consent if it does not already exist. When `null`, the `enable_consent_create_on_update` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-supplied key-value pairs used to organize Consent stores.\n\nLabel keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must\nconform to the following PCRE regular expression: &#39;[\\p{Ll}\\p{Lo}][\\p{Ll}\\p{Lo}\\p{N}_-]{0,62}&#39;\n\nLabel values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128\nbytes, and must conform to the following PCRE regular expression: &#39;[\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}&#39;\n\nNo more than 64 labels can be associated with a given store.\n\nAn object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of this ConsentStore, for example:\n&#34;consent1&#34;\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.healthcare_consent_store.timeouts.new](#fn-healthcare_consent_storetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `healthcare_consent_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset,
    name,
    default_consent_ttl=null,
    enable_consent_create_on_update=null,
    labels=null,
    timeouts=null
  ):: std.prune(a={
    dataset: dataset,
    default_consent_ttl: default_consent_ttl,
    enable_consent_create_on_update: enable_consent_create_on_update,
    labels: labels,
    name: name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.healthcare_consent_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDataset':: d.fn(help='`google.string.withDataset` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset` field.\n', args=[]),
  withDataset(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  '#withDefaultConsentTtl':: d.fn(help='`google.string.withDefaultConsentTtl` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the default_consent_ttl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `default_consent_ttl` field.\n', args=[]),
  withDefaultConsentTtl(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          default_consent_ttl: value,
        },
      },
    },
  },
  '#withEnableConsentCreateOnUpdate':: d.fn(help='`google.bool.withEnableConsentCreateOnUpdate` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_consent_create_on_update field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_consent_create_on_update` field.\n', args=[]),
  withEnableConsentCreateOnUpdate(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          enable_consent_create_on_update: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
