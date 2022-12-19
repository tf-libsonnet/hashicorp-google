local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_bucket', url='', help='`storage_bucket` represents the `google_storage_bucket` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoclass:: {
    '#new':: d.fn(help='\n`google.storage_bucket.autoclass.new` constructs a new object with attributes and blocks configured for the `autoclass`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): While set to true, autoclass automatically transitions objects in your bucket to appropriate storage classes based on each object&#39;s access pattern.\n\n**Returns**:\n  - An attribute object that represents the `autoclass` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  cors:: {
    '#new':: d.fn(help='\n`google.storage_bucket.cors.new` constructs a new object with attributes and blocks configured for the `cors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_age_seconds` (`number`): The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses. When `null`, the `max_age_seconds` field will be omitted from the resulting object.\n  - `method` (`list`): The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: &#34;*&#34; is permitted in the list of methods, and means &#34;any method&#34;. When `null`, the `method` field will be omitted from the resulting object.\n  - `origin` (`list`): The list of Origins eligible to receive CORS response headers. Note: &#34;*&#34; is permitted in the list of origins, and means &#34;any Origin&#34;. When `null`, the `origin` field will be omitted from the resulting object.\n  - `response_header` (`list`): The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains. When `null`, the `response_header` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `cors` sub block.\n', args=[]),
    new(
      max_age_seconds=null,
      method=null,
      origin=null,
      response_header=null
    ):: std.prune(a={
      max_age_seconds: max_age_seconds,
      method: method,
      origin: origin,
      response_header: response_header,
    }),
  },
  custom_placement_config:: {
    '#new':: d.fn(help='\n`google.storage_bucket.custom_placement_config.new` constructs a new object with attributes and blocks configured for the `custom_placement_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `data_locations` (`list`): The list of individual regions that comprise a dual-region bucket. See the docs for a list of acceptable regions. Note: If any of the data_locations changes, it will recreate the bucket.\n\n**Returns**:\n  - An attribute object that represents the `custom_placement_config` sub block.\n', args=[]),
    new(
      data_locations
    ):: std.prune(a={
      data_locations: data_locations,
    }),
  },
  encryption:: {
    '#new':: d.fn(help='\n`google.storage_bucket.encryption.new` constructs a new object with attributes and blocks configured for the `encryption`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_kms_key_name` (`string`): A Cloud KMS key that will be used to encrypt objects inserted into this bucket, if no encryption method is specified. You must pay attention to whether the crypto key is available in the location that this bucket is created in. See the docs for more details.\n\n**Returns**:\n  - An attribute object that represents the `encryption` sub block.\n', args=[]),
    new(
      default_kms_key_name
    ):: std.prune(a={
      default_kms_key_name: default_kms_key_name,
    }),
  },
  lifecycle_rule:: {
    action:: {
      '#new':: d.fn(help='\n`google.storage_bucket.lifecycle_rule.action.new` constructs a new object with attributes and blocks configured for the `action`\nTerraform sub block.\n\n\n\n**Args**:\n  - `storage_class` (`string`): The target Storage Class of objects affected by this Lifecycle Rule. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.\n  - `type` (`string`): The type of the action of this Lifecycle Rule. Supported values include: Delete, SetStorageClass and AbortIncompleteMultipartUpload.\n\n**Returns**:\n  - An attribute object that represents the `action` sub block.\n', args=[]),
      new(
        type,
        storage_class=null
      ):: std.prune(a={
        storage_class: storage_class,
        type: type,
      }),
    },
    condition:: {
      '#new':: d.fn(help='\n`google.storage_bucket.lifecycle_rule.condition.new` constructs a new object with attributes and blocks configured for the `condition`\nTerraform sub block.\n\n\n\n**Args**:\n  - `age` (`number`): Minimum age of an object in days to satisfy this condition. When `null`, the `age` field will be omitted from the resulting object.\n  - `created_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `created_before` field will be omitted from the resulting object.\n  - `custom_time_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `custom_time_before` field will be omitted from the resulting object.\n  - `days_since_custom_time` (`number`): Number of days elapsed since the user-specified timestamp set on an object. When `null`, the `days_since_custom_time` field will be omitted from the resulting object.\n  - `days_since_noncurrent_time` (`number`): Number of days elapsed since the noncurrent timestamp of an object. This\n\t\t\t\t\t\t\t\t\t\tcondition is relevant only for versioned objects. When `null`, the `days_since_noncurrent_time` field will be omitted from the resulting object.\n  - `matches_prefix` (`list`): One or more matching name prefixes to satisfy this condition. When `null`, the `matches_prefix` field will be omitted from the resulting object.\n  - `matches_storage_class` (`list`): Storage Class of objects to satisfy this condition. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE, STANDARD, DURABLE_REDUCED_AVAILABILITY. When `null`, the `matches_storage_class` field will be omitted from the resulting object.\n  - `matches_suffix` (`list`): One or more matching name suffixes to satisfy this condition. When `null`, the `matches_suffix` field will be omitted from the resulting object.\n  - `noncurrent_time_before` (`string`): Creation date of an object in RFC 3339 (e.g. 2017-06-13) to satisfy this condition. When `null`, the `noncurrent_time_before` field will be omitted from the resulting object.\n  - `num_newer_versions` (`number`): Relevant only for versioned objects. The number of newer versions of an object to satisfy this condition. When `null`, the `num_newer_versions` field will be omitted from the resulting object.\n  - `with_state` (`string`): Match to live and/or archived objects. Unversioned buckets have only live objects. Supported values include: &#34;LIVE&#34;, &#34;ARCHIVED&#34;, &#34;ANY&#34;. When `null`, the `with_state` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `condition` sub block.\n', args=[]),
      new(
        age=null,
        created_before=null,
        custom_time_before=null,
        days_since_custom_time=null,
        days_since_noncurrent_time=null,
        matches_prefix=null,
        matches_storage_class=null,
        matches_suffix=null,
        noncurrent_time_before=null,
        num_newer_versions=null,
        with_state=null
      ):: std.prune(a={
        age: age,
        created_before: created_before,
        custom_time_before: custom_time_before,
        days_since_custom_time: days_since_custom_time,
        days_since_noncurrent_time: days_since_noncurrent_time,
        matches_prefix: matches_prefix,
        matches_storage_class: matches_storage_class,
        matches_suffix: matches_suffix,
        noncurrent_time_before: noncurrent_time_before,
        num_newer_versions: num_newer_versions,
        with_state: with_state,
      }),
    },
    '#new':: d.fn(help='\n`google.storage_bucket.lifecycle_rule.new` constructs a new object with attributes and blocks configured for the `lifecycle_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `action` (`list[obj]`): The Lifecycle Rule&#39;s action configuration. A single block of this type is supported. When `null`, the `action` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.action.new](#fn-lifecycle_ruleactionnew) constructor.\n  - `condition` (`list[obj]`): The Lifecycle Rule&#39;s condition configuration. When `null`, the `condition` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.condition.new](#fn-lifecycle_ruleconditionnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `lifecycle_rule` sub block.\n', args=[]),
    new(
      action=null,
      condition=null
    ):: std.prune(a={
      action: action,
      condition: condition,
    }),
  },
  logging:: {
    '#new':: d.fn(help='\n`google.storage_bucket.logging.new` constructs a new object with attributes and blocks configured for the `logging`\nTerraform sub block.\n\n\n\n**Args**:\n  - `log_bucket` (`string`): The bucket that will receive log objects.\n  - `log_object_prefix` (`string`): The object prefix for log objects. If it&#39;s not provided, by default Google Cloud Storage sets this to this bucket&#39;s name. When `null`, the `log_object_prefix` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `logging` sub block.\n', args=[]),
    new(
      log_bucket,
      log_object_prefix=null
    ):: std.prune(a={
      log_bucket: log_bucket,
      log_object_prefix: log_object_prefix,
    }),
  },
  '#new':: d.fn(help="\n`google.storage_bucket.new` injects a new `google_storage_bucket` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_bucket.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_bucket` using the reference:\n\n    $._ref.google_storage_bucket.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_bucket.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_event_based_hold` (`bool`): Whether or not to automatically apply an eventBasedHold to new objects added to the bucket. When `null`, the `default_event_based_hold` field will be omitted from the resulting object.\n  - `force_destroy` (`bool`): When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the bucket. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Google Cloud Storage location\n  - `name` (`string`): The name of the bucket.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_access_prevention` (`string`): Prevents public access to a bucket. When `null`, the `public_access_prevention` field will be omitted from the resulting object.\n  - `requester_pays` (`bool`): Enables Requester Pays on a storage bucket. When `null`, the `requester_pays` field will be omitted from the resulting object.\n  - `storage_class` (`string`): The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.\n  - `uniform_bucket_level_access` (`bool`): Enables uniform bucket-level access on a bucket. When `null`, the `uniform_bucket_level_access` field will be omitted from the resulting object.\n  - `autoclass` (`list[obj]`): The bucket\u0026#39;s autoclass configuration. When `null`, the `autoclass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.autoclass.new](#fn-storage_bucketautoclassnew) constructor.\n  - `cors` (`list[obj]`): The bucket\u0026#39;s Cross-Origin Resource Sharing (CORS) configuration. When `null`, the `cors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.cors.new](#fn-storage_bucketcorsnew) constructor.\n  - `custom_placement_config` (`list[obj]`): The bucket\u0026#39;s custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. When `null`, the `custom_placement_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.custom_placement_config.new](#fn-storage_bucketcustom_placement_confignew) constructor.\n  - `encryption` (`list[obj]`): The bucket\u0026#39;s encryption configuration. When `null`, the `encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.encryption.new](#fn-storage_bucketencryptionnew) constructor.\n  - `lifecycle_rule` (`list[obj]`): The bucket\u0026#39;s Lifecycle Rules configuration. When `null`, the `lifecycle_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.new](#fn-storage_bucketlifecycle_rulenew) constructor.\n  - `logging` (`list[obj]`): The bucket\u0026#39;s Access \u0026amp; Storage Logs configuration. When `null`, the `logging` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.logging.new](#fn-storage_bucketloggingnew) constructor.\n  - `retention_policy` (`list[obj]`): Configuration of the bucket\u0026#39;s data retention policy for how long objects in the bucket should be retained. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.retention_policy.new](#fn-storage_bucketretention_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.timeouts.new](#fn-storage_buckettimeoutsnew) constructor.\n  - `versioning` (`list[obj]`): The bucket\u0026#39;s Versioning configuration. When `null`, the `versioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.versioning.new](#fn-storage_bucketversioningnew) constructor.\n  - `website` (`list[obj]`): Configuration if the bucket acts as a website. When `null`, the `website` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.website.new](#fn-storage_bucketwebsitenew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    autoclass=null,
    cors=null,
    custom_placement_config=null,
    default_event_based_hold=null,
    encryption=null,
    force_destroy=null,
    labels=null,
    lifecycle_rule=null,
    logging=null,
    project=null,
    public_access_prevention=null,
    requester_pays=null,
    retention_policy=null,
    storage_class=null,
    timeouts=null,
    uniform_bucket_level_access=null,
    versioning=null,
    website=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoclass=autoclass,
      cors=cors,
      custom_placement_config=custom_placement_config,
      default_event_based_hold=default_event_based_hold,
      encryption=encryption,
      force_destroy=force_destroy,
      labels=labels,
      lifecycle_rule=lifecycle_rule,
      location=location,
      logging=logging,
      name=name,
      project=project,
      public_access_prevention=public_access_prevention,
      requester_pays=requester_pays,
      retention_policy=retention_policy,
      storage_class=storage_class,
      timeouts=timeouts,
      uniform_bucket_level_access=uniform_bucket_level_access,
      versioning=versioning,
      website=website
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_bucket.newAttrs` constructs a new object with attributes and blocks configured for the `storage_bucket`\nTerraform resource.\n\nUnlike [google.storage_bucket.new](#fn-storage_bucketnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_event_based_hold` (`bool`): Whether or not to automatically apply an eventBasedHold to new objects added to the bucket. When `null`, the `default_event_based_hold` field will be omitted from the resulting object.\n  - `force_destroy` (`bool`): When deleting a bucket, this boolean option will delete all contained objects. If you try to delete a bucket that contains objects, Terraform will fail that run. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to the bucket. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Google Cloud Storage location\n  - `name` (`string`): The name of the bucket.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_access_prevention` (`string`): Prevents public access to a bucket. When `null`, the `public_access_prevention` field will be omitted from the resulting object.\n  - `requester_pays` (`bool`): Enables Requester Pays on a storage bucket. When `null`, the `requester_pays` field will be omitted from the resulting object.\n  - `storage_class` (`string`): The Storage Class of the new bucket. Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE. When `null`, the `storage_class` field will be omitted from the resulting object.\n  - `uniform_bucket_level_access` (`bool`): Enables uniform bucket-level access on a bucket. When `null`, the `uniform_bucket_level_access` field will be omitted from the resulting object.\n  - `autoclass` (`list[obj]`): The bucket&#39;s autoclass configuration. When `null`, the `autoclass` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.autoclass.new](#fn-storage_bucketautoclassnew) constructor.\n  - `cors` (`list[obj]`): The bucket&#39;s Cross-Origin Resource Sharing (CORS) configuration. When `null`, the `cors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.cors.new](#fn-storage_bucketcorsnew) constructor.\n  - `custom_placement_config` (`list[obj]`): The bucket&#39;s custom location configuration, which specifies the individual regions that comprise a dual-region bucket. If the bucket is designated a single or multi-region, the parameters are empty. When `null`, the `custom_placement_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.custom_placement_config.new](#fn-storage_bucketcustom_placement_confignew) constructor.\n  - `encryption` (`list[obj]`): The bucket&#39;s encryption configuration. When `null`, the `encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.encryption.new](#fn-storage_bucketencryptionnew) constructor.\n  - `lifecycle_rule` (`list[obj]`): The bucket&#39;s Lifecycle Rules configuration. When `null`, the `lifecycle_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.lifecycle_rule.new](#fn-storage_bucketlifecycle_rulenew) constructor.\n  - `logging` (`list[obj]`): The bucket&#39;s Access &amp; Storage Logs configuration. When `null`, the `logging` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.logging.new](#fn-storage_bucketloggingnew) constructor.\n  - `retention_policy` (`list[obj]`): Configuration of the bucket&#39;s data retention policy for how long objects in the bucket should be retained. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.retention_policy.new](#fn-storage_bucketretention_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.timeouts.new](#fn-storage_buckettimeoutsnew) constructor.\n  - `versioning` (`list[obj]`): The bucket&#39;s Versioning configuration. When `null`, the `versioning` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.versioning.new](#fn-storage_bucketversioningnew) constructor.\n  - `website` (`list[obj]`): Configuration if the bucket acts as a website. When `null`, the `website` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_bucket.website.new](#fn-storage_bucketwebsitenew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_bucket` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    autoclass=null,
    cors=null,
    custom_placement_config=null,
    default_event_based_hold=null,
    encryption=null,
    force_destroy=null,
    labels=null,
    lifecycle_rule=null,
    logging=null,
    project=null,
    public_access_prevention=null,
    requester_pays=null,
    retention_policy=null,
    storage_class=null,
    timeouts=null,
    uniform_bucket_level_access=null,
    versioning=null,
    website=null
  ):: std.prune(a={
    autoclass: autoclass,
    cors: cors,
    custom_placement_config: custom_placement_config,
    default_event_based_hold: default_event_based_hold,
    encryption: encryption,
    force_destroy: force_destroy,
    labels: labels,
    lifecycle_rule: lifecycle_rule,
    location: location,
    logging: logging,
    name: name,
    project: project,
    public_access_prevention: public_access_prevention,
    requester_pays: requester_pays,
    retention_policy: retention_policy,
    storage_class: storage_class,
    timeouts: timeouts,
    uniform_bucket_level_access: uniform_bucket_level_access,
    versioning: versioning,
    website: website,
  }),
  retention_policy:: {
    '#new':: d.fn(help='\n`google.storage_bucket.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `is_locked` (`bool`): If set to true, the bucket will be locked and permanently restrict edits to the bucket&#39;s retention policy.  Caution: Locking a bucket is an irreversible action. When `null`, the `is_locked` field will be omitted from the resulting object.\n  - `retention_period` (`number`): The period of time, in seconds, that objects in the bucket must be retained and cannot be deleted, overwritten, or archived. The value must be less than 3,155,760,000 seconds.\n\n**Returns**:\n  - An attribute object that represents the `retention_policy` sub block.\n', args=[]),
    new(
      retention_period,
      is_locked=null
    ):: std.prune(a={
      is_locked: is_locked,
      retention_period: retention_period,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_bucket.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      read: read,
      update: update,
    }),
  },
  versioning:: {
    '#new':: d.fn(help='\n`google.storage_bucket.versioning.new` constructs a new object with attributes and blocks configured for the `versioning`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): While set to true, versioning is fully enabled for this bucket.\n\n**Returns**:\n  - An attribute object that represents the `versioning` sub block.\n', args=[]),
    new(
      enabled
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  website:: {
    '#new':: d.fn(help='\n`google.storage_bucket.website.new` constructs a new object with attributes and blocks configured for the `website`\nTerraform sub block.\n\n\n\n**Args**:\n  - `main_page_suffix` (`string`): Behaves as the bucket&#39;s directory index where missing objects are treated as potential directories. When `null`, the `main_page_suffix` field will be omitted from the resulting object.\n  - `not_found_page` (`string`): The custom object to return when a requested resource is not found. When `null`, the `not_found_page` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `website` sub block.\n', args=[]),
    new(
      main_page_suffix=null,
      not_found_page=null
    ):: std.prune(a={
      main_page_suffix: main_page_suffix,
      not_found_page: not_found_page,
    }),
  },
  '#withAutoclass':: d.fn(help='`google.list[obj].withAutoclass` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoclass field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoclassMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoclass` field.\n', args=[]),
  withAutoclass(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          autoclass: value,
        },
      },
    },
  },
  '#withAutoclassMixin':: d.fn(help='`google.list[obj].withAutoclassMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoclass field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoclass](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoclass` field.\n', args=[]),
  withAutoclassMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          autoclass+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCors':: d.fn(help='`google.list[obj].withCors` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cors field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCorsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cors` field.\n', args=[]),
  withCors(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          cors: value,
        },
      },
    },
  },
  '#withCorsMixin':: d.fn(help='`google.list[obj].withCorsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the cors field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCors](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `cors` field.\n', args=[]),
  withCorsMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          cors+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCustomPlacementConfig':: d.fn(help='`google.list[obj].withCustomPlacementConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the custom_placement_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCustomPlacementConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `custom_placement_config` field.\n', args=[]),
  withCustomPlacementConfig(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          custom_placement_config: value,
        },
      },
    },
  },
  '#withCustomPlacementConfigMixin':: d.fn(help='`google.list[obj].withCustomPlacementConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the custom_placement_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCustomPlacementConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `custom_placement_config` field.\n', args=[]),
  withCustomPlacementConfigMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          custom_placement_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDefaultEventBasedHold':: d.fn(help='`google.bool.withDefaultEventBasedHold` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the default_event_based_hold field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `default_event_based_hold` field.\n', args=[]),
  withDefaultEventBasedHold(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          default_event_based_hold: value,
        },
      },
    },
  },
  '#withEncryption':: d.fn(help='`google.list[obj].withEncryption` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption` field.\n', args=[]),
  withEncryption(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          encryption: value,
        },
      },
    },
  },
  '#withEncryptionMixin':: d.fn(help='`google.list[obj].withEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryption](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption` field.\n', args=[]),
  withEncryptionMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          encryption+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLifecycleRule':: d.fn(help='`google.list[obj].withLifecycleRule` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the lifecycle_rule field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLifecycleRuleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `lifecycle_rule` field.\n', args=[]),
  withLifecycleRule(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          lifecycle_rule: value,
        },
      },
    },
  },
  '#withLifecycleRuleMixin':: d.fn(help='`google.list[obj].withLifecycleRuleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the lifecycle_rule field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLifecycleRule](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `lifecycle_rule` field.\n', args=[]),
  withLifecycleRuleMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          lifecycle_rule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withLogging':: d.fn(help='`google.list[obj].withLogging` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLoggingMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging` field.\n', args=[]),
  withLogging(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          logging: value,
        },
      },
    },
  },
  '#withLoggingMixin':: d.fn(help='`google.list[obj].withLoggingMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the logging field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLogging](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `logging` field.\n', args=[]),
  withLoggingMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          logging+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublicAccessPrevention':: d.fn(help='`google.string.withPublicAccessPrevention` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the public_access_prevention field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `public_access_prevention` field.\n', args=[]),
  withPublicAccessPrevention(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          public_access_prevention: value,
        },
      },
    },
  },
  '#withRequesterPays':: d.fn(help='`google.bool.withRequesterPays` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the requester_pays field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `requester_pays` field.\n', args=[]),
  withRequesterPays(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          requester_pays: value,
        },
      },
    },
  },
  '#withRetentionPolicy':: d.fn(help='`google.list[obj].withRetentionPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retention_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRetentionPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retention_policy` field.\n', args=[]),
  withRetentionPolicy(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          retention_policy: value,
        },
      },
    },
  },
  '#withRetentionPolicyMixin':: d.fn(help='`google.list[obj].withRetentionPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the retention_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRetentionPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `retention_policy` field.\n', args=[]),
  withRetentionPolicyMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          retention_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withStorageClass':: d.fn(help='`google.string.withStorageClass` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the storage_class field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `storage_class` field.\n', args=[]),
  withStorageClass(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          storage_class: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUniformBucketLevelAccess':: d.fn(help='`google.bool.withUniformBucketLevelAccess` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the uniform_bucket_level_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `uniform_bucket_level_access` field.\n', args=[]),
  withUniformBucketLevelAccess(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          uniform_bucket_level_access: value,
        },
      },
    },
  },
  '#withVersioning':: d.fn(help='`google.list[obj].withVersioning` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the versioning field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVersioningMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `versioning` field.\n', args=[]),
  withVersioning(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          versioning: value,
        },
      },
    },
  },
  '#withVersioningMixin':: d.fn(help='`google.list[obj].withVersioningMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the versioning field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVersioning](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `versioning` field.\n', args=[]),
  withVersioningMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          versioning+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withWebsite':: d.fn(help='`google.list[obj].withWebsite` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the website field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWebsiteMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `website` field.\n', args=[]),
  withWebsite(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          website: value,
        },
      },
    },
  },
  '#withWebsiteMixin':: d.fn(help='`google.list[obj].withWebsiteMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the website field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWebsite](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `website` field.\n', args=[]),
  withWebsiteMixin(resourceLabel, value): {
    resource+: {
      google_storage_bucket+: {
        [resourceLabel]+: {
          website+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
