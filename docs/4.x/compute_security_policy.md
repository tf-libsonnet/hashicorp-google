---
permalink: /compute_security_policy/
---

# compute_security_policy

`compute_security_policy` represents the `google_compute_security_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdaptiveProtectionConfig()`](#fn-withadaptiveprotectionconfig)
* [`fn withAdaptiveProtectionConfigMixin()`](#fn-withadaptiveprotectionconfigmixin)
* [`fn withAdvancedOptionsConfig()`](#fn-withadvancedoptionsconfig)
* [`fn withAdvancedOptionsConfigMixin()`](#fn-withadvancedoptionsconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRecaptchaOptionsConfig()`](#fn-withrecaptchaoptionsconfig)
* [`fn withRecaptchaOptionsConfigMixin()`](#fn-withrecaptchaoptionsconfigmixin)
* [`fn withRule()`](#fn-withrule)
* [`fn withRuleMixin()`](#fn-withrulemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj adaptive_protection_config`](#obj-adaptive_protection_config)
  * [`fn new()`](#fn-adaptive_protection_confignew)
  * [`obj adaptive_protection_config.layer_7_ddos_defense_config`](#obj-adaptive_protection_configlayer_7_ddos_defense_config)
    * [`fn new()`](#fn-adaptive_protection_configlayer_7_ddos_defense_confignew)
* [`obj advanced_options_config`](#obj-advanced_options_config)
  * [`fn new()`](#fn-advanced_options_confignew)
  * [`obj advanced_options_config.json_custom_config`](#obj-advanced_options_configjson_custom_config)
    * [`fn new()`](#fn-advanced_options_configjson_custom_confignew)
* [`obj recaptcha_options_config`](#obj-recaptcha_options_config)
  * [`fn new()`](#fn-recaptcha_options_confignew)
* [`obj rule`](#obj-rule)
  * [`fn new()`](#fn-rulenew)
  * [`obj rule.header_action`](#obj-ruleheader_action)
    * [`fn new()`](#fn-ruleheader_actionnew)
    * [`obj rule.header_action.request_headers_to_adds`](#obj-ruleheader_actionrequest_headers_to_adds)
      * [`fn new()`](#fn-ruleheader_actionrequest_headers_to_addsnew)
  * [`obj rule.match`](#obj-rulematch)
    * [`fn new()`](#fn-rulematchnew)
    * [`obj rule.match.config`](#obj-rulematchconfig)
      * [`fn new()`](#fn-rulematchconfignew)
    * [`obj rule.match.expr`](#obj-rulematchexpr)
      * [`fn new()`](#fn-rulematchexprnew)
  * [`obj rule.rate_limit_options`](#obj-rulerate_limit_options)
    * [`fn new()`](#fn-rulerate_limit_optionsnew)
    * [`obj rule.rate_limit_options.ban_threshold`](#obj-rulerate_limit_optionsban_threshold)
      * [`fn new()`](#fn-rulerate_limit_optionsban_thresholdnew)
    * [`obj rule.rate_limit_options.exceed_redirect_options`](#obj-rulerate_limit_optionsexceed_redirect_options)
      * [`fn new()`](#fn-rulerate_limit_optionsexceed_redirect_optionsnew)
    * [`obj rule.rate_limit_options.rate_limit_threshold`](#obj-rulerate_limit_optionsrate_limit_threshold)
      * [`fn new()`](#fn-rulerate_limit_optionsrate_limit_thresholdnew)
  * [`obj rule.redirect_options`](#obj-ruleredirect_options)
    * [`fn new()`](#fn-ruleredirect_optionsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_security_policy.new` injects a new `google_compute_security_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_security_policy.new('some_id')

You can get the reference to the `id` field of the created `google.compute_security_policy` using the reference:

    $._ref.google_compute_security_policy.some_id.get('id')

This is the same as directly entering `"${ google_compute_security_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this security policy. Max size is 2048. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the security policy.
  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type indicates the intended use of the security policy. CLOUD_ARMOR - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache. When `null`, the `type` field will be omitted from the resulting object.
  - `adaptive_protection_config` (`list[obj]`): Adaptive Protection Config of this security policy. When `null`, the `adaptive_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.adaptive_protection_config.new](#fn-adaptive_protection_confignew) constructor.
  - `advanced_options_config` (`list[obj]`): Advanced Options Config of this security policy. When `null`, the `advanced_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.advanced_options_config.new](#fn-advanced_options_confignew) constructor.
  - `recaptcha_options_config` (`list[obj]`): reCAPTCHA configuration options to be applied for the security policy. When `null`, the `recaptcha_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.recaptcha_options_config.new](#fn-recaptcha_options_confignew) constructor.
  - `rule` (`list[obj]`): The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match &#34;*&#34;). If no rules are provided when creating a security policy, a default rule with action &#34;allow&#34; will be added. When `null`, the `rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.new](#fn-rulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_security_policy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_security_policy`
Terraform resource.

Unlike [google.compute_security_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this security policy. Max size is 2048. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): The name of the security policy.
  - `project` (`string`): The project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type indicates the intended use of the security policy. CLOUD_ARMOR - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. CLOUD_ARMOR_EDGE - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google&#39;s cache. When `null`, the `type` field will be omitted from the resulting object.
  - `adaptive_protection_config` (`list[obj]`): Adaptive Protection Config of this security policy. When `null`, the `adaptive_protection_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.adaptive_protection_config.new](#fn-adaptive_protection_confignew) constructor.
  - `advanced_options_config` (`list[obj]`): Advanced Options Config of this security policy. When `null`, the `advanced_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.advanced_options_config.new](#fn-advanced_options_confignew) constructor.
  - `recaptcha_options_config` (`list[obj]`): reCAPTCHA configuration options to be applied for the security policy. When `null`, the `recaptcha_options_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.recaptcha_options_config.new](#fn-recaptcha_options_confignew) constructor.
  - `rule` (`list[obj]`): The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match &#34;*&#34;). If no rules are provided when creating a security policy, a default rule with action &#34;allow&#34; will be added. When `null`, the `rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.new](#fn-rulenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_security_policy` resource into the root Terraform configuration.


### fn withAdaptiveProtectionConfig

```ts
withAdaptiveProtectionConfig()
```

`google.list[obj].withAdaptiveProtectionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the adaptive_protection_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdaptiveProtectionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `adaptive_protection_config` field.


### fn withAdaptiveProtectionConfigMixin

```ts
withAdaptiveProtectionConfigMixin()
```

`google.list[obj].withAdaptiveProtectionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the adaptive_protection_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdaptiveProtectionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `adaptive_protection_config` field.


### fn withAdvancedOptionsConfig

```ts
withAdvancedOptionsConfig()
```

`google.list[obj].withAdvancedOptionsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_options_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdvancedOptionsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_options_config` field.


### fn withAdvancedOptionsConfigMixin

```ts
withAdvancedOptionsConfigMixin()
```

`google.list[obj].withAdvancedOptionsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_options_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedOptionsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_options_config` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRecaptchaOptionsConfig

```ts
withRecaptchaOptionsConfig()
```

`google.list[obj].withRecaptchaOptionsConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recaptcha_options_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRecaptchaOptionsConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recaptcha_options_config` field.


### fn withRecaptchaOptionsConfigMixin

```ts
withRecaptchaOptionsConfigMixin()
```

`google.list[obj].withRecaptchaOptionsConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the recaptcha_options_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRecaptchaOptionsConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `recaptcha_options_config` field.


### fn withRule

```ts
withRule()
```

`google.list[obj].withRule` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rule field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRuleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rule` field.


### fn withRuleMixin

```ts
withRuleMixin()
```

`google.list[obj].withRuleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rule field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRule](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rule` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj adaptive_protection_config



### fn adaptive_protection_config.new

```ts
new()
```


`google.compute_security_policy.adaptive_protection_config.new` constructs a new object with attributes and blocks configured for the `adaptive_protection_config`
Terraform sub block.



**Args**:
  - `layer_7_ddos_defense_config` (`list[obj]`): Layer 7 DDoS Defense Config of this security policy When `null`, the `layer_7_ddos_defense_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.adaptive_protection_config.layer_7_ddos_defense_config.new](#fn-adaptive_protection_configlayer_7_ddos_defense_confignew) constructor.

**Returns**:
  - An attribute object that represents the `adaptive_protection_config` sub block.


## obj adaptive_protection_config.layer_7_ddos_defense_config



### fn adaptive_protection_config.layer_7_ddos_defense_config.new

```ts
new()
```


`google.compute_security_policy.adaptive_protection_config.layer_7_ddos_defense_config.new` constructs a new object with attributes and blocks configured for the `layer_7_ddos_defense_config`
Terraform sub block.



**Args**:
  - `enable` (`bool`): If set to true, enables CAAP for L7 DDoS detection. When `null`, the `enable` field will be omitted from the resulting object.
  - `rule_visibility` (`string`): Rule visibility. Supported values include: &#34;STANDARD&#34;, &#34;PREMIUM&#34;. When `null`, the `rule_visibility` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `layer_7_ddos_defense_config` sub block.


## obj advanced_options_config



### fn advanced_options_config.new

```ts
new()
```


`google.compute_security_policy.advanced_options_config.new` constructs a new object with attributes and blocks configured for the `advanced_options_config`
Terraform sub block.



**Args**:
  - `json_parsing` (`string`): JSON body parsing. Supported values include: &#34;DISABLED&#34;, &#34;STANDARD&#34;. When `null`, the `json_parsing` field will be omitted from the resulting object.
  - `log_level` (`string`): Logging level. Supported values include: &#34;NORMAL&#34;, &#34;VERBOSE&#34;. When `null`, the `log_level` field will be omitted from the resulting object.
  - `json_custom_config` (`list[obj]`): Custom configuration to apply the JSON parsing. Only applicable when JSON parsing is set to STANDARD. When `null`, the `json_custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.advanced_options_config.json_custom_config.new](#fn-advanced_options_configjson_custom_confignew) constructor.

**Returns**:
  - An attribute object that represents the `advanced_options_config` sub block.


## obj advanced_options_config.json_custom_config



### fn advanced_options_config.json_custom_config.new

```ts
new()
```


`google.compute_security_policy.advanced_options_config.json_custom_config.new` constructs a new object with attributes and blocks configured for the `json_custom_config`
Terraform sub block.



**Args**:
  - `content_types` (`list`): A list of custom Content-Type header values to apply the JSON parsing.

**Returns**:
  - An attribute object that represents the `json_custom_config` sub block.


## obj recaptcha_options_config



### fn recaptcha_options_config.new

```ts
new()
```


`google.compute_security_policy.recaptcha_options_config.new` constructs a new object with attributes and blocks configured for the `recaptcha_options_config`
Terraform sub block.



**Args**:
  - `redirect_site_key` (`string`): A field to supply a reCAPTCHA site key to be used for all the rules using the redirect action with the type of GOOGLE_RECAPTCHA under the security policy. The specified site key needs to be created from the reCAPTCHA API. The user is responsible for the validity of the specified site key. If not specified, a Google-managed site key is used.

**Returns**:
  - An attribute object that represents the `recaptcha_options_config` sub block.


## obj rule



### fn rule.new

```ts
new()
```


`google.compute_security_policy.rule.new` constructs a new object with attributes and blocks configured for the `rule`
Terraform sub block.



**Args**:
  - `action` (`string`): Action to take when match matches the request.
  - `description` (`string`): An optional description of this rule. Max size is 64. When `null`, the `description` field will be omitted from the resulting object.
  - `preview` (`bool`): When set to true, the action specified above is not enforced. Stackdriver logs for requests that trigger a preview action are annotated as such. When `null`, the `preview` field will be omitted from the resulting object.
  - `priority` (`number`): An unique positive integer indicating the priority of evaluation for a rule. Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.
  - `header_action` (`list[obj]`): Additional actions that are performed on headers. When `null`, the `header_action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.header_action.new](#fn-ruleheader_actionnew) constructor.
  - `match` (`list[obj]`): A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding action is enforced. When `null`, the `match` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.match.new](#fn-rulematchnew) constructor.
  - `rate_limit_options` (`list[obj]`): Rate limit threshold for this security policy. Must be specified if the action is &#34;rate_based_ban&#34; or &#34;throttle&#34;. Cannot be specified for any other actions. When `null`, the `rate_limit_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.rate_limit_options.new](#fn-rulerate_limit_optionsnew) constructor.
  - `redirect_options` (`list[obj]`): Parameters defining the redirect action. Cannot be specified for any other actions. When `null`, the `redirect_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.redirect_options.new](#fn-ruleredirect_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `rule` sub block.


## obj rule.header_action



### fn rule.header_action.new

```ts
new()
```


`google.compute_security_policy.rule.header_action.new` constructs a new object with attributes and blocks configured for the `header_action`
Terraform sub block.



**Args**:
  - `request_headers_to_adds` (`list[obj]`): The list of request headers to add or overwrite if they&#39;re already present. When `null`, the `request_headers_to_adds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.header_action.request_headers_to_adds.new](#fn-rulerulerequest_headers_to_addsnew) constructor.

**Returns**:
  - An attribute object that represents the `header_action` sub block.


## obj rule.header_action.request_headers_to_adds



### fn rule.header_action.request_headers_to_adds.new

```ts
new()
```


`google.compute_security_policy.rule.header_action.request_headers_to_adds.new` constructs a new object with attributes and blocks configured for the `request_headers_to_adds`
Terraform sub block.



**Args**:
  - `header_name` (`string`): The name of the header to set.
  - `header_value` (`string`): The value to set the named header to. When `null`, the `header_value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `request_headers_to_adds` sub block.


## obj rule.match



### fn rule.match.new

```ts
new()
```


`google.compute_security_policy.rule.match.new` constructs a new object with attributes and blocks configured for the `match`
Terraform sub block.



**Args**:
  - `versioned_expr` (`string`): Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding src_ip_ranges field in config. When `null`, the `versioned_expr` field will be omitted from the resulting object.
  - `config` (`list[obj]`): The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.match.config.new](#fn-ruleruleconfignew) constructor.
  - `expr` (`list[obj]`): User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. When `null`, the `expr` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.match.expr.new](#fn-ruleruleexprnew) constructor.

**Returns**:
  - An attribute object that represents the `match` sub block.


## obj rule.match.config



### fn rule.match.config.new

```ts
new()
```


`google.compute_security_policy.rule.match.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `src_ip_ranges` (`list`): Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of &#39;*&#39; matches all IPs (can be used to override the default behavior).

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj rule.match.expr



### fn rule.match.expr.new

```ts
new()
```


`google.compute_security_policy.rule.match.expr.new` constructs a new object with attributes and blocks configured for the `expr`
Terraform sub block.



**Args**:
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax. The application context of the containing message determines which well-known feature set of CEL is supported.

**Returns**:
  - An attribute object that represents the `expr` sub block.


## obj rule.rate_limit_options



### fn rule.rate_limit_options.new

```ts
new()
```


`google.compute_security_policy.rule.rate_limit_options.new` constructs a new object with attributes and blocks configured for the `rate_limit_options`
Terraform sub block.



**Args**:
  - `ban_duration_sec` (`number`): Can only be specified if the action for the rule is &#34;rate_based_ban&#34;. If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold. When `null`, the `ban_duration_sec` field will be omitted from the resulting object.
  - `conform_action` (`string`): Action to take for requests that are under the configured rate limit threshold. Valid option is &#34;allow&#34; only.
  - `enforce_on_key` (`string`): Determines the key to enforce the rateLimitThreshold on When `null`, the `enforce_on_key` field will be omitted from the resulting object.
  - `enforce_on_key_name` (`string`): Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value. When `null`, the `enforce_on_key_name` field will be omitted from the resulting object.
  - `exceed_action` (`string`): Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are &#34;deny()&#34; where valid values for status are 403, 404, 429, and 502, and &#34;redirect&#34; where the redirect parameters come from exceedRedirectOptions below.
  - `ban_threshold` (`list[obj]`): Can only be specified if the action for the rule is &#34;rate_based_ban&#34;. If specified, the key will be banned for the configured &#39;banDurationSec&#39; when the number of requests that exceed the &#39;rateLimitThreshold&#39; also exceed this &#39;banThreshold&#39;. When `null`, the `ban_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.rate_limit_options.ban_threshold.new](#fn-ruleruleban_thresholdnew) constructor.
  - `exceed_redirect_options` (`list[obj]`): Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. When `null`, the `exceed_redirect_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.rate_limit_options.exceed_redirect_options.new](#fn-ruleruleexceed_redirect_optionsnew) constructor.
  - `rate_limit_threshold` (`list[obj]`): Threshold at which to begin ratelimiting. When `null`, the `rate_limit_threshold` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_security_policy.rule.rate_limit_options.rate_limit_threshold.new](#fn-rulerulerate_limit_thresholdnew) constructor.

**Returns**:
  - An attribute object that represents the `rate_limit_options` sub block.


## obj rule.rate_limit_options.ban_threshold



### fn rule.rate_limit_options.ban_threshold.new

```ts
new()
```


`google.compute_security_policy.rule.rate_limit_options.ban_threshold.new` constructs a new object with attributes and blocks configured for the `ban_threshold`
Terraform sub block.



**Args**:
  - `count` (`number`): Number of HTTP(S) requests for calculating the threshold.
  - `interval_sec` (`number`): Interval over which the threshold is computed.

**Returns**:
  - An attribute object that represents the `ban_threshold` sub block.


## obj rule.rate_limit_options.exceed_redirect_options



### fn rule.rate_limit_options.exceed_redirect_options.new

```ts
new()
```


`google.compute_security_policy.rule.rate_limit_options.exceed_redirect_options.new` constructs a new object with attributes and blocks configured for the `exceed_redirect_options`
Terraform sub block.



**Args**:
  - `target` (`string`): Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. When `null`, the `target` field will be omitted from the resulting object.
  - `type` (`string`): Type of the redirect action.

**Returns**:
  - An attribute object that represents the `exceed_redirect_options` sub block.


## obj rule.rate_limit_options.rate_limit_threshold



### fn rule.rate_limit_options.rate_limit_threshold.new

```ts
new()
```


`google.compute_security_policy.rule.rate_limit_options.rate_limit_threshold.new` constructs a new object with attributes and blocks configured for the `rate_limit_threshold`
Terraform sub block.



**Args**:
  - `count` (`number`): Number of HTTP(S) requests for calculating the threshold.
  - `interval_sec` (`number`): Interval over which the threshold is computed.

**Returns**:
  - An attribute object that represents the `rate_limit_threshold` sub block.


## obj rule.redirect_options



### fn rule.redirect_options.new

```ts
new()
```


`google.compute_security_policy.rule.redirect_options.new` constructs a new object with attributes and blocks configured for the `redirect_options`
Terraform sub block.



**Args**:
  - `target` (`string`): Target for the redirect action. This is required if the type is EXTERNAL_302 and cannot be specified for GOOGLE_RECAPTCHA. When `null`, the `target` field will be omitted from the resulting object.
  - `type` (`string`): Type of the redirect action. Available options: EXTERNAL_302: Must specify the corresponding target field in config. GOOGLE_RECAPTCHA: Cannot specify target field in config.

**Returns**:
  - An attribute object that represents the `redirect_options` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_security_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.
