local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='binary_authorization_attestor', url='', help='`binary_authorization_attestor` represents the `google_binary_authorization_attestor` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  attestation_authority_note:: {
    '#new':: d.fn(help='\n`google.binary_authorization_attestor.attestation_authority_note.new` constructs a new object with attributes and blocks configured for the `attestation_authority_note`\nTerraform sub block.\n\n\n\n**Args**:\n  - `note_reference` (`string`): The resource name of a ATTESTATION_AUTHORITY Note, created by the\nuser. If the Note is in a different project from the Attestor, it\nshould be specified in the format &#39;projects/*/notes/*&#39; (or the legacy\n&#39;providers/*/notes/*&#39;). This field may not be updated.\nAn attestation by this attestor is stored as a Container Analysis\nATTESTATION_AUTHORITY Occurrence that names a container image\nand that links to this Note.\n  - `public_keys` (`list[obj]`): Public keys that verify attestations signed by this attestor. This\nfield may be updated.\nIf this field is non-empty, one of the specified public keys must\nverify that an attestation was signed by this attestor for the\nimage specified in the admission request.\nIf this field is empty, this attestor always returns that no valid\nattestations exist. When `null`, the `public_keys` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.public_keys.new](#fn-attestationauthoritynotepublickeysnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `attestation_authority_note` sub block.\n', args=[]),
    new(
      note_reference,
      public_keys=null
    ):: std.prune(a={
      note_reference: note_reference,
      public_keys: public_keys,
    }),
    public_keys:: {
      '#new':: d.fn(help='\n`google.binary_authorization_attestor.attestation_authority_note.public_keys.new` constructs a new object with attributes and blocks configured for the `public_keys`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ascii_armored_pgp_public_key` (`string`): ASCII-armored representation of a PGP public key, as the\nentire output by the command\n&#39;gpg --export --armor foo@example.com&#39; (either LF or CRLF\nline endings). When using this field, id should be left\nblank. The BinAuthz API handlers will calculate the ID\nand fill it in automatically. BinAuthz computes this ID\nas the OpenPGP RFC4880 V4 fingerprint, represented as\nupper-case hex. If id is provided by the caller, it will\nbe overwritten by the API-calculated ID. When `null`, the `ascii_armored_pgp_public_key` field will be omitted from the resulting object.\n  - `comment` (`string`): A descriptive comment. This field may be updated. When `null`, the `comment` field will be omitted from the resulting object.\n  - `pkix_public_key` (`list[obj]`): A raw PKIX SubjectPublicKeyInfo format public key.\n\nNOTE: id may be explicitly provided by the caller when using this\ntype of public key, but it MUST be a valid RFC3986 URI. If id is left\nblank, a default one will be computed based on the digest of the DER\nencoding of the public key. When `null`, the `pkix_public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.public_keys.pkix_public_key.new](#fn-publickeyspkixpublickeynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `public_keys` sub block.\n', args=[]),
      new(
        ascii_armored_pgp_public_key=null,
        comment=null,
        pkix_public_key=null
      ):: std.prune(a={
        ascii_armored_pgp_public_key: ascii_armored_pgp_public_key,
        comment: comment,
        pkix_public_key: pkix_public_key,
      }),
      pkix_public_key:: {
        '#new':: d.fn(help='\n`google.binary_authorization_attestor.attestation_authority_note.public_keys.pkix_public_key.new` constructs a new object with attributes and blocks configured for the `pkix_public_key`\nTerraform sub block.\n\n\n\n**Args**:\n  - `public_key_pem` (`string`): A PEM-encoded public key, as described in\n&#39;https://tools.ietf.org/html/rfc7468#section-13&#39; When `null`, the `public_key_pem` field will be omitted from the resulting object.\n  - `signature_algorithm` (`string`): The signature algorithm used to verify a message against\na signature using this key. These signature algorithm must\nmatch the structure and any object identifiers encoded in\npublicKeyPem (i.e. this algorithm must match that of the\npublic key). When `null`, the `signature_algorithm` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `pkix_public_key` sub block.\n', args=[]),
        new(
          public_key_pem=null,
          signature_algorithm=null
        ):: std.prune(a={
          public_key_pem: public_key_pem,
          signature_algorithm: signature_algorithm,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.binary_authorization_attestor.new` injects a new `google_binary_authorization_attestor` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.binary_authorization_attestor.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.binary_authorization_attestor` using the reference:\n\n    $._ref.google_binary_authorization_attestor.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_binary_authorization_attestor.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A descriptive comment. This field may be updated. The field may be\ndisplayed in chooser dialogs. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `attestation_authority_note` (`list[obj]`): A Container Analysis ATTESTATION_AUTHORITY Note, created by the user. When `null`, the `attestation_authority_note` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.new](#fn-binaryauthorizationattestorattestationauthoritynotenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.timeouts.new](#fn-binaryauthorizationattestortimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    attestation_authority_note=null,
    description=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_attestor',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation_authority_note=attestation_authority_note,
      description=description,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.binary_authorization_attestor.newAttrs` constructs a new object with attributes and blocks configured for the `binary_authorization_attestor`\nTerraform resource.\n\nUnlike [google.binary_authorization_attestor.new](#fn-binaryauthorizationattestornew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A descriptive comment. This field may be updated. The field may be\ndisplayed in chooser dialogs. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `attestation_authority_note` (`list[obj]`): A Container Analysis ATTESTATION_AUTHORITY Note, created by the user. When `null`, the `attestation_authority_note` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.attestation_authority_note.new](#fn-binaryauthorizationattestorattestationauthoritynotenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_attestor.timeouts.new](#fn-binaryauthorizationattestortimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `binary_authorization_attestor` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    attestation_authority_note=null,
    description=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    attestation_authority_note: attestation_authority_note,
    description: description,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.binary_authorization_attestor.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAttestationAuthorityNote':: d.fn(help='`google.binary_authorization_attestor.withAttestationAuthorityNote` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the attestation_authority_note field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `attestation_authority_note` field.\n', args=[]),
  withAttestationAuthorityNote(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          attestation_authority_note: value,
        },
      },
    },
  },
  '#withAttestationAuthorityNoteMixin':: d.fn(help='`google.binary_authorization_attestor.withAttestationAuthorityNoteMixin` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the attestation_authority_note field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.binary_authorization_attestor.withAttestationAuthorityNote](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `attestation_authority_note` field.\n', args=[]),
  withAttestationAuthorityNoteMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          attestation_authority_note+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.binary_authorization_attestor.withDescription` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.binary_authorization_attestor.withName` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.binary_authorization_attestor.withProject` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.binary_authorization_attestor.withTimeouts` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.binary_authorization_attestor.withTimeoutsMixin` constructs a mixin object that can be merged into the `binary_authorization_attestor`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.binary_authorization_attestor.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_binary_authorization_attestor+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
