---
permalink: /iam_workload_identity_pool_provider/
---

# iam_workload_identity_pool_provider

`iam_workload_identity_pool_provider` represents the `google_iam_workload_identity_pool_provider` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAttributeCondition()`](#fn-withattributecondition)
* [`fn withAttributeMapping()`](#fn-withattributemapping)
* [`fn withAws()`](#fn-withaws)
* [`fn withAwsMixin()`](#fn-withawsmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withOidc()`](#fn-withoidc)
* [`fn withOidcMixin()`](#fn-withoidcmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWorkloadIdentityPoolId()`](#fn-withworkloadidentitypoolid)
* [`fn withWorkloadIdentityPoolProviderId()`](#fn-withworkloadidentitypoolproviderid)
* [`obj aws`](#obj-aws)
  * [`fn new()`](#fn-awsnew)
* [`obj oidc`](#obj-oidc)
  * [`fn new()`](#fn-oidcnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.iam_workload_identity_pool_provider.new` injects a new `google_iam_workload_identity_pool_provider` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.iam_workload_identity_pool_provider.new('some_id')

You can get the reference to the `id` field of the created `google.iam_workload_identity_pool_provider` using the reference:

    $._ref.google_iam_workload_identity_pool_provider.some_id.get('id')

This is the same as directly entering `"${ google_iam_workload_identity_pool_provider.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `attribute_condition` (`string`): [A Common Expression Language](https://opensource.google/projects/cel) expression, in
plain text, to restrict what otherwise valid authentication credentials issued by the
provider should not be accepted.

The expression must output a boolean representing whether to allow the federation.

The following keywords may be referenced in the expressions:
  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.
  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.
  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.

The maximum length of the attribute condition expression is 4096 characters. If
unspecified, all valid authentication credential are accepted.

The following example shows how to only allow credentials with a mapped &#39;google.groups&#39;
value of &#39;admins&#39;:
&#39;&#39;&#39;
&#34;&#39;admins&#39; in google.groups&#34;
&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.
  - `attribute_mapping` (`obj`): Maps attributes from authentication credentials issued by an external identity provider
to Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.

Each key must be a string specifying the Google Cloud IAM attribute to map to.

The following keys are supported:
  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value
    in IAM bindings. This is also the subject that appears in Cloud Logging logs.
    Cannot exceed 127 characters.
  * &#39;google.groups&#39;: Groups the external identity belongs to. You can grant groups
    access to resources using an IAM &#39;principalSet&#39; binding; access applies to all
    members of the group.

You can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;,
where &#39;{custom_attribute}&#39; is the name of the custom attribute to be mapped. You can
define a maximum of 50 custom attributes. The maximum length of a mapped attribute key
is 100 characters, and the key may only contain the characters [a-z0-9_].

You can reference these attributes in IAM policies to define fine-grained access for a
workload to Google Cloud resources. For example:
  * &#39;google.subject&#39;:
    &#39;principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}&#39;
  * &#39;google.groups&#39;:
    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}&#39;
  * &#39;attribute.{custom_attribute}&#39;:
    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}&#39;

Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
function that maps an identity provider credential to the normalized attribute specified
by the corresponding map key.

You can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of
the authentication credential issued by the provider.

The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
the total size of all mapped attributes must not exceed 8KB.

For AWS providers, the following rules apply:
  - If no attribute mapping is defined, the following default mapping applies:
    &#39;&#39;&#39;
    {
      &#34;google.subject&#34;:&#34;assertion.arn&#34;,
      &#34;attribute.aws_role&#34;:
        &#34;assertion.arn.contains(&#39;assumed-role&#39;)&#34;
        &#34; ? assertion.arn.extract(&#39;{account_arn}assumed-role/&#39;)&#34;
        &#34;   &#43; &#39;assumed-role/&#39;&#34;
        &#34;   &#43; assertion.arn.extract(&#39;assumed-role/{role_name}/&#39;)&#34;
        &#34; : assertion.arn&#34;,
    }
    &#39;&#39;&#39;
  - If any custom attribute mappings are defined, they must include a mapping to the
    &#39;google.subject&#39; attribute.

For OIDC providers, the following rules apply:
  - Custom attribute mappings must be defined, and must include a mapping to the
    &#39;google.subject&#39; attribute. For example, the following maps the &#39;sub&#39; claim of the
    incoming credential to the &#39;subject&#39; attribute on a Google token.
    &#39;&#39;&#39;
    {&#34;google.subject&#34;: &#34;assertion.sub&#34;}
    &#39;&#39;&#39; When `null`, the `attribute_mapping` field will be omitted from the resulting object.
  - `description` (`string`): A description for the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
However, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `workload_identity_pool_id` (`string`): The ID used for the pool, which is the final component of the pool resource name. This
value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
&#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `workload_identity_pool_provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name. This
value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
&#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `aws` (`list[obj]`): An Amazon Web Services identity provider. Not compatible with the property oidc. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.aws.new](#fn-iamworkloadidentitypoolproviderawsnew) constructor.
  - `oidc` (`list[obj]`): An OpenId Connect 1.0 identity provider. Not compatible with the property aws. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.oidc.new](#fn-iamworkloadidentitypoolprovideroidcnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.timeouts.new](#fn-iamworkloadidentitypoolprovidertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.iam_workload_identity_pool_provider.newAttrs` constructs a new object with attributes and blocks configured for the `iam_workload_identity_pool_provider`
Terraform resource.

Unlike [google.iam_workload_identity_pool_provider.new](#fn-iamworkloadidentitypoolprovidernew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `attribute_condition` (`string`): [A Common Expression Language](https://opensource.google/projects/cel) expression, in
plain text, to restrict what otherwise valid authentication credentials issued by the
provider should not be accepted.

The expression must output a boolean representing whether to allow the federation.

The following keywords may be referenced in the expressions:
  * &#39;assertion&#39;: JSON representing the authentication credential issued by the provider.
  * &#39;google&#39;: The Google attributes mapped from the assertion in the &#39;attribute_mappings&#39;.
  * &#39;attribute&#39;: The custom attributes mapped from the assertion in the &#39;attribute_mappings&#39;.

The maximum length of the attribute condition expression is 4096 characters. If
unspecified, all valid authentication credential are accepted.

The following example shows how to only allow credentials with a mapped &#39;google.groups&#39;
value of &#39;admins&#39;:
&#39;&#39;&#39;
&#34;&#39;admins&#39; in google.groups&#34;
&#39;&#39;&#39; When `null`, the `attribute_condition` field will be omitted from the resulting object.
  - `attribute_mapping` (`obj`): Maps attributes from authentication credentials issued by an external identity provider
to Google Cloud attributes, such as &#39;subject&#39; and &#39;segment&#39;.

Each key must be a string specifying the Google Cloud IAM attribute to map to.

The following keys are supported:
  * &#39;google.subject&#39;: The principal IAM is authenticating. You can reference this value
    in IAM bindings. This is also the subject that appears in Cloud Logging logs.
    Cannot exceed 127 characters.
  * &#39;google.groups&#39;: Groups the external identity belongs to. You can grant groups
    access to resources using an IAM &#39;principalSet&#39; binding; access applies to all
    members of the group.

You can also provide custom attributes by specifying &#39;attribute.{custom_attribute}&#39;,
where &#39;{custom_attribute}&#39; is the name of the custom attribute to be mapped. You can
define a maximum of 50 custom attributes. The maximum length of a mapped attribute key
is 100 characters, and the key may only contain the characters [a-z0-9_].

You can reference these attributes in IAM policies to define fine-grained access for a
workload to Google Cloud resources. For example:
  * &#39;google.subject&#39;:
    &#39;principal://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/subject/{value}&#39;
  * &#39;google.groups&#39;:
    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/group/{value}&#39;
  * &#39;attribute.{custom_attribute}&#39;:
    &#39;principalSet://iam.googleapis.com/projects/{project}/locations/{location}/workloadIdentityPools/{pool}/attribute.{custom_attribute}/{value}&#39;

Each value must be a [Common Expression Language](https://opensource.google/projects/cel)
function that maps an identity provider credential to the normalized attribute specified
by the corresponding map key.

You can use the &#39;assertion&#39; keyword in the expression to access a JSON representation of
the authentication credential issued by the provider.

The maximum length of an attribute mapping expression is 2048 characters. When evaluated,
the total size of all mapped attributes must not exceed 8KB.

For AWS providers, the following rules apply:
  - If no attribute mapping is defined, the following default mapping applies:
    &#39;&#39;&#39;
    {
      &#34;google.subject&#34;:&#34;assertion.arn&#34;,
      &#34;attribute.aws_role&#34;:
        &#34;assertion.arn.contains(&#39;assumed-role&#39;)&#34;
        &#34; ? assertion.arn.extract(&#39;{account_arn}assumed-role/&#39;)&#34;
        &#34;   &#43; &#39;assumed-role/&#39;&#34;
        &#34;   &#43; assertion.arn.extract(&#39;assumed-role/{role_name}/&#39;)&#34;
        &#34; : assertion.arn&#34;,
    }
    &#39;&#39;&#39;
  - If any custom attribute mappings are defined, they must include a mapping to the
    &#39;google.subject&#39; attribute.

For OIDC providers, the following rules apply:
  - Custom attribute mappings must be defined, and must include a mapping to the
    &#39;google.subject&#39; attribute. For example, the following maps the &#39;sub&#39; claim of the
    incoming credential to the &#39;subject&#39; attribute on a Google token.
    &#39;&#39;&#39;
    {&#34;google.subject&#34;: &#34;assertion.sub&#34;}
    &#39;&#39;&#39; When `null`, the `attribute_mapping` field will be omitted from the resulting object.
  - `description` (`string`): A description for the provider. Cannot exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `disabled` (`bool`): Whether the provider is disabled. You cannot use a disabled provider to exchange tokens.
However, existing tokens still grant access. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): A display name for the provider. Cannot exceed 32 characters. When `null`, the `display_name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `workload_identity_pool_id` (`string`): The ID used for the pool, which is the final component of the pool resource name. This
value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
&#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `workload_identity_pool_provider_id` (`string`): The ID for the provider, which becomes the final component of the resource name. This
value must be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
&#39;gcp-&#39; is reserved for use by Google, and may not be specified.
  - `aws` (`list[obj]`): An Amazon Web Services identity provider. Not compatible with the property oidc. When `null`, the `aws` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.aws.new](#fn-iamworkloadidentitypoolproviderawsnew) constructor.
  - `oidc` (`list[obj]`): An OpenId Connect 1.0 identity provider. Not compatible with the property aws. When `null`, the `oidc` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.oidc.new](#fn-iamworkloadidentitypoolprovideroidcnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.iam_workload_identity_pool_provider.timeouts.new](#fn-iamworkloadidentitypoolprovidertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `iam_workload_identity_pool_provider` resource into the root Terraform configuration.


### fn withAttributeCondition

```ts
withAttributeCondition()
```

`google.iam_workload_identity_pool_provider.withAttributeCondition` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the attribute_condition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `attribute_condition` field.


### fn withAttributeMapping

```ts
withAttributeMapping()
```

`google.iam_workload_identity_pool_provider.withAttributeMapping` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the attribute_mapping field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `attribute_mapping` field.


### fn withAws

```ts
withAws()
```

`google.iam_workload_identity_pool_provider.withAws` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the aws field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `aws` field.


### fn withAwsMixin

```ts
withAwsMixin()
```

`google.iam_workload_identity_pool_provider.withAwsMixin` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the aws field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.iam_workload_identity_pool_provider.withAws](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `aws` field.


### fn withDescription

```ts
withDescription()
```

`google.iam_workload_identity_pool_provider.withDescription` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDisabled

```ts
withDisabled()
```

`google.iam_workload_identity_pool_provider.withDisabled` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `disabled` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.iam_workload_identity_pool_provider.withDisplayName` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withOidc

```ts
withOidc()
```

`google.iam_workload_identity_pool_provider.withOidc` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the oidc field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `oidc` field.


### fn withOidcMixin

```ts
withOidcMixin()
```

`google.iam_workload_identity_pool_provider.withOidcMixin` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the oidc field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.iam_workload_identity_pool_provider.withOidc](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `oidc` field.


### fn withProject

```ts
withProject()
```

`google.iam_workload_identity_pool_provider.withProject` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.iam_workload_identity_pool_provider.withTimeouts` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.iam_workload_identity_pool_provider.withTimeoutsMixin` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.iam_workload_identity_pool_provider.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withWorkloadIdentityPoolId

```ts
withWorkloadIdentityPoolId()
```

`google.iam_workload_identity_pool_provider.withWorkloadIdentityPoolId` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the workload_identity_pool_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `workload_identity_pool_id` field.


### fn withWorkloadIdentityPoolProviderId

```ts
withWorkloadIdentityPoolProviderId()
```

`google.iam_workload_identity_pool_provider.withWorkloadIdentityPoolProviderId` constructs a mixin object that can be merged into the `iam_workload_identity_pool_provider`
Terraform resource block to set or update the workload_identity_pool_provider_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `workload_identity_pool_provider_id` field.


## obj aws



### fn aws.new

```ts
new()
```


`google.iam_workload_identity_pool_provider.aws.new` constructs a new object with attributes and blocks configured for the `aws`
Terraform sub block.



**Args**:
  - `account_id` (`string`): The AWS account ID.

**Returns**:
  - An attribute object that represents the `aws` sub block.


## obj oidc



### fn oidc.new

```ts
new()
```


`google.iam_workload_identity_pool_provider.oidc.new` constructs a new object with attributes and blocks configured for the `oidc`
Terraform sub block.



**Args**:
  - `allowed_audiences` (`list`): Acceptable values for the &#39;aud&#39; field (audience) in the OIDC token. Token exchange
requests are rejected if the token audience does not match one of the configured
values. Each audience may be at most 256 characters. A maximum of 10 audiences may
be configured.

If this list is empty, the OIDC token audience must be equal to the full canonical
resource name of the WorkloadIdentityPoolProvider, with or without the HTTPS prefix.
For example:
&#39;&#39;&#39;
//iam.googleapis.com/projects/&lt;project-number&gt;/locations/&lt;location&gt;/workloadIdentityPools/&lt;pool-id&gt;/providers/&lt;provider-id&gt;
https://iam.googleapis.com/projects/&lt;project-number&gt;/locations/&lt;location&gt;/workloadIdentityPools/&lt;pool-id&gt;/providers/&lt;provider-id&gt;
&#39;&#39;&#39; When `null`, the `allowed_audiences` field will be omitted from the resulting object.
  - `issuer_uri` (`string`): The OIDC issuer URL.

**Returns**:
  - An attribute object that represents the `oidc` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.iam_workload_identity_pool_provider.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
