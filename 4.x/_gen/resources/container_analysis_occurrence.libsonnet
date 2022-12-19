local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_analysis_occurrence', url='', help='`container_analysis_occurrence` represents the `google_container_analysis_occurrence` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  attestation:: {
    '#new':: d.fn(help='\n`google.container_analysis_occurrence.attestation.new` constructs a new object with attributes and blocks configured for the `attestation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `serialized_payload` (`string`): The serialized payload that is verified by one or\nmore signatures. A base64-encoded string.\n  - `signatures` (`list[obj]`): One or more signatures over serializedPayload.\nVerifier implementations should consider this attestation\nmessage verified if at least one signature verifies\nserializedPayload. See Signature in common.proto for more\ndetails on signature structure and verification. When `null`, the `signatures` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.signatures.new](#fn-attestationsignaturesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `attestation` sub block.\n', args=[]),
    new(
      serialized_payload,
      signatures=null
    ):: std.prune(a={
      serialized_payload: serialized_payload,
      signatures: signatures,
    }),
    signatures:: {
      '#new':: d.fn(help='\n`google.container_analysis_occurrence.attestation.signatures.new` constructs a new object with attributes and blocks configured for the `signatures`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_key_id` (`string`): The identifier for the public key that verifies this\nsignature. MUST be an RFC3986 conformant\nURI. * When possible, the key id should be an\nimmutable reference, such as a cryptographic digest.\nExamples of valid values:\n\n* OpenPGP V4 public key fingerprint. See https://www.iana.org/assignments/uri-schemes/prov/openpgp4fpr\n  for more details on this scheme.\n    * &#39;openpgp4fpr:74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA&#39;\n* RFC6920 digest-named SubjectPublicKeyInfo (digest of the DER serialization):\n    * &#34;ni:///sha-256;cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU&#34;\n  - `signature` (`string`): The content of the signature, an opaque bytestring.\nThe payload that this signature verifies MUST be\nunambiguously provided with the Signature during\nverification. A wrapper message might provide the\npayload explicitly. Alternatively, a message might\nhave a canonical serialization that can always be\nunambiguously computed to derive the payload. When `null`, the `signature` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `signatures` sub block.\n', args=[]),
      new(
        public_key_id,
        signature=null
      ):: std.prune(a={
        public_key_id: public_key_id,
        signature: signature,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.container_analysis_occurrence.new` injects a new `google_container_analysis_occurrence` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_analysis_occurrence.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_analysis_occurrence` using the reference:\n\n    $._ref.google_container_analysis_occurrence.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_analysis_occurrence.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `note_name` (`string`): The analysis note associated with this occurrence, in the form of\nprojects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a\nfilter in list requests.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `remediation` (`string`): A description of actions that can be taken to remedy the note. When `null`, the `remediation` field will be omitted from the resulting object.\n  - `resource_uri` (`string`): Required. Immutable. A URI that represents the resource for which\nthe occurrence applies. For example,\nhttps://gcr.io/project/image@sha256:123abc for a Docker image.\n  - `attestation` (`list[obj]`): Occurrence that represents a single \u0026#34;attestation\u0026#34;. The authenticity\nof an attestation can be verified using the attached signature.\nIf the verifier trusts the public key of the signer, then verifying\nthe signature is sufficient to establish trust. In this circumstance,\nthe authority to which this attestation is attached is primarily\nuseful for lookup (how to find this attestation if you already\nknow the authority and artifact to be verified) and intent (for\nwhich authority this attestation was intended to sign. When `null`, the `attestation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.new](#fn-containeranalysisoccurrenceattestationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.timeouts.new](#fn-containeranalysisoccurrencetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    note_name,
    resource_uri,
    attestation=null,
    project=null,
    remediation=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_analysis_occurrence',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation=attestation,
      note_name=note_name,
      project=project,
      remediation=remediation,
      resource_uri=resource_uri,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_analysis_occurrence.newAttrs` constructs a new object with attributes and blocks configured for the `container_analysis_occurrence`\nTerraform resource.\n\nUnlike [google.container_analysis_occurrence.new](#fn-containeranalysisoccurrencenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `note_name` (`string`): The analysis note associated with this occurrence, in the form of\nprojects/[PROJECT]/notes/[NOTE_ID]. This field can be used as a\nfilter in list requests.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `remediation` (`string`): A description of actions that can be taken to remedy the note. When `null`, the `remediation` field will be omitted from the resulting object.\n  - `resource_uri` (`string`): Required. Immutable. A URI that represents the resource for which\nthe occurrence applies. For example,\nhttps://gcr.io/project/image@sha256:123abc for a Docker image.\n  - `attestation` (`list[obj]`): Occurrence that represents a single &#34;attestation&#34;. The authenticity\nof an attestation can be verified using the attached signature.\nIf the verifier trusts the public key of the signer, then verifying\nthe signature is sufficient to establish trust. In this circumstance,\nthe authority to which this attestation is attached is primarily\nuseful for lookup (how to find this attestation if you already\nknow the authority and artifact to be verified) and intent (for\nwhich authority this attestation was intended to sign. When `null`, the `attestation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.attestation.new](#fn-containeranalysisoccurrenceattestationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_occurrence.timeouts.new](#fn-containeranalysisoccurrencetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_analysis_occurrence` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    note_name,
    resource_uri,
    attestation=null,
    project=null,
    remediation=null,
    timeouts=null
  ):: std.prune(a={
    attestation: attestation,
    note_name: note_name,
    project: project,
    remediation: remediation,
    resource_uri: resource_uri,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_analysis_occurrence.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAttestation':: d.fn(help='`google.container_analysis_occurrence.withAttestation` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the attestation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `attestation` field.\n', args=[]),
  withAttestation(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          attestation: value,
        },
      },
    },
  },
  '#withAttestationMixin':: d.fn(help='`google.container_analysis_occurrence.withAttestationMixin` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the attestation field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.container_analysis_occurrence.withAttestation](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `attestation` field.\n', args=[]),
  withAttestationMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          attestation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNoteName':: d.fn(help='`google.container_analysis_occurrence.withNoteName` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the note_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `note_name` field.\n', args=[]),
  withNoteName(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          note_name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.container_analysis_occurrence.withProject` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRemediation':: d.fn(help='`google.container_analysis_occurrence.withRemediation` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the remediation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `remediation` field.\n', args=[]),
  withRemediation(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          remediation: value,
        },
      },
    },
  },
  '#withResourceUri':: d.fn(help='`google.container_analysis_occurrence.withResourceUri` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the resource_uri field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `resource_uri` field.\n', args=[]),
  withResourceUri(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          resource_uri: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.container_analysis_occurrence.withTimeouts` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.container_analysis_occurrence.withTimeoutsMixin` constructs a mixin object that can be merged into the `container_analysis_occurrence`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.container_analysis_occurrence.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_analysis_occurrence+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
