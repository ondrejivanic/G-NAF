drop table if exists state;
create table state as
select
  state_pid
  , daterange(date_created::date, date_retired::date) "date"
  , state_name
  , state_abbreviation
from (
  select * from staging.act_state
  union all
  select * from staging.nsw_state
  union all
  select * from staging.nt_state
  union all
  select * from staging.ot_state
  union all
  select * from staging.qld_state
  union all
  select * from staging.sa_state
  union all
  select * from staging.tas_state
  union all
  select * from staging.vic_state
  union all
  select * from staging.wa_state
) s
;

drop table if exists staging.address_detail;
create table staging.address_detail as
select
  address_detail_pid
  , daterange(date_created::date, date_retired::date) "date"
  , date_last_modified::date
  , building_name
  , lot_number_prefix
  , lot_number
  , lot_number_suffix
  , flat_type_code
  , flat_number_prefix
  , flat_number::int
  , flat_number_suffix
  , level_type_code
  , level_number_prefix
  , level_number::int
  , level_number_suffix
  , number_first_prefix
  , number_first::int
  , number_first_suffix
  , number_last_prefix
  , number_last::int
  , number_last_suffix
  , street_locality_pid
  , location_description
  , locality_pid
  , alias_principal
  , postcode
  , private_street
  , legal_parcel_id
  , confidence::int
  , address_site_pid
  , level_geocoded_code::int
  , property_pid
  , gnaf_property_pid
  , primary_secondary
from (
  select * from staging.act_address_detail
  union all
  select * from staging.nsw_address_detail
  union all
  select * from staging.nt_address_detail
  union all
  select * from staging.ot_address_detail
  union all
  select * from staging.qld_address_detail
  union all
  select * from staging.sa_address_detail
  union all
  select * from staging.tas_address_detail
  union all
  select * from staging.vic_address_detail
  union all
  select * from staging.wa_address_detail
) s
;

drop table if exists staging.address_site;
create table staging.address_site as
select
  address_site_pid
  , daterange(date_created::date, date_retired::date) "date"
  , address_type
  , address_site_name
from (
  select * from staging.act_address_site
  union all
  select * from staging.nsw_address_site
  union all
  select * from staging.nt_address_site
  union all
  select * from staging.ot_address_site
  union all
  select * from staging.qld_address_site
  union all
  select * from staging.sa_address_site
  union all
  select * from staging.tas_address_site
  union all
  select * from staging.vic_address_site
  union all
  select * from staging.wa_address_site
) s
;

drop table if exists staging.street_locality;
create table staging.street_locality as
select
  street_locality_pid
  , daterange(date_created::date, date_retired::date) "date"
  , street_class_code
  , street_name
  , street_type_code
  , street_suffix_code
  , locality_pid
  , gnaf_street_pid
  , gnaf_street_confidence::int
  , gnaf_reliability_code::int
from (
  select * from staging.act_street_locality
  union all
  select * from staging.nsw_street_locality
  union all
  select * from staging.nt_street_locality
  union all
  select * from staging.ot_street_locality
  union all
  select * from staging.qld_street_locality
  union all
  select * from staging.sa_street_locality
  union all
  select * from staging.tas_street_locality
  union all
  select * from staging.vic_street_locality
  union all
  select * from staging.wa_street_locality
) s
;

drop table if exists staging.locality;
create table staging.locality as
select
  locality_pid
  , daterange(date_created::date, date_retired::date) "date"
  , locality_name
  , primary_postcode
  , locality_class_code
  , state_pid
  , gnaf_locality_pid
  , gnaf_reliability_code::int
from (
  select * from staging.act_locality
  union all
  select * from staging.nsw_locality
  union all
  select * from staging.nt_locality
  union all
  select * from staging.ot_locality
  union all
  select * from staging.qld_locality
  union all
  select * from staging.sa_locality
  union all
  select * from staging.tas_locality
  union all
  select * from staging.vic_locality
  union all
  select * from staging.wa_locality
) s
;

drop table if exists staging.address_alias;
create table staging.address_alias as
select
  address_alias_pid
  , daterange(date_created::date, date_retired::date) "date"
  , principal_pid
  , alias_pid
  , alias_type_code
  , alias_comment
from (
  select * from staging.act_address_alias
  union all
  select * from staging.nsw_address_alias
  union all
  select * from staging.nt_address_alias
  union all
  select * from staging.ot_address_alias
  union all
  select * from staging.qld_address_alias
  union all
  select * from staging.sa_address_alias
  union all
  select * from staging.tas_address_alias
  union all
  select * from staging.vic_address_alias
  union all
  select * from staging.wa_address_alias
) s
;

drop table if exists staging.street_locality_alias;
create table staging.street_locality_alias as
select
  street_locality_alias_pid
  , daterange(date_created::date, date_retired::date) "date"
  , street_locality_pid
  , street_name
  , street_type_code
  , street_suffix_code
  , alias_type_code
from (
  select * from staging.act_street_locality_alias
  union all
  select * from staging.nsw_street_locality_alias
  union all
  select * from staging.nt_street_locality_alias
  union all
  select * from staging.ot_street_locality_alias
  union all
  select * from staging.qld_street_locality_alias
  union all
  select * from staging.sa_street_locality_alias
  union all
  select * from staging.tas_street_locality_alias
  union all
  select * from staging.vic_street_locality_alias
  union all
  select * from staging.wa_street_locality_alias
) s
;

drop table if exists staging.locality_neighbour;
create table staging.locality_neighbour as
select
  locality_neighbour_pid
  , daterange(date_created::date, date_retired::date) "date"
  , locality_pid
  , neighbour_locality_pid
from (
  select * from staging.act_locality_neighbour
  union all
  select * from staging.nsw_locality_neighbour
  union all
  select * from staging.nt_locality_neighbour
  union all
  select * from staging.ot_locality_neighbour
  union all
  select * from staging.qld_locality_neighbour
  union all
  select * from staging.sa_locality_neighbour
  union all
  select * from staging.tas_locality_neighbour
  union all
  select * from staging.vic_locality_neighbour
  union all
  select * from staging.wa_locality_neighbour
) s
;

drop table if exists staging.locality_alias;
create table staging.locality_alias as
select
  locality_alias_pid
  , daterange(date_created::date, date_retired::date) "date"
  , locality_pid
  , name
  , postcode
  , alias_type_code
  , state_pid
from (
  select * from staging.act_locality_alias
  union all
  select * from staging.nsw_locality_alias
  union all
  select * from staging.nt_locality_alias
  union all
  select * from staging.ot_locality_alias
  union all
  select * from staging.qld_locality_alias
  union all
  select * from staging.sa_locality_alias
  union all
  select * from staging.tas_locality_alias
  union all
  select * from staging.vic_locality_alias
  union all
  select * from staging.wa_locality_alias
) s
;

drop table if exists staging.locality_point;
create table staging.locality_point as
select
  locality_point_pid
  , daterange(date_created::date, date_retired::date) "date"
  , locality_pid
  , planimetric_accuracy::int
  , longitude::double precision
  , latitude::double precision
from (
  select * from staging.act_locality_point
  union all
  select * from staging.nsw_locality_point
  union all
  select * from staging.nt_locality_point
  union all
  select * from staging.ot_locality_point
  union all
  select * from staging.qld_locality_point
  union all
  select * from staging.sa_locality_point
  union all
  select * from staging.tas_locality_point
  union all
  select * from staging.vic_locality_point
  union all
  select * from staging.wa_locality_point
) s
;

drop table if exists staging.address_default_geocode;
create table staging.address_default_geocode as
select
  address_default_geocode_pid
  , daterange(date_created::date, date_retired::date) "date"
  , address_detail_pid
  , geocode_type_code
  , longitude::double precision
  , latitude::double precision
from (
  select * from staging.act_address_default_geocode
  union all
  select * from staging.nsw_address_default_geocode
  union all
  select * from staging.nt_address_default_geocode
  union all
  select * from staging.ot_address_default_geocode
  union all
  select * from staging.qld_address_default_geocode
  union all
  select * from staging.sa_address_default_geocode
  union all
  select * from staging.tas_address_default_geocode
  union all
  select * from staging.vic_address_default_geocode
  union all
  select * from staging.wa_address_default_geocode
) s
;

drop table if exists staging.address_site_geocode;
create table staging.address_site_geocode as
select
  address_site_geocode_pid
  , daterange(date_created::date, date_retired::date) "date"
  , address_site_pid
  , geocode_site_name
  , geocode_site_description
  , geocode_type_code
  , reliability_code::int
  , boundary_extent::int
  , planimetric_accuracy::int
  , elevation::double precision
  , longitude::double precision
  , latitude::double precision
from (
  select * from staging.act_address_site_geocode
  union all
  select * from staging.nsw_address_site_geocode
  union all
  select * from staging.nt_address_site_geocode
  union all
  select * from staging.ot_address_site_geocode
  union all
  select * from staging.qld_address_site_geocode
  union all
  select * from staging.sa_address_site_geocode
  union all
  select * from staging.tas_address_site_geocode
  union all
  select * from staging.vic_address_site_geocode
  union all
  select * from staging.wa_address_site_geocode
) s
;

drop table if exists staging.address_site_geocode;
create table staging.address_site_geocode as
select
  address_site_geocode_pid
  , daterange(date_created::date, date_retired::date) "date"
  , address_site_pid
  , geocode_site_name
  , geocode_site_description
  , geocode_type_code
  , reliability_code::int
  , boundary_extent::int
  , planimetric_accuracy::int
  , elevation::double precision
  , longitude::double precision
  , latitude::double precision
from (
  select * from staging.act_address_site_geocode
  union all
  select * from staging.nsw_address_site_geocode
  union all
  select * from staging.nt_address_site_geocode
  union all
  select * from staging.ot_address_site_geocode
  union all
  select * from staging.qld_address_site_geocode
  union all
  select * from staging.sa_address_site_geocode
  union all
  select * from staging.tas_address_site_geocode
  union all
  select * from staging.vic_address_site_geocode
  union all
  select * from staging.wa_address_site_geocode
) s
;

drop table if exists staging.street_locality_point;
create table staging.street_locality_point as
select
  street_locality_point_pid
  , daterange(date_created::date, date_retired::date) "date"
  , street_locality_pid
  , boundary_extent::int
  , planimetric_accuracy::int
  , longitude::double precision
  , latitude::double precision
from (
  select * from staging.act_street_locality_point
  union all
  select * from staging.nsw_street_locality_point
  union all
  select * from staging.nt_street_locality_point
  union all
  select * from staging.ot_street_locality_point
  union all
  select * from staging.qld_street_locality_point
  union all
  select * from staging.sa_street_locality_point
  union all
  select * from staging.tas_street_locality_point
  union all
  select * from staging.vic_street_locality_point
  union all
  select * from staging.wa_street_locality_point
) s
;

drop table if exists staging.primary_secondary;
create table staging.primary_secondary as
select
  primary_secondary_pid
  , primary_pid
  , secondary_pid
  , daterange(date_created::date, date_retired::date) "date"
  , ps_join_type_code::int
  , ps_join_comment
from (
  select * from staging.act_primary_secondary
  union all
  select * from staging.nsw_primary_secondary
  union all
  select * from staging.nt_primary_secondary
  union all
  select * from staging.ot_primary_secondary
  union all
  select * from staging.qld_primary_secondary
  union all
  select * from staging.sa_primary_secondary
  union all
  select * from staging.tas_primary_secondary
  union all
  select * from staging.vic_primary_secondary
  union all
  select * from staging.wa_primary_secondary
) s
;

drop table if exists staging.address_mesh_block_2011;
create table staging.address_mesh_block_2011 as
select
  address_mesh_block_2011_pid
  , daterange(date_created::date, date_retired::date) "date"
  , address_detail_pid
  , mb_match_code
  , mb_2011_pid
from (
  select * from staging.act_address_mesh_block_2011
  union all
  select * from staging.nsw_address_mesh_block_2011
  union all
  select * from staging.nt_address_mesh_block_2011
  union all
  select * from staging.ot_address_mesh_block_2011
  union all
  select * from staging.qld_address_mesh_block_2011
  union all
  select * from staging.sa_address_mesh_block_2011
  union all
  select * from staging.tas_address_mesh_block_2011
  union all
  select * from staging.vic_address_mesh_block_2011
  union all
  select * from staging.wa_address_mesh_block_2011
) s
;

drop table if exists staging.mb_2011;
create table staging.mb_2011 as
select
  mb_2011_pid
  , daterange(date_created::date, date_retired::date) "date"
  , mb_2011_code
from (
  select * from staging.act_mb_2011
  union all
  select * from staging.nsw_mb_2011
  union all
  select * from staging.nt_mb_2011
  union all
  select * from staging.ot_mb_2011
  union all
  select * from staging.qld_mb_2011
  union all
  select * from staging.sa_mb_2011
  union all
  select * from staging.tas_mb_2011
  union all
  select * from staging.vic_mb_2011
  union all
  select * from staging.wa_mb_2011
) s
;

drop table if exists address_detail_flat;
create table address_detail_flat as
select
  ad.address_detail_pid
  , ad.building_name
  , ad.lot_number_prefix
  , ad.lot_number
  , ad.lot_number_suffix
  , ad.flat_type_code
  , ad.flat_number_prefix
  , ad.flat_number
  , ad.flat_number_suffix
  , ad.level_type_code
  , ad.level_number_prefix
  , ad.level_number
  , ad.level_number_suffix
  , ad.number_first_prefix
  , ad.number_first
  , ad.number_first_suffix
  , ad.number_last_prefix
  , ad.number_last
  , ad.number_last_suffix
  , ad.location_description
  , ad.alias_principal
  , ad.postcode
  , ad.private_street
  , ad.legal_parcel_id
  , ad.confidence
  , ad.level_geocoded_code
  , ad.property_pid
  , ad.gnaf_property_pid
  , ad.primary_secondary
  , m2.mb_2011_code m2_mb_2011_code
  , amb2.mb_match_code amb2_mb_match_code
  , sl.street_class_code sl_street_class_code
  , sl.street_name sl_street_name
  , sl.street_type_code sl_street_type_code
  , sl.street_suffix_code sl_street_suffix_code
  , sl.gnaf_street_pid sl_gnaf_street_pid
  , sl.gnaf_street_confidence sl_gnaf_street_confidence
  , sl.gnaf_reliability_code sl_gnaf_reliability_code
  , l.locality_name l_locality_name
  , l.primary_postcode l_primary_postcode
  , l.locality_class_code l_locality_class_code
  , l.gnaf_locality_pid l_gnaf_locality_pid
  , l.gnaf_reliability_code l_gnaf_reliability_code
  , s.state_abbreviation s_state_abbreviation
  , lp.planimetric_accuracy lp_planimetric_accuracy
  , lp.longitude lp_longitude
  , lp.latitude lp_latitude
  , "as".address_type as_address_type
  , "as".address_site_name as_address_site_name
  , adg.geocode_type_code adg_geocode_type_code
  , adg.longitude adg_longitude
  , adg.latitude adg_latitude
  , slp.boundary_extent slp_boundary_extent
  , slp.planimetric_accuracy slp_planimetric_accuracy
  , slp.longitude slp_longitude
  , slp.latitude slp_latitude
from staging.address_detail ad
left outer join staging.address_mesh_block_2011 amb2 on amb2.address_detail_pid = ad.address_detail_pid
left outer join staging.mb_2011 m2 on m2.mb_2011_pid = amb2.mb_2011_pid
left outer join staging.address_site "as" on "as".address_site_pid = ad.address_site_pid
left outer join staging.locality l on l.locality_pid = ad.locality_pid
left outer join staging.street_locality sl on sl.street_locality_pid = ad.street_locality_pid
left outer join state s on s.state_pid = l.state_pid
left outer join staging.locality_point lp on lp.locality_pid = l.locality_pid
left outer join staging.address_default_geocode adg on adg.address_detail_pid = ad.address_detail_pid
left outer join staging.street_locality_point slp on slp.street_locality_pid = sl.street_locality_pid
;