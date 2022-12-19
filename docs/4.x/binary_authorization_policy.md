---
permalink: /binary_authorization_policy/
---

# binary_authorization_policy

`binary_authorization_policy` represents the `google_binary_authorization_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdmissionWhitelistPatterns()`](#fn-withadmissionwhitelistpatterns)
* [`fn withAdmissionWhitelistPatternsMixin()`](#fn-withadmissionwhitelistpatternsmixin)
* [`fn withClusterAdmissionRules()`](#fn-withclusteradmissionrules)
* [`fn withClusterAdmissionRulesMixin()`](#fn-withclusteradmissionrulesmixin)
* [`fn withDefaultAdmissionRule()`](#fn-withdefaultadmissionrule)
* [`fn withDefaultAdmissionRuleMixin()`](#fn-withdefaultadmissionrulemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGlobalPolicyEvaluationMode()`](#fn-withglobalpolicyevaluationmode)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj admission_whitelist_patterns`](#obj-admission_whitelist_patterns)
  * [`fn new()`](#fn-admission_whitelist_patternsnew)
* [`obj cluster_admission_rules`](#obj-cluster_admission_rules)
  * [`fn new()`](#fn-cluster_admission_rulesnew)
* [`obj default_admission_rule`](#obj-default_admission_rule)
  * [`fn new()`](#fn-default_admission_rulenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.binary_authorization_policy.new` injects a new `google_binary_authorization_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.binary_authorization_policy.new('some_id')

You can get the reference to the `id` field of the created `google.binary_authorization_policy` using the reference:

    $._ref.google_binary_authorization_policy.some_id.get('id')

This is the same as directly entering `"${ google_binary_authorization_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A descriptive comment. When `null`, the `description` field will be omitted from the resulting object.
  - `global_policy_evaluation_mode` (`string`): Controls the evaluation of a Google-maintained global admission policy
for common system-level images. Images not covered by the global
policy will be subject to the project admission policy. Possible values: [&#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `global_policy_evaluation_mode` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `admission_whitelist_patterns` (`list[obj]`): A whitelist of image patterns to exclude from admission rules. If an
image&#39;s name matches a whitelist pattern, the image&#39;s admission
requests will always be permitted regardless of your admission rules. When `null`, the `admission_whitelist_patterns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.admission_whitelist_patterns.new](#fn-binary_authorization_policyadmission_whitelist_patternsnew) constructor.
  - `cluster_admission_rules` (`list[obj]`): Per-cluster admission rules. An admission rule specifies either that
all container images used in a pod creation request must be attested
to by one or more attestors, that all pod creations will be allowed,
or that all pod creations will be denied. There can be at most one
admission rule per cluster spec.


Identifier format: &#39;{{location}}.{{clusterId}}&#39;.
A location is either a compute zone (e.g. &#39;us-central1-a&#39;) or a region
(e.g. &#39;us-central1&#39;). When `null`, the `cluster_admission_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.cluster_admission_rules.new](#fn-binary_authorization_policycluster_admission_rulesnew) constructor.
  - `default_admission_rule` (`list[obj]`): Default admission rule for a cluster without a per-cluster admission
rule. When `null`, the `default_admission_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.default_admission_rule.new](#fn-binary_authorization_policydefault_admission_rulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.timeouts.new](#fn-binary_authorization_policytimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.binary_authorization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `binary_authorization_policy`
Terraform resource.

Unlike [google.binary_authorization_policy.new](#fn-binary_authorization_policynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A descriptive comment. When `null`, the `description` field will be omitted from the resulting object.
  - `global_policy_evaluation_mode` (`string`): Controls the evaluation of a Google-maintained global admission policy
for common system-level images. Images not covered by the global
policy will be subject to the project admission policy. Possible values: [&#34;ENABLE&#34;, &#34;DISABLE&#34;] When `null`, the `global_policy_evaluation_mode` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `admission_whitelist_patterns` (`list[obj]`): A whitelist of image patterns to exclude from admission rules. If an
image&#39;s name matches a whitelist pattern, the image&#39;s admission
requests will always be permitted regardless of your admission rules. When `null`, the `admission_whitelist_patterns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.admission_whitelist_patterns.new](#fn-binary_authorization_policyadmission_whitelist_patternsnew) constructor.
  - `cluster_admission_rules` (`list[obj]`): Per-cluster admission rules. An admission rule specifies either that
all container images used in a pod creation request must be attested
to by one or more attestors, that all pod creations will be allowed,
or that all pod creations will be denied. There can be at most one
admission rule per cluster spec.


Identifier format: &#39;{{location}}.{{clusterId}}&#39;.
A location is either a compute zone (e.g. &#39;us-central1-a&#39;) or a region
(e.g. &#39;us-central1&#39;). When `null`, the `cluster_admission_rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.cluster_admission_rules.new](#fn-binary_authorization_policycluster_admission_rulesnew) constructor.
  - `default_admission_rule` (`list[obj]`): Default admission rule for a cluster without a per-cluster admission
rule. When `null`, the `default_admission_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.default_admission_rule.new](#fn-binary_authorization_policydefault_admission_rulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.binary_authorization_policy.timeouts.new](#fn-binary_authorization_policytimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `binary_authorization_policy` resource into the root Terraform configuration.


### fn withAdmissionWhitelistPatterns

```ts
withAdmissionWhitelistPatterns()
```

`google.list[obj].withAdmissionWhitelistPatterns` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the admission_whitelist_patterns field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdmissionWhitelistPatternsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `admission_whitelist_patterns` field.


### fn withAdmissionWhitelistPatternsMixin

```ts
withAdmissionWhitelistPatternsMixin()
```

`google.list[obj].withAdmissionWhitelistPatternsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the admission_whitelist_patterns field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdmissionWhitelistPatterns](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `admission_whitelist_patterns` field.


### fn withClusterAdmissionRules

```ts
withClusterAdmissionRules()
```

`google.list[obj].withClusterAdmissionRules` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_admission_rules field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClusterAdmissionRulesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_admission_rules` field.


### fn withClusterAdmissionRulesMixin

```ts
withClusterAdmissionRulesMixin()
```

`google.list[obj].withClusterAdmissionRulesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster_admission_rules field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withClusterAdmissionRules](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster_admission_rules` field.


### fn withDefaultAdmissionRule

```ts
withDefaultAdmissionRule()
```

`google.list[obj].withDefaultAdmissionRule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_admission_rule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultAdmissionRuleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_admission_rule` field.


### fn withDefaultAdmissionRuleMixin

```ts
withDefaultAdmissionRuleMixin()
```

`google.list[obj].withDefaultAdmissionRuleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_admission_rule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultAdmissionRule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_admission_rule` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withGlobalPolicyEvaluationMode

```ts
withGlobalPolicyEvaluationMode()
```

`google.string.withGlobalPolicyEvaluationMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the global_policy_evaluation_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `global_policy_evaluation_mode` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj admission_whitelist_patterns



### fn admission_whitelist_patterns.new

```ts
new()
```


`google.binary_authorization_policy.admission_whitelist_patterns.new` constructs a new object with attributes and blocks configured for the `admission_whitelist_patterns`
Terraform sub block.



**Args**:
  - `name_pattern` (`string`): An image name pattern to whitelist, in the form
&#39;registry/path/to/image&#39;. This supports a trailing * as a
wildcard, but this is allowed only in text after the registry/
part.

**Returns**:
  - An attribute object that represents the `admission_whitelist_patterns` sub block.


## obj cluster_admission_rules



### fn cluster_admission_rules.new

```ts
new()
```


`google.binary_authorization_policy.cluster_admission_rules.new` constructs a new object with attributes and blocks configured for the `cluster_admission_rules`
Terraform sub block.



**Args**:
  - `cluster` (`string`): 
  - `enforcement_mode` (`string`): The action when a pod creation is denied by the admission rule. Possible values: [&#34;ENFORCED_BLOCK_AND_AUDIT_LOG&#34;, &#34;DRYRUN_AUDIT_LOG_ONLY&#34;]
  - `evaluation_mode` (`string`): How this admission rule will be evaluated. Possible values: [&#34;ALWAYS_ALLOW&#34;, &#34;REQUIRE_ATTESTATION&#34;, &#34;ALWAYS_DENY&#34;]
  - `require_attestations_by` (`list`): The resource names of the attestors that must attest to a
container image. If the attestor is in a different project from the
policy, it should be specified in the format &#39;projects/*/attestors/*&#39;.
Each attestor must exist before a policy can reference it. To add an
attestor to a policy the principal issuing the policy change
request must be able to read the attestor resource.

Note: this field must be non-empty when the evaluation_mode field
specifies REQUIRE_ATTESTATION, otherwise it must be empty. When `null`, the `require_attestations_by` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `cluster_admission_rules` sub block.


## obj default_admission_rule



### fn default_admission_rule.new

```ts
new()
```


`google.binary_authorization_policy.default_admission_rule.new` constructs a new object with attributes and blocks configured for the `default_admission_rule`
Terraform sub block.



**Args**:
  - `enforcement_mode` (`string`): The action when a pod creation is denied by the admission rule. Possible values: [&#34;ENFORCED_BLOCK_AND_AUDIT_LOG&#34;, &#34;DRYRUN_AUDIT_LOG_ONLY&#34;]
  - `evaluation_mode` (`string`): How this admission rule will be evaluated. Possible values: [&#34;ALWAYS_ALLOW&#34;, &#34;REQUIRE_ATTESTATION&#34;, &#34;ALWAYS_DENY&#34;]
  - `require_attestations_by` (`list`): The resource names of the attestors that must attest to a
container image. If the attestor is in a different project from the
policy, it should be specified in the format &#39;projects/*/attestors/*&#39;.
Each attestor must exist before a policy can reference it. To add an
attestor to a policy the principal issuing the policy change
request must be able to read the attestor resource.

Note: this field must be non-empty when the evaluation_mode field
specifies REQUIRE_ATTESTATION, otherwise it must be empty. When `null`, the `require_attestations_by` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `default_admission_rule` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.binary_authorization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
