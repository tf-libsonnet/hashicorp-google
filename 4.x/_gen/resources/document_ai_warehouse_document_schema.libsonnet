local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='document_ai_warehouse_document_schema', url='', help='`document_ai_warehouse_document_schema` represents the `google_document_ai_warehouse_document_schema` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.document_ai_warehouse_document_schema.new` injects a new `google_document_ai_warehouse_document_schema` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.document_ai_warehouse_document_schema.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.document_ai_warehouse_document_schema` using the reference:\n\n    $._ref.google_document_ai_warehouse_document_schema.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_document_ai_warehouse_document_schema.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Name of the schema given by the user.\n  - `document_is_folder` (`bool`): Tells whether the document is a folder or a typical document. When `null`, the `document_is_folder` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `project_number` (`string`): The unique identifier of the project.\n  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.new](#fn-property_definitionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    location,
    project_number,
    document_is_folder=null,
    property_definitions=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_document_ai_warehouse_document_schema',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      document_is_folder=document_is_folder,
      location=location,
      project_number=project_number,
      property_definitions=property_definitions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.document_ai_warehouse_document_schema.newAttrs` constructs a new object with attributes and blocks configured for the `document_ai_warehouse_document_schema`\nTerraform resource.\n\nUnlike [google.document_ai_warehouse_document_schema.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Name of the schema given by the user.\n  - `document_is_folder` (`bool`): Tells whether the document is a folder or a typical document. When `null`, the `document_is_folder` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the resource.\n  - `project_number` (`string`): The unique identifier of the project.\n  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.new](#fn-property_definitionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `document_ai_warehouse_document_schema` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    location,
    project_number,
    document_is_folder=null,
    property_definitions=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    document_is_folder: document_is_folder,
    location: location,
    project_number: project_number,
    property_definitions: property_definitions,
    timeouts: timeouts,
  }),
  property_definitions:: {
    date_time_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.date_time_type_options.new` constructs a new object with attributes and blocks configured for the `date_time_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `date_time_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    enum_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.enum_type_options.new` constructs a new object with attributes and blocks configured for the `enum_type_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `possible_values` (`list`): List of possible enum values.\n  - `validation_check_disabled` (`bool`): Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. When `null`, the `validation_check_disabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `enum_type_options` sub block.\n', args=[]),
      new(
        possible_values,
        validation_check_disabled=null
      ):: std.prune(a={
        possible_values: possible_values,
        validation_check_disabled: validation_check_disabled,
      }),
    },
    float_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.float_type_options.new` constructs a new object with attributes and blocks configured for the `float_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `float_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    integer_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.integer_type_options.new` constructs a new object with attributes and blocks configured for the `integer_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `integer_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    map_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.map_type_options.new` constructs a new object with attributes and blocks configured for the `map_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `map_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.new` constructs a new object with attributes and blocks configured for the `property_definitions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): The display-name for the property, used for front-end. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `is_filterable` (`bool`): Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. When `null`, the `is_filterable` field will be omitted from the resulting object.\n  - `is_metadata` (`bool`): Whether the property is user supplied metadata. When `null`, the `is_metadata` field will be omitted from the resulting object.\n  - `is_repeatable` (`bool`): Whether the property can have multiple values. When `null`, the `is_repeatable` field will be omitted from the resulting object.\n  - `is_required` (`bool`): Whether the property is mandatory. When `null`, the `is_required` field will be omitted from the resulting object.\n  - `is_searchable` (`bool`): Indicates that the property should be included in a global search. When `null`, the `is_searchable` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the metadata property.\n  - `retrieval_importance` (`string`): Stores the retrieval importance. Possible values: [&#34;HIGHEST&#34;, &#34;HIGHER&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;, &#34;LOWEST&#34;] When `null`, the `retrieval_importance` field will be omitted from the resulting object.\n  - `date_time_type_options` (`list[obj]`): Date time property. Not supported by CMEK compliant deployment. When `null`, the `date_time_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.date_time_type_options.new](#fn-property_definitionsdate_time_type_optionsnew) constructor.\n  - `enum_type_options` (`list[obj]`): Enum/categorical property. When `null`, the `enum_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.enum_type_options.new](#fn-property_definitionsenum_type_optionsnew) constructor.\n  - `float_type_options` (`list[obj]`): Float property. When `null`, the `float_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.float_type_options.new](#fn-property_definitionsfloat_type_optionsnew) constructor.\n  - `integer_type_options` (`list[obj]`): Integer property. When `null`, the `integer_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.integer_type_options.new](#fn-property_definitionsinteger_type_optionsnew) constructor.\n  - `map_type_options` (`list[obj]`): Map property. When `null`, the `map_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.map_type_options.new](#fn-property_definitionsmap_type_optionsnew) constructor.\n  - `property_type_options` (`list[obj]`): Nested structured data property. When `null`, the `property_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.new](#fn-property_definitionsproperty_type_optionsnew) constructor.\n  - `schema_sources` (`list[obj]`): The schema source information. When `null`, the `schema_sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.schema_sources.new](#fn-property_definitionsschema_sourcesnew) constructor.\n  - `text_type_options` (`list[obj]`): Text/string property. When `null`, the `text_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.text_type_options.new](#fn-property_definitionstext_type_optionsnew) constructor.\n  - `timestamp_type_options` (`list[obj]`): Timestamp property. Not supported by CMEK compliant deployment. When `null`, the `timestamp_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.timestamp_type_options.new](#fn-property_definitionstimestamp_type_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `property_definitions` sub block.\n', args=[]),
    new(
      name,
      date_time_type_options=null,
      display_name=null,
      enum_type_options=null,
      float_type_options=null,
      integer_type_options=null,
      is_filterable=null,
      is_metadata=null,
      is_repeatable=null,
      is_required=null,
      is_searchable=null,
      map_type_options=null,
      property_type_options=null,
      retrieval_importance=null,
      schema_sources=null,
      text_type_options=null,
      timestamp_type_options=null
    ):: std.prune(a={
      date_time_type_options: date_time_type_options,
      display_name: display_name,
      enum_type_options: enum_type_options,
      float_type_options: float_type_options,
      integer_type_options: integer_type_options,
      is_filterable: is_filterable,
      is_metadata: is_metadata,
      is_repeatable: is_repeatable,
      is_required: is_required,
      is_searchable: is_searchable,
      map_type_options: map_type_options,
      name: name,
      property_type_options: property_type_options,
      retrieval_importance: retrieval_importance,
      schema_sources: schema_sources,
      text_type_options: text_type_options,
      timestamp_type_options: timestamp_type_options,
    }),
    property_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.new` constructs a new object with attributes and blocks configured for the `property_type_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `property_definitions` (`list[obj]`): Defines the metadata for a schema property. When `null`, the `property_definitions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.new](#fn-property_definitionsproperty_definitionsproperty_definitionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `property_type_options` sub block.\n', args=[]),
      new(
        property_definitions=null
      ):: std.prune(a={
        property_definitions: property_definitions,
      }),
      property_definitions:: {
        date_time_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.date_time_type_options.new` constructs a new object with attributes and blocks configured for the `date_time_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `date_time_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        enum_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.enum_type_options.new` constructs a new object with attributes and blocks configured for the `enum_type_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `possible_values` (`list`): List of possible enum values.\n  - `validation_check_disabled` (`bool`): Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default. When `null`, the `validation_check_disabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `enum_type_options` sub block.\n', args=[]),
          new(
            possible_values,
            validation_check_disabled=null
          ):: std.prune(a={
            possible_values: possible_values,
            validation_check_disabled: validation_check_disabled,
          }),
        },
        float_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.float_type_options.new` constructs a new object with attributes and blocks configured for the `float_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `float_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        integer_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.integer_type_options.new` constructs a new object with attributes and blocks configured for the `integer_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `integer_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        map_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.map_type_options.new` constructs a new object with attributes and blocks configured for the `map_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `map_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.new` constructs a new object with attributes and blocks configured for the `property_definitions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `display_name` (`string`): The display-name for the property, used for front-end. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `is_filterable` (`bool`): Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable. When `null`, the `is_filterable` field will be omitted from the resulting object.\n  - `is_metadata` (`bool`): Whether the property is user supplied metadata. When `null`, the `is_metadata` field will be omitted from the resulting object.\n  - `is_repeatable` (`bool`): Whether the property can have multiple values. When `null`, the `is_repeatable` field will be omitted from the resulting object.\n  - `is_required` (`bool`): Whether the property is mandatory. When `null`, the `is_required` field will be omitted from the resulting object.\n  - `is_searchable` (`bool`): Indicates that the property should be included in a global search. When `null`, the `is_searchable` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the metadata property.\n  - `retrieval_importance` (`string`): Stores the retrieval importance. Possible values: [&#34;HIGHEST&#34;, &#34;HIGHER&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;, &#34;LOWEST&#34;] When `null`, the `retrieval_importance` field will be omitted from the resulting object.\n  - `date_time_type_options` (`list[obj]`): Date time property. Not supported by CMEK compliant deployment. When `null`, the `date_time_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.date_time_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsdate_time_type_optionsnew) constructor.\n  - `enum_type_options` (`list[obj]`): Enum/categorical property. When `null`, the `enum_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.enum_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsenum_type_optionsnew) constructor.\n  - `float_type_options` (`list[obj]`): Float property. When `null`, the `float_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.float_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsfloat_type_optionsnew) constructor.\n  - `integer_type_options` (`list[obj]`): Integer property. When `null`, the `integer_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.integer_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsinteger_type_optionsnew) constructor.\n  - `map_type_options` (`list[obj]`): Map property. When `null`, the `map_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.map_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsmap_type_optionsnew) constructor.\n  - `schema_sources` (`list[obj]`): The schema source information. When `null`, the `schema_sources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.schema_sources.new](#fn-property_definitionsproperty_definitionsproperty_type_optionsschema_sourcesnew) constructor.\n  - `text_type_options` (`list[obj]`): Text property. When `null`, the `text_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.text_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionstext_type_optionsnew) constructor.\n  - `timestamp_type_options` (`list[obj]`): Timestamp property. Not supported by CMEK compliant deployment. When `null`, the `timestamp_type_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.timestamp_type_options.new](#fn-property_definitionsproperty_definitionsproperty_type_optionstimestamp_type_optionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `property_definitions` sub block.\n', args=[]),
        new(
          name,
          date_time_type_options=null,
          display_name=null,
          enum_type_options=null,
          float_type_options=null,
          integer_type_options=null,
          is_filterable=null,
          is_metadata=null,
          is_repeatable=null,
          is_required=null,
          is_searchable=null,
          map_type_options=null,
          retrieval_importance=null,
          schema_sources=null,
          text_type_options=null,
          timestamp_type_options=null
        ):: std.prune(a={
          date_time_type_options: date_time_type_options,
          display_name: display_name,
          enum_type_options: enum_type_options,
          float_type_options: float_type_options,
          integer_type_options: integer_type_options,
          is_filterable: is_filterable,
          is_metadata: is_metadata,
          is_repeatable: is_repeatable,
          is_required: is_required,
          is_searchable: is_searchable,
          map_type_options: map_type_options,
          name: name,
          retrieval_importance: retrieval_importance,
          schema_sources: schema_sources,
          text_type_options: text_type_options,
          timestamp_type_options: timestamp_type_options,
        }),
        schema_sources:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.schema_sources.new` constructs a new object with attributes and blocks configured for the `schema_sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The schema name in the source. When `null`, the `name` field will be omitted from the resulting object.\n  - `processor_type` (`string`): The Doc AI processor type name. When `null`, the `processor_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schema_sources` sub block.\n', args=[]),
          new(
            name=null,
            processor_type=null
          ):: std.prune(a={
            name: name,
            processor_type: processor_type,
          }),
        },
        text_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.text_type_options.new` constructs a new object with attributes and blocks configured for the `text_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `text_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
        timestamp_type_options:: {
          '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.property_type_options.property_definitions.timestamp_type_options.new` constructs a new object with attributes and blocks configured for the `timestamp_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `timestamp_type_options` sub block.\n', args=[]),
          new(

          ):: std.prune(a={}),
        },
      },
    },
    schema_sources:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.schema_sources.new` constructs a new object with attributes and blocks configured for the `schema_sources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The schema name in the source. When `null`, the `name` field will be omitted from the resulting object.\n  - `processor_type` (`string`): The Doc AI processor type name. When `null`, the `processor_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schema_sources` sub block.\n', args=[]),
      new(
        name=null,
        processor_type=null
      ):: std.prune(a={
        name: name,
        processor_type: processor_type,
      }),
    },
    text_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.text_type_options.new` constructs a new object with attributes and blocks configured for the `text_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `text_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
    timestamp_type_options:: {
      '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.property_definitions.timestamp_type_options.new` constructs a new object with attributes and blocks configured for the `timestamp_type_options`\nTerraform sub block.\n\n\n\n**Returns**:\n  - An attribute object that represents the `timestamp_type_options` sub block.\n', args=[]),
      new(

      ):: std.prune(a={}),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.document_ai_warehouse_document_schema.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withDocumentIsFolder':: d.fn(help='`google.bool.withDocumentIsFolder` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the document_is_folder field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `document_is_folder` field.\n', args=[]),
  withDocumentIsFolder(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          document_is_folder: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProjectNumber':: d.fn(help='`google.string.withProjectNumber` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project_number field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project_number` field.\n', args=[]),
  withProjectNumber(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          project_number: value,
        },
      },
    },
  },
  '#withPropertyDefinitions':: d.fn(help='`google.list[obj].withPropertyDefinitions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the property_definitions field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPropertyDefinitionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `property_definitions` field.\n', args=[]),
  withPropertyDefinitions(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          property_definitions: value,
        },
      },
    },
  },
  '#withPropertyDefinitionsMixin':: d.fn(help='`google.list[obj].withPropertyDefinitionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the property_definitions field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPropertyDefinitions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `property_definitions` field.\n', args=[]),
  withPropertyDefinitionsMixin(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          property_definitions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_document_ai_warehouse_document_schema+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}
