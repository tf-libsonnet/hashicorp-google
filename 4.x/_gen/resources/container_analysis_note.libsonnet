local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='container_analysis_note', url='', help='`container_analysis_note` represents the `google_container_analysis_note` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  attestation_authority:: {
    hint:: {
      '#new':: d.fn(help='\n`google.container_analysis_note.attestation_authority.hint.new` constructs a new object with attributes and blocks configured for the `hint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `human_readable_name` (`string`): The human readable name of this Attestation Authority, for\nexample &#34;qa&#34;.\n\n**Returns**:\n  - An attribute object that represents the `hint` sub block.\n', args=[]),
      new(
        human_readable_name
      ):: std.prune(a={
        human_readable_name: human_readable_name,
      }),
    },
    '#new':: d.fn(help='\n`google.container_analysis_note.attestation_authority.new` constructs a new object with attributes and blocks configured for the `attestation_authority`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hint` (`list[obj]`): This submessage provides human-readable hints about the purpose of\nthe AttestationAuthority. Because the name of a Note acts as its\nresource reference, it is important to disambiguate the canonical\nname of the Note (which might be a UUID for security purposes)\nfrom &#34;readable&#34; names more suitable for debug output. Note that\nthese hints should NOT be used to look up AttestationAuthorities\nin security sensitive contexts, such as when looking up\nAttestations to verify. When `null`, the `hint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.hint.new](#fn-attestation_authorityhintnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `attestation_authority` sub block.\n', args=[]),
    new(
      hint=null
    ):: std.prune(a={
      hint: hint,
    }),
  },
  '#new':: d.fn(help="\n`google.container_analysis_note.new` injects a new `google_container_analysis_note` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.container_analysis_note.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.container_analysis_note` using the reference:\n\n    $._ref.google_container_analysis_note.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_container_analysis_note.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `expiration_time` (`string`): Time of expiration for this note. Leave empty if note does not expire. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `long_description` (`string`): A detailed description of the note When `null`, the `long_description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the note.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `related_note_names` (`list`): Names of other notes related to this note. When `null`, the `related_note_names` field will be omitted from the resulting object.\n  - `short_description` (`string`): A one sentence description of the note. When `null`, the `short_description` field will be omitted from the resulting object.\n  - `attestation_authority` (`list[obj]`): Note kind that represents a logical attestation \u0026#34;role\u0026#34; or \u0026#34;authority\u0026#34;.\nFor example, an organization might have one AttestationAuthority for\n\u0026#34;QA\u0026#34; and one for \u0026#34;build\u0026#34;. This Note is intended to act strictly as a\ngrouping mechanism for the attached Occurrences (Attestations). This\ngrouping mechanism also provides a security boundary, since IAM ACLs\ngate the ability for a principle to attach an Occurrence to a given\nNote. It also provides a single point of lookup to find all attached\nAttestation Occurrences, even if they don\u0026#39;t all live in the same\nproject. When `null`, the `attestation_authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.new](#fn-attestation_authoritynew) constructor.\n  - `related_url` (`list[obj]`): URLs associated with this note and related metadata. When `null`, the `related_url` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.related_url.new](#fn-related_urlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    attestation_authority=null,
    expiration_time=null,
    long_description=null,
    project=null,
    related_note_names=null,
    related_url=null,
    short_description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_analysis_note',
    label=resourceLabel,
    attrs=self.newAttrs(
      attestation_authority=attestation_authority,
      expiration_time=expiration_time,
      long_description=long_description,
      name=name,
      project=project,
      related_note_names=related_note_names,
      related_url=related_url,
      short_description=short_description,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.container_analysis_note.newAttrs` constructs a new object with attributes and blocks configured for the `container_analysis_note`\nTerraform resource.\n\nUnlike [google.container_analysis_note.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `expiration_time` (`string`): Time of expiration for this note. Leave empty if note does not expire. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `long_description` (`string`): A detailed description of the note When `null`, the `long_description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the note.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `related_note_names` (`list`): Names of other notes related to this note. When `null`, the `related_note_names` field will be omitted from the resulting object.\n  - `short_description` (`string`): A one sentence description of the note. When `null`, the `short_description` field will be omitted from the resulting object.\n  - `attestation_authority` (`list[obj]`): Note kind that represents a logical attestation &#34;role&#34; or &#34;authority&#34;.\nFor example, an organization might have one AttestationAuthority for\n&#34;QA&#34; and one for &#34;build&#34;. This Note is intended to act strictly as a\ngrouping mechanism for the attached Occurrences (Attestations). This\ngrouping mechanism also provides a security boundary, since IAM ACLs\ngate the ability for a principle to attach an Occurrence to a given\nNote. It also provides a single point of lookup to find all attached\nAttestation Occurrences, even if they don&#39;t all live in the same\nproject. When `null`, the `attestation_authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.attestation_authority.new](#fn-attestation_authoritynew) constructor.\n  - `related_url` (`list[obj]`): URLs associated with this note and related metadata. When `null`, the `related_url` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.related_url.new](#fn-related_urlnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_analysis_note.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_analysis_note` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    attestation_authority=null,
    expiration_time=null,
    long_description=null,
    project=null,
    related_note_names=null,
    related_url=null,
    short_description=null,
    timeouts=null
  ):: std.prune(a={
    attestation_authority: attestation_authority,
    expiration_time: expiration_time,
    long_description: long_description,
    name: name,
    project: project,
    related_note_names: related_note_names,
    related_url: related_url,
    short_description: short_description,
    timeouts: timeouts,
  }),
  related_url:: {
    '#new':: d.fn(help='\n`google.container_analysis_note.related_url.new` constructs a new object with attributes and blocks configured for the `related_url`\nTerraform sub block.\n\n\n\n**Args**:\n  - `label` (`string`): Label to describe usage of the URL When `null`, the `label` field will be omitted from the resulting object.\n  - `url` (`string`): Specific URL associated with the resource.\n\n**Returns**:\n  - An attribute object that represents the `related_url` sub block.\n', args=[]),
    new(
      url,
      label=null
    ):: std.prune(a={
      label: label,
      url: url,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.container_analysis_note.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAttestationAuthority':: d.fn(help='`google.list[obj].withAttestationAuthority` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the attestation_authority field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAttestationAuthorityMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `attestation_authority` field.\n', args=[]),
  withAttestationAuthority(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          attestation_authority: value,
        },
      },
    },
  },
  '#withAttestationAuthorityMixin':: d.fn(help='`google.list[obj].withAttestationAuthorityMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the attestation_authority field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAttestationAuthority](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `attestation_authority` field.\n', args=[]),
  withAttestationAuthorityMixin(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          attestation_authority+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withExpirationTime':: d.fn(help='`google.string.withExpirationTime` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the expiration_time field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `expiration_time` field.\n', args=[]),
  withExpirationTime(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          expiration_time: value,
        },
      },
    },
  },
  '#withLongDescription':: d.fn(help='`google.string.withLongDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the long_description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `long_description` field.\n', args=[]),
  withLongDescription(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          long_description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRelatedNoteNames':: d.fn(help='`google.list.withRelatedNoteNames` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the related_note_names field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `related_note_names` field.\n', args=[]),
  withRelatedNoteNames(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_note_names: value,
        },
      },
    },
  },
  '#withRelatedUrl':: d.fn(help='`google.list[obj].withRelatedUrl` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the related_url field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRelatedUrlMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `related_url` field.\n', args=[]),
  withRelatedUrl(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_url: value,
        },
      },
    },
  },
  '#withRelatedUrlMixin':: d.fn(help='`google.list[obj].withRelatedUrlMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the related_url field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRelatedUrl](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `related_url` field.\n', args=[]),
  withRelatedUrlMixin(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          related_url+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withShortDescription':: d.fn(help='`google.string.withShortDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the short_description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `short_description` field.\n', args=[]),
  withShortDescription(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          short_description: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_container_analysis_note+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
