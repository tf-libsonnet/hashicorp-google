local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='binary_authorization_policy', url='', help='`binary_authorization_policy` represents the `google_binary_authorization_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  admission_whitelist_patterns:: {
    '#new':: d.fn(help='\n`google.binary_authorization_policy.admission_whitelist_patterns.new` constructs a new object with attributes and blocks configured for the `admission_whitelist_patterns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name_pattern` (`string`): An image name pattern to whitelist, in the form\n&#39;registry/path/to/image&#39;. This supports a trailing * as a\nwildcard, but this is allowed only in text after the registry/\npart.\n\n**Returns**:\n  - An attribute object that represents the `admission_whitelist_patterns` sub block.\n', args=[]),
    new(
      name_pattern
    ):: std.prune(a={
      name_pattern: name_pattern,
    }),
  },
  cluster_admission_rules:: {
    '#new':: d.fn(help='\n`google.binary_authorization_policy.cluster_admission_rules.new` constructs a new object with attributes and blocks configured for the `cluster_admission_rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cluster` (`string`): \n  - `enforcement_mode` (`string`): The action when a pod creation is denied by the admission rule. Possible values: [&#34;ENFORCED_BLOCK_AND_AUDIT_LOG&#34;, &#34;DRYRUN_AUDIT_LOG_ONLY&#34;]\n  - `evaluation_mode` (`string`): How this admission rule will be evaluated. Possible values: [&#34;ALWAYS_ALLOW&#34;, &#34;REQUIRE_ATTESTATION&#34;, &#34;ALWAYS_DENY&#34;]\n  - `require_attestations_by` (`list`): The resource names of the attestors that must attest to a\ncontainer image. If the attestor is in a different project from the\npolicy, it should be specified in the format &#39;projects/*/attestors/*&#39;.\nEach attestor must exist before a policy can reference it. To add an\nattestor to a policy the principal issuing the policy change\nrequest must be able to read the attestor resource.\n\nNote: this field must be non-empty when the evaluation_mode field\nspecifies REQUIRE_ATTESTATION, otherwise it must be empty. When `null`, the `require_attestations_by` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cluster_admission_rules` sub block.\n', args=[]),
    new(
      cluster,
      enforcement_mode,
      evaluation_mode,
      require_attestations_by=null
    ):: std.prune(a={
      cluster: cluster,
      enforcement_mode: enforcement_mode,
      evaluation_mode: evaluation_mode,
      require_attestations_by: require_attestations_by,
    }),
  },
  default_admission_rule:: {
    '#new':: d.fn(help='\n`google.binary_authorization_policy.default_admission_rule.new` constructs a new object with attributes and blocks configured for the `default_admission_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enforcement_mode` (`string`): The action when a pod creation is denied by the admission rule. Possible values: [&#34;ENFORCED_BLOCK_AND_AUDIT_LOG&#34;, &#34;DRYRUN_AUDIT_LOG_ONLY&#34;]\n  - `evaluation_mode` (`string`): How this admission rule will be evaluated. Possible values: [&#34;ALWAYS_ALLOW&#34;, &#34;REQUIRE_ATTESTATION&#34;, &#34;ALWAYS_DENY&#34;]\n  - `require_attestations_by` (`list`): The resource names of the attestors that must attest to a\ncontainer image. If the attestor is in a different project from the\npolicy, it should be specified in the format &#39;projects/*/attestors/*&#39;.\nEach attestor must exist before a policy can reference it. To add an\nattestor to a policy the principal issuing the policy change\nrequest must be able to read the attestor resource.\n\nNote: this field must be non-empty when the evaluation_mode field\nspecifies REQUIRE_ATTESTATION, otherwise it must be empty. When `null`, the `require_attestations_by` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `default_admission_rule` sub block.\n', args=[]),
    new(
      enforcement_mode,
      evaluation_mode,
      require_attestations_by=null
    ):: std.prune(a={
      enforcement_mode: enforcement_mode,
      evaluation_mode: evaluation_mode,
      require_attestations_by: require_attestations_by,
    }),
  },
  '#new':: d.fn(help="\n`google.binary_authorization_policy.new` injects a new `google_binary_authorization_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.binary_authorization_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.binary_authorization_policy` using the reference:\n\n    $._ref.google_binary_authorization_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_binary_authorization_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A descriptive comment. When `null`, the `description` field will be omitted from the resulting object.\n  - `global_policy_evaluation_mode` (`string`): Controls the evaluation of a Google-maintained global admission policy\nfor common system-level images. Images not covered by the global\npolicy will be subject to the project admission policy. Possible values: [\u0026#34;ENABLE\u0026#34;, \u0026#34;DISABLE\u0026#34;] When `null`, the `global_policy_evaluation_mode` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `admission_whitelist_patterns` (`list[obj]`): A whitelist of image patterns to exclude from admission rules. If an\nimage\u0026#39;s name matches a whitelist pattern, the image\u0026#39;s admission\nrequests will always be permitted regardless of your admission rules. When `null`, the `admission_whitelist_patterns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.admission_whitelist_patterns.new](#fn-admission_whitelist_patternsnew) constructor.\n  - `cluster_admission_rules` (`list[obj]`): Per-cluster admission rules. An admission rule specifies either that\nall container images used in a pod creation request must be attested\nto by one or more attestors, that all pod creations will be allowed,\nor that all pod creations will be denied. There can be at most one\nadmission rule per cluster spec.\n\n\nIdentifier format: \u0026#39;{{location}}.{{clusterId}}\u0026#39;.\nA location is either a compute zone (e.g. \u0026#39;us-central1-a\u0026#39;) or a region\n(e.g. \u0026#39;us-central1\u0026#39;). When `null`, the `cluster_admission_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.cluster_admission_rules.new](#fn-cluster_admission_rulesnew) constructor.\n  - `default_admission_rule` (`list[obj]`): Default admission rule for a cluster without a per-cluster admission\nrule. When `null`, the `default_admission_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.default_admission_rule.new](#fn-default_admission_rulenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    admission_whitelist_patterns=null,
    cluster_admission_rules=null,
    default_admission_rule=null,
    description=null,
    global_policy_evaluation_mode=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_binary_authorization_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      admission_whitelist_patterns=admission_whitelist_patterns,
      cluster_admission_rules=cluster_admission_rules,
      default_admission_rule=default_admission_rule,
      description=description,
      global_policy_evaluation_mode=global_policy_evaluation_mode,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.binary_authorization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `binary_authorization_policy`\nTerraform resource.\n\nUnlike [google.binary_authorization_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A descriptive comment. When `null`, the `description` field will be omitted from the resulting object.\n  - `global_policy_evaluation_mode` (`string`): Controls the evaluation of a Google-maintained global admission policy\nfor common system-level images. Images not covered by the global\npolicy will be subject to the project admission policy. Possible values: [&#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `global_policy_evaluation_mode` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `admission_whitelist_patterns` (`list[obj]`): A whitelist of image patterns to exclude from admission rules. If an\nimage&#39;s name matches a whitelist pattern, the image&#39;s admission\nrequests will always be permitted regardless of your admission rules. When `null`, the `admission_whitelist_patterns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.admission_whitelist_patterns.new](#fn-admission_whitelist_patternsnew) constructor.\n  - `cluster_admission_rules` (`list[obj]`): Per-cluster admission rules. An admission rule specifies either that\nall container images used in a pod creation request must be attested\nto by one or more attestors, that all pod creations will be allowed,\nor that all pod creations will be denied. There can be at most one\nadmission rule per cluster spec.\n\n\nIdentifier format: &#39;{{location}}.{{clusterId}}&#39;.\nA location is either a compute zone (e.g. &#39;us-central1-a&#39;) or a region\n(e.g. &#39;us-central1&#39;). When `null`, the `cluster_admission_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.cluster_admission_rules.new](#fn-cluster_admission_rulesnew) constructor.\n  - `default_admission_rule` (`list[obj]`): Default admission rule for a cluster without a per-cluster admission\nrule. When `null`, the `default_admission_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.default_admission_rule.new](#fn-default_admission_rulenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `binary_authorization_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    admission_whitelist_patterns=null,
    cluster_admission_rules=null,
    default_admission_rule=null,
    description=null,
    global_policy_evaluation_mode=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    admission_whitelist_patterns: admission_whitelist_patterns,
    cluster_admission_rules: cluster_admission_rules,
    default_admission_rule: default_admission_rule,
    description: description,
    global_policy_evaluation_mode: global_policy_evaluation_mode,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.binary_authorization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAdmissionWhitelistPatterns':: d.fn(help='`google.list[obj].withAdmissionWhitelistPatterns` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the admission_whitelist_patterns field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdmissionWhitelistPatternsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `admission_whitelist_patterns` field.\n', args=[]),
  withAdmissionWhitelistPatterns(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          admission_whitelist_patterns: value,
        },
      },
    },
  },
  '#withAdmissionWhitelistPatternsMixin':: d.fn(help='`google.list[obj].withAdmissionWhitelistPatternsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the admission_whitelist_patterns field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdmissionWhitelistPatterns](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `admission_whitelist_patterns` field.\n', args=[]),
  withAdmissionWhitelistPatternsMixin(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          admission_whitelist_patterns+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterAdmissionRules':: d.fn(help='`google.list[obj].withClusterAdmissionRules` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_admission_rules field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withClusterAdmissionRulesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_admission_rules` field.\n', args=[]),
  withClusterAdmissionRules(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          cluster_admission_rules: value,
        },
      },
    },
  },
  '#withClusterAdmissionRulesMixin':: d.fn(help='`google.list[obj].withClusterAdmissionRulesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cluster_admission_rules field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withClusterAdmissionRules](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cluster_admission_rules` field.\n', args=[]),
  withClusterAdmissionRulesMixin(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          cluster_admission_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDefaultAdmissionRule':: d.fn(help='`google.list[obj].withDefaultAdmissionRule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_admission_rule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDefaultAdmissionRuleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_admission_rule` field.\n', args=[]),
  withDefaultAdmissionRule(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          default_admission_rule: value,
        },
      },
    },
  },
  '#withDefaultAdmissionRuleMixin':: d.fn(help='`google.list[obj].withDefaultAdmissionRuleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the default_admission_rule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultAdmissionRule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `default_admission_rule` field.\n', args=[]),
  withDefaultAdmissionRuleMixin(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          default_admission_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGlobalPolicyEvaluationMode':: d.fn(help='`google.string.withGlobalPolicyEvaluationMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the global_policy_evaluation_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `global_policy_evaluation_mode` field.\n', args=[]),
  withGlobalPolicyEvaluationMode(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          global_policy_evaluation_mode: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_binary_authorization_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
