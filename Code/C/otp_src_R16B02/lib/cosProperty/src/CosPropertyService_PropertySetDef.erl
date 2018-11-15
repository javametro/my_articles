%%------------------------------------------------------------
%%
%% Implementation stub file
%% 
%% Target: CosPropertyService_PropertySetDef
%% Source: /net/isildur/ldisk/daily_build/r16b02_prebuild_opu_o.2013-09-16_20/otp_src_R16B02/lib/cosProperty/src/CosProperty.idl
%% IC vsn: 4.3.3
%% 
%% This file is automatically generated. DO NOT EDIT IT.
%%
%%------------------------------------------------------------

-module('CosPropertyService_PropertySetDef').
-ic_compiled("4_3_3").


%% Interface functions
-export([get_allowed_property_types/1, get_allowed_property_types/2, get_allowed_properties/1]).
-export([get_allowed_properties/2, define_property_with_mode/4, define_property_with_mode/5]).
-export([define_properties_with_modes/2, define_properties_with_modes/3, get_property_mode/2]).
-export([get_property_mode/3, get_property_modes/2, get_property_modes/3]).
-export([set_property_mode/3, set_property_mode/4, set_property_modes/2]).
-export([set_property_modes/3]).

%% Exports from "CosPropertyService::PropertySet"
-export([define_property/3, define_property/4, define_properties/2]).
-export([define_properties/3, get_number_of_properties/1, get_number_of_properties/2]).
-export([get_all_property_names/2, get_all_property_names/3, get_property_value/2]).
-export([get_property_value/3, get_properties/2, get_properties/3]).
-export([get_all_properties/2, get_all_properties/3, delete_property/2]).
-export([delete_property/3, delete_properties/2, delete_properties/3]).
-export([delete_all_properties/1, delete_all_properties/2, is_property_defined/2]).
-export([is_property_defined/3]).

%% Type identification function
-export([typeID/0]).

%% Used to start server
-export([oe_create/0, oe_create_link/0, oe_create/1]).
-export([oe_create_link/1, oe_create/2, oe_create_link/2]).

%% TypeCode Functions and inheritance
-export([oe_tc/1, oe_is_a/1, oe_get_interface/0]).

%% gen server export stuff
-behaviour(gen_server).
-export([init/1, terminate/2, handle_call/3]).
-export([handle_cast/2, handle_info/2, code_change/3]).

-include_lib("orber/include/corba.hrl").


%%------------------------------------------------------------
%%
%% Object interface functions.
%%
%%------------------------------------------------------------



%%%% Operation: get_allowed_property_types
%% 
%%   Returns: RetVal, Property_types
%%
get_allowed_property_types(OE_THIS) ->
    corba:call(OE_THIS, get_allowed_property_types, [], ?MODULE).

get_allowed_property_types(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_allowed_property_types, [], ?MODULE, OE_Options).

%%%% Operation: get_allowed_properties
%% 
%%   Returns: RetVal, Property_defs
%%
get_allowed_properties(OE_THIS) ->
    corba:call(OE_THIS, get_allowed_properties, [], ?MODULE).

get_allowed_properties(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_allowed_properties, [], ?MODULE, OE_Options).

%%%% Operation: define_property_with_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::UnsupportedMode, CosPropertyService::ReadOnlyProperty
%%
define_property_with_mode(OE_THIS, Property_name, Property_value, Property_mode) ->
    corba:call(OE_THIS, define_property_with_mode, [Property_name, Property_value, Property_mode], ?MODULE).

define_property_with_mode(OE_THIS, OE_Options, Property_name, Property_value, Property_mode) ->
    corba:call(OE_THIS, define_property_with_mode, [Property_name, Property_value, Property_mode], ?MODULE, OE_Options).

%%%% Operation: define_properties_with_modes
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
define_properties_with_modes(OE_THIS, Property_defs) ->
    corba:call(OE_THIS, define_properties_with_modes, [Property_defs], ?MODULE).

define_properties_with_modes(OE_THIS, OE_Options, Property_defs) ->
    corba:call(OE_THIS, define_properties_with_modes, [Property_defs], ?MODULE, OE_Options).

%%%% Operation: get_property_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
get_property_mode(OE_THIS, Property_name) ->
    corba:call(OE_THIS, get_property_mode, [Property_name], ?MODULE).

get_property_mode(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, get_property_mode, [Property_name], ?MODULE, OE_Options).

%%%% Operation: get_property_modes
%% 
%%   Returns: RetVal, Property_modes
%%
get_property_modes(OE_THIS, Property_names) ->
    corba:call(OE_THIS, get_property_modes, [Property_names], ?MODULE).

get_property_modes(OE_THIS, OE_Options, Property_names) ->
    corba:call(OE_THIS, get_property_modes, [Property_names], ?MODULE, OE_Options).

%%%% Operation: set_property_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::PropertyNotFound, CosPropertyService::UnsupportedMode
%%
set_property_mode(OE_THIS, Property_name, Property_mode) ->
    corba:call(OE_THIS, set_property_mode, [Property_name, Property_mode], ?MODULE).

set_property_mode(OE_THIS, OE_Options, Property_name, Property_mode) ->
    corba:call(OE_THIS, set_property_mode, [Property_name, Property_mode], ?MODULE, OE_Options).

%%%% Operation: set_property_modes
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
set_property_modes(OE_THIS, Property_modes) ->
    corba:call(OE_THIS, set_property_modes, [Property_modes], ?MODULE).

set_property_modes(OE_THIS, OE_Options, Property_modes) ->
    corba:call(OE_THIS, set_property_modes, [Property_modes], ?MODULE, OE_Options).

%%%% Operation: define_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::ReadOnlyProperty
%%
define_property(OE_THIS, Property_name, Property_value) ->
    corba:call(OE_THIS, define_property, [Property_name, Property_value], ?MODULE).

define_property(OE_THIS, OE_Options, Property_name, Property_value) ->
    corba:call(OE_THIS, define_property, [Property_name, Property_value], ?MODULE, OE_Options).

%%%% Operation: define_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
define_properties(OE_THIS, Nproperties) ->
    corba:call(OE_THIS, define_properties, [Nproperties], ?MODULE).

define_properties(OE_THIS, OE_Options, Nproperties) ->
    corba:call(OE_THIS, define_properties, [Nproperties], ?MODULE, OE_Options).

%%%% Operation: get_number_of_properties
%% 
%%   Returns: RetVal
%%
get_number_of_properties(OE_THIS) ->
    corba:call(OE_THIS, get_number_of_properties, [], ?MODULE).

get_number_of_properties(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, get_number_of_properties, [], ?MODULE, OE_Options).

%%%% Operation: get_all_property_names
%% 
%%   Returns: RetVal, Property_names, Rest
%%
get_all_property_names(OE_THIS, How_many) ->
    corba:call(OE_THIS, get_all_property_names, [How_many], ?MODULE).

get_all_property_names(OE_THIS, OE_Options, How_many) ->
    corba:call(OE_THIS, get_all_property_names, [How_many], ?MODULE, OE_Options).

%%%% Operation: get_property_value
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
get_property_value(OE_THIS, Property_name) ->
    corba:call(OE_THIS, get_property_value, [Property_name], ?MODULE).

get_property_value(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, get_property_value, [Property_name], ?MODULE, OE_Options).

%%%% Operation: get_properties
%% 
%%   Returns: RetVal, Nproperties
%%
get_properties(OE_THIS, Property_names) ->
    corba:call(OE_THIS, get_properties, [Property_names], ?MODULE).

get_properties(OE_THIS, OE_Options, Property_names) ->
    corba:call(OE_THIS, get_properties, [Property_names], ?MODULE, OE_Options).

%%%% Operation: get_all_properties
%% 
%%   Returns: RetVal, Nproperties, Rest
%%
get_all_properties(OE_THIS, How_many) ->
    corba:call(OE_THIS, get_all_properties, [How_many], ?MODULE).

get_all_properties(OE_THIS, OE_Options, How_many) ->
    corba:call(OE_THIS, get_all_properties, [How_many], ?MODULE, OE_Options).

%%%% Operation: delete_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName, CosPropertyService::FixedProperty
%%
delete_property(OE_THIS, Property_name) ->
    corba:call(OE_THIS, delete_property, [Property_name], ?MODULE).

delete_property(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, delete_property, [Property_name], ?MODULE, OE_Options).

%%%% Operation: delete_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
delete_properties(OE_THIS, Property_names) ->
    corba:call(OE_THIS, delete_properties, [Property_names], ?MODULE).

delete_properties(OE_THIS, OE_Options, Property_names) ->
    corba:call(OE_THIS, delete_properties, [Property_names], ?MODULE, OE_Options).

%%%% Operation: delete_all_properties
%% 
%%   Returns: RetVal
%%
delete_all_properties(OE_THIS) ->
    corba:call(OE_THIS, delete_all_properties, [], ?MODULE).

delete_all_properties(OE_THIS, OE_Options) ->
    corba:call(OE_THIS, delete_all_properties, [], ?MODULE, OE_Options).

%%%% Operation: is_property_defined
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName
%%
is_property_defined(OE_THIS, Property_name) ->
    corba:call(OE_THIS, is_property_defined, [Property_name], ?MODULE).

is_property_defined(OE_THIS, OE_Options, Property_name) ->
    corba:call(OE_THIS, is_property_defined, [Property_name], ?MODULE, OE_Options).

%%------------------------------------------------------------
%%
%% Inherited Interfaces
%%
%%------------------------------------------------------------
oe_is_a("IDL:omg.org/CosPropertyService/PropertySetDef:1.0") -> true;
oe_is_a("IDL:omg.org/CosPropertyService/PropertySet:1.0") -> true;
oe_is_a(_) -> false.

%%------------------------------------------------------------
%%
%% Interface TypeCode
%%
%%------------------------------------------------------------
oe_tc(get_allowed_property_types) -> 
	{tk_void,[],[{tk_sequence,tk_TypeCode,0}]};
oe_tc(get_allowed_properties) -> 
	{tk_void,[],
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                     "PropertyDef",
                     [{"property_name",{tk_string,0}},
                      {"property_value",tk_any},
                      {"property_mode",
                       {tk_enum,
                           "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}}]},
                 0}]};
oe_tc(define_property_with_mode) -> 
	{tk_void,[{tk_string,0},
                  tk_any,
                  {tk_enum,"IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}],
                 []};
oe_tc(define_properties_with_modes) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,"IDL:omg.org/CosPropertyService/PropertyDef:1.0",
                     "PropertyDef",
                     [{"property_name",{tk_string,0}},
                      {"property_value",tk_any},
                      {"property_mode",
                       {tk_enum,
                           "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}}]},
                 0}],
            []};
oe_tc(get_property_mode) -> 
	{{tk_enum,"IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                  "PropertyModeType",
                  ["normal","read_only","fixed_normal","fixed_readonly",
                   "undefined"]},
         [{tk_string,0}],
         []};
oe_tc(get_property_modes) -> 
	{tk_boolean,
            [{tk_sequence,{tk_string,0},0}],
            [{tk_sequence,
                 {tk_struct,
                     "IDL:omg.org/CosPropertyService/PropertyMode:1.0",
                     "PropertyMode",
                     [{"property_name",{tk_string,0}},
                      {"property_mode",
                       {tk_enum,
                           "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}}]},
                 0}]};
oe_tc(set_property_mode) -> 
	{tk_void,[{tk_string,0},
                  {tk_enum,"IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}],
                 []};
oe_tc(set_property_modes) -> 
	{tk_void,
            [{tk_sequence,
                 {tk_struct,
                     "IDL:omg.org/CosPropertyService/PropertyMode:1.0",
                     "PropertyMode",
                     [{"property_name",{tk_string,0}},
                      {"property_mode",
                       {tk_enum,
                           "IDL:omg.org/CosPropertyService/PropertyModeType:1.0",
                           "PropertyModeType",
                           ["normal","read_only","fixed_normal",
                            "fixed_readonly","undefined"]}}]},
                 0}],
            []};
oe_tc(define_property) -> 'CosPropertyService_PropertySet':oe_tc(define_property);
oe_tc(define_properties) -> 'CosPropertyService_PropertySet':oe_tc(define_properties);
oe_tc(get_number_of_properties) -> 'CosPropertyService_PropertySet':oe_tc(get_number_of_properties);
oe_tc(get_all_property_names) -> 'CosPropertyService_PropertySet':oe_tc(get_all_property_names);
oe_tc(get_property_value) -> 'CosPropertyService_PropertySet':oe_tc(get_property_value);
oe_tc(get_properties) -> 'CosPropertyService_PropertySet':oe_tc(get_properties);
oe_tc(get_all_properties) -> 'CosPropertyService_PropertySet':oe_tc(get_all_properties);
oe_tc(delete_property) -> 'CosPropertyService_PropertySet':oe_tc(delete_property);
oe_tc(delete_properties) -> 'CosPropertyService_PropertySet':oe_tc(delete_properties);
oe_tc(delete_all_properties) -> 'CosPropertyService_PropertySet':oe_tc(delete_all_properties);
oe_tc(is_property_defined) -> 'CosPropertyService_PropertySet':oe_tc(is_property_defined);
oe_tc(_) -> undefined.

oe_get_interface() -> 
	[{"is_property_defined", 'CosPropertyService_PropertySet':oe_tc(is_property_defined)},
	{"delete_all_properties", 'CosPropertyService_PropertySet':oe_tc(delete_all_properties)},
	{"delete_properties", 'CosPropertyService_PropertySet':oe_tc(delete_properties)},
	{"delete_property", 'CosPropertyService_PropertySet':oe_tc(delete_property)},
	{"get_all_properties", 'CosPropertyService_PropertySet':oe_tc(get_all_properties)},
	{"get_properties", 'CosPropertyService_PropertySet':oe_tc(get_properties)},
	{"get_property_value", 'CosPropertyService_PropertySet':oe_tc(get_property_value)},
	{"get_all_property_names", 'CosPropertyService_PropertySet':oe_tc(get_all_property_names)},
	{"get_number_of_properties", 'CosPropertyService_PropertySet':oe_tc(get_number_of_properties)},
	{"define_properties", 'CosPropertyService_PropertySet':oe_tc(define_properties)},
	{"define_property", 'CosPropertyService_PropertySet':oe_tc(define_property)},
	{"set_property_modes", oe_tc(set_property_modes)},
	{"set_property_mode", oe_tc(set_property_mode)},
	{"get_property_modes", oe_tc(get_property_modes)},
	{"get_property_mode", oe_tc(get_property_mode)},
	{"define_properties_with_modes", oe_tc(define_properties_with_modes)},
	{"define_property_with_mode", oe_tc(define_property_with_mode)},
	{"get_allowed_properties", oe_tc(get_allowed_properties)},
	{"get_allowed_property_types", oe_tc(get_allowed_property_types)}].




%%------------------------------------------------------------
%%
%% Object server implementation.
%%
%%------------------------------------------------------------


%%------------------------------------------------------------
%%
%% Function for fetching the interface type ID.
%%
%%------------------------------------------------------------

typeID() ->
    "IDL:omg.org/CosPropertyService/PropertySetDef:1.0".


%%------------------------------------------------------------
%%
%% Object creation functions.
%%
%%------------------------------------------------------------

oe_create() ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0").

oe_create_link() ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0").

oe_create(Env) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0", Env).

oe_create_link(Env) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0", Env).

oe_create(Env, RegName) ->
    corba:create(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0", Env, RegName).

oe_create_link(Env, RegName) ->
    corba:create_link(?MODULE, "IDL:omg.org/CosPropertyService/PropertySetDef:1.0", Env, RegName).

%%------------------------------------------------------------
%%
%% Init & terminate functions.
%%
%%------------------------------------------------------------

init(Env) ->
%% Call to implementation init
    corba:handle_init('CosPropertyService_PropertySetDef_impl', Env).

terminate(Reason, State) ->
    corba:handle_terminate('CosPropertyService_PropertySetDef_impl', Reason, State).


%%%% Operation: get_allowed_property_types
%% 
%%   Returns: RetVal, Property_types
%%
handle_call({OE_THIS, OE_Context, get_allowed_property_types, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_allowed_property_types, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_allowed_properties
%% 
%%   Returns: RetVal, Property_defs
%%
handle_call({OE_THIS, OE_Context, get_allowed_properties, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_allowed_properties, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: define_property_with_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::UnsupportedMode, CosPropertyService::ReadOnlyProperty
%%
handle_call({OE_THIS, OE_Context, define_property_with_mode, [Property_name, Property_value, Property_mode]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', define_property_with_mode, [Property_name, Property_value, Property_mode], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: define_properties_with_modes
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, define_properties_with_modes, [Property_defs]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', define_properties_with_modes, [Property_defs], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_property_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
handle_call({OE_THIS, OE_Context, get_property_mode, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_property_mode, [Property_name], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_property_modes
%% 
%%   Returns: RetVal, Property_modes
%%
handle_call({OE_THIS, OE_Context, get_property_modes, [Property_names]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_property_modes, [Property_names], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: set_property_mode
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::PropertyNotFound, CosPropertyService::UnsupportedMode
%%
handle_call({OE_THIS, OE_Context, set_property_mode, [Property_name, Property_mode]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', set_property_mode, [Property_name, Property_mode], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: set_property_modes
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, set_property_modes, [Property_modes]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', set_property_modes, [Property_modes], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: define_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName, CosPropertyService::ConflictingProperty, CosPropertyService::UnsupportedTypeCode, CosPropertyService::UnsupportedProperty, CosPropertyService::ReadOnlyProperty
%%
handle_call({OE_THIS, OE_Context, define_property, [Property_name, Property_value]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', define_property, [Property_name, Property_value], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: define_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, define_properties, [Nproperties]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', define_properties, [Nproperties], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_number_of_properties
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, get_number_of_properties, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_number_of_properties, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_property_names
%% 
%%   Returns: RetVal, Property_names, Rest
%%
handle_call({OE_THIS, OE_Context, get_all_property_names, [How_many]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_all_property_names, [How_many], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_property_value
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName
%%
handle_call({OE_THIS, OE_Context, get_property_value, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_property_value, [Property_name], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_properties
%% 
%%   Returns: RetVal, Nproperties
%%
handle_call({OE_THIS, OE_Context, get_properties, [Property_names]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_properties, [Property_names], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: get_all_properties
%% 
%%   Returns: RetVal, Nproperties, Rest
%%
handle_call({OE_THIS, OE_Context, get_all_properties, [How_many]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', get_all_properties, [How_many], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_property
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::PropertyNotFound, CosPropertyService::InvalidPropertyName, CosPropertyService::FixedProperty
%%
handle_call({OE_THIS, OE_Context, delete_property, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', delete_property, [Property_name], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_properties
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::MultipleExceptions
%%
handle_call({OE_THIS, OE_Context, delete_properties, [Property_names]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', delete_properties, [Property_names], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: delete_all_properties
%% 
%%   Returns: RetVal
%%
handle_call({OE_THIS, OE_Context, delete_all_properties, []}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', delete_all_properties, [], OE_State, OE_Context, OE_THIS, false);

%%%% Operation: is_property_defined
%% 
%%   Returns: RetVal
%%   Raises:  CosPropertyService::InvalidPropertyName
%%
handle_call({OE_THIS, OE_Context, is_property_defined, [Property_name]}, _, OE_State) ->
  corba:handle_call('CosPropertyService_PropertySetDef_impl', is_property_defined, [Property_name], OE_State, OE_Context, OE_THIS, false);



%%%% Standard gen_server call handle
%%
handle_call(stop, _, State) ->
    {stop, normal, ok, State};

handle_call(_, _, State) ->
    {reply, catch corba:raise(#'BAD_OPERATION'{minor=1163001857, completion_status='COMPLETED_NO'}), State}.


%%%% Standard gen_server cast handle
%%
handle_cast(stop, State) ->
    {stop, normal, State};

handle_cast(_, State) ->
    {noreply, State}.


%%%% Standard gen_server handles
%%
handle_info(_, State) ->
    {noreply, State}.


code_change(OldVsn, State, Extra) ->
    corba:handle_code_change('CosPropertyService_PropertySetDef_impl', OldVsn, State, Extra).

