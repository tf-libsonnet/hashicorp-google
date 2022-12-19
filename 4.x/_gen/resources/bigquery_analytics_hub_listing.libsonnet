local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_analytics_hub_listing', url='', help='`bigquery_analytics_hub_listing` represents the `google_bigquery_analytics_hub_listing` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigquery_dataset:: {
    '#new':: d.fn(help='\n`google.bigquery_analytics_hub_listing.bigquery_dataset.new` constructs a new object with attributes and blocks configured for the `bigquery_dataset`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset` (`string`): Resource name of the dataset source for this listing. e.g. projects/myproject/datasets/123\n\n**Returns**:\n  - An attribute object that represents the `bigquery_dataset` sub block.\n', args=[]),
    new(
      dataset
    ):: std.prune(a={
      dataset: dataset,
    }),
  },
  data_provider:: {
    '#new':: d.fn(help='\n`google.bigquery_analytics_hub_listing.data_provider.new` constructs a new object with attributes and blocks configured for the `data_provider`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the data provider.\n  - `primary_contact` (`string`): Email or URL of the data provider. When `null`, the `primary_contact` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `data_provider` sub block.\n', args=[]),
    new(
      name,
      primary_contact=null
    ):: std.prune(a={
      name: name,
      primary_contact: primary_contact,
    }),
  },
  '#new':: d.fn(help="\n`google.bigquery_analytics_hub_listing.new` injects a new `google_bigquery_analytics_hub_listing` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_analytics_hub_listing.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_analytics_hub_listing` using the reference:\n\n    $._ref.google_bigquery_analytics_hub_listing.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_analytics_hub_listing.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `categories` (`list`): Categories of the listing. Up to two categories are allowed. When `null`, the `categories` field will be omitted from the resulting object.\n  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `description` (`string`): Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (\u0026amp;) and can\u0026#39;t start or end with spaces.\n  - `documentation` (`string`): Documentation describing the listing. When `null`, the `documentation` field will be omitted from the resulting object.\n  - `icon` (`string`): Base64 encoded image representing the listing. When `null`, the `icon` field will be omitted from the resulting object.\n  - `listing_id` (`string`): The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `location` (`string`): The name of the location this data exchange listing.\n  - `primary_contact` (`string`): Email or URL of the primary point of contact of the listing. When `null`, the `primary_contact` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `request_access` (`string`): Email or URL of the request access of the listing. Subscribers can use this reference to request access. When `null`, the `request_access` field will be omitted from the resulting object.\n  - `bigquery_dataset` (`list[obj]`): Shared dataset i.e. BigQuery dataset source. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.bigquery_dataset.new](#fn-bigqueryanalyticshublistingbigquerydatasetnew) constructor.\n  - `data_provider` (`list[obj]`): Details of the data provider who owns the source data. When `null`, the `data_provider` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.data_provider.new](#fn-bigqueryanalyticshublistingdataprovidernew) constructor.\n  - `publisher` (`list[obj]`): Details of the publisher who owns the listing and who can share the source data. When `null`, the `publisher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.publisher.new](#fn-bigqueryanalyticshublistingpublishernew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.timeouts.new](#fn-bigqueryanalyticshublistingtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    data_exchange_id,
    display_name,
    listing_id,
    location,
    bigquery_dataset=null,
    categories=null,
    data_provider=null,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    publisher=null,
    request_access=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_listing',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_dataset=bigquery_dataset,
      categories=categories,
      data_exchange_id=data_exchange_id,
      data_provider=data_provider,
      description=description,
      display_name=display_name,
      documentation=documentation,
      icon=icon,
      listing_id=listing_id,
      location=location,
      primary_contact=primary_contact,
      project=project,
      publisher=publisher,
      request_access=request_access,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigquery_analytics_hub_listing.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_analytics_hub_listing`\nTerraform resource.\n\nUnlike [google.bigquery_analytics_hub_listing.new](#fn-bigqueryanalyticshublistingnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `categories` (`list`): Categories of the listing. Up to two categories are allowed. When `null`, the `categories` field will be omitted from the resulting object.\n  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `description` (`string`): Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&amp;) and can&#39;t start or end with spaces.\n  - `documentation` (`string`): Documentation describing the listing. When `null`, the `documentation` field will be omitted from the resulting object.\n  - `icon` (`string`): Base64 encoded image representing the listing. When `null`, the `icon` field will be omitted from the resulting object.\n  - `listing_id` (`string`): The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.\n  - `location` (`string`): The name of the location this data exchange listing.\n  - `primary_contact` (`string`): Email or URL of the primary point of contact of the listing. When `null`, the `primary_contact` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `request_access` (`string`): Email or URL of the request access of the listing. Subscribers can use this reference to request access. When `null`, the `request_access` field will be omitted from the resulting object.\n  - `bigquery_dataset` (`list[obj]`): Shared dataset i.e. BigQuery dataset source. When `null`, the `bigquery_dataset` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.bigquery_dataset.new](#fn-bigqueryanalyticshublistingbigquerydatasetnew) constructor.\n  - `data_provider` (`list[obj]`): Details of the data provider who owns the source data. When `null`, the `data_provider` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.data_provider.new](#fn-bigqueryanalyticshublistingdataprovidernew) constructor.\n  - `publisher` (`list[obj]`): Details of the publisher who owns the listing and who can share the source data. When `null`, the `publisher` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.publisher.new](#fn-bigqueryanalyticshublistingpublishernew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_listing.timeouts.new](#fn-bigqueryanalyticshublistingtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_analytics_hub_listing` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    data_exchange_id,
    display_name,
    listing_id,
    location,
    bigquery_dataset=null,
    categories=null,
    data_provider=null,
    description=null,
    documentation=null,
    icon=null,
    primary_contact=null,
    project=null,
    publisher=null,
    request_access=null,
    timeouts=null
  ):: std.prune(a={
    bigquery_dataset: bigquery_dataset,
    categories: categories,
    data_exchange_id: data_exchange_id,
    data_provider: data_provider,
    description: description,
    display_name: display_name,
    documentation: documentation,
    icon: icon,
    listing_id: listing_id,
    location: location,
    primary_contact: primary_contact,
    project: project,
    publisher: publisher,
    request_access: request_access,
    timeouts: timeouts,
  }),
  publisher:: {
    '#new':: d.fn(help='\n`google.bigquery_analytics_hub_listing.publisher.new` constructs a new object with attributes and blocks configured for the `publisher`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the listing publisher.\n  - `primary_contact` (`string`): Email or URL of the listing publisher. When `null`, the `primary_contact` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `publisher` sub block.\n', args=[]),
    new(
      name,
      primary_contact=null
    ):: std.prune(a={
      name: name,
      primary_contact: primary_contact,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigquery_analytics_hub_listing.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigqueryDataset':: d.fn(help='`google.bigquery_analytics_hub_listing.withBigqueryDataset` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the bigquery_dataset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `bigquery_dataset` field.\n', args=[]),
  withBigqueryDataset(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          bigquery_dataset: value,
        },
      },
    },
  },
  '#withBigqueryDatasetMixin':: d.fn(help='`google.bigquery_analytics_hub_listing.withBigqueryDatasetMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the bigquery_dataset field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withBigqueryDataset](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `bigquery_dataset` field.\n', args=[]),
  withBigqueryDatasetMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          bigquery_dataset+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withCategories':: d.fn(help='`google.bigquery_analytics_hub_listing.withCategories` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the categories field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `categories` field.\n', args=[]),
  withCategories(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          categories: value,
        },
      },
    },
  },
  '#withDataExchangeId':: d.fn(help='`google.bigquery_analytics_hub_listing.withDataExchangeId` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the data_exchange_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `data_exchange_id` field.\n', args=[]),
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  '#withDataProvider':: d.fn(help='`google.bigquery_analytics_hub_listing.withDataProvider` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the data_provider field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `data_provider` field.\n', args=[]),
  withDataProvider(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_provider: value,
        },
      },
    },
  },
  '#withDataProviderMixin':: d.fn(help='`google.bigquery_analytics_hub_listing.withDataProviderMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the data_provider field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withDataProvider](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `data_provider` field.\n', args=[]),
  withDataProviderMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          data_provider+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.bigquery_analytics_hub_listing.withDescription` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.bigquery_analytics_hub_listing.withDisplayName` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withDocumentation':: d.fn(help='`google.bigquery_analytics_hub_listing.withDocumentation` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the documentation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `documentation` field.\n', args=[]),
  withDocumentation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          documentation: value,
        },
      },
    },
  },
  '#withIcon':: d.fn(help='`google.bigquery_analytics_hub_listing.withIcon` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the icon field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `icon` field.\n', args=[]),
  withIcon(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          icon: value,
        },
      },
    },
  },
  '#withListingId':: d.fn(help='`google.bigquery_analytics_hub_listing.withListingId` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the listing_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `listing_id` field.\n', args=[]),
  withListingId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          listing_id: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.bigquery_analytics_hub_listing.withLocation` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPrimaryContact':: d.fn(help='`google.bigquery_analytics_hub_listing.withPrimaryContact` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the primary_contact field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `primary_contact` field.\n', args=[]),
  withPrimaryContact(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          primary_contact: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.bigquery_analytics_hub_listing.withProject` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublisher':: d.fn(help='`google.bigquery_analytics_hub_listing.withPublisher` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the publisher field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `publisher` field.\n', args=[]),
  withPublisher(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          publisher: value,
        },
      },
    },
  },
  '#withPublisherMixin':: d.fn(help='`google.bigquery_analytics_hub_listing.withPublisherMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the publisher field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withPublisher](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `publisher` field.\n', args=[]),
  withPublisherMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          publisher+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withRequestAccess':: d.fn(help='`google.bigquery_analytics_hub_listing.withRequestAccess` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the request_access field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `request_access` field.\n', args=[]),
  withRequestAccess(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          request_access: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.bigquery_analytics_hub_listing.withTimeouts` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.bigquery_analytics_hub_listing.withTimeoutsMixin` constructs a mixin object that can be merged into the `bigquery_analytics_hub_listing`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.bigquery_analytics_hub_listing.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
