# G-NAF
Geocoded National Address File is Australia’s authoritative, geocoded address file. This repo has a few tools / scripts to create derived datasets

# Address Flat Table

This table has all addreses (as in `address_detail` table) and contains addtional information. Appendix B in G-NAF documentation decribes G-NAF data model in detail.

```
            Table "public.address_detail_flat"
          Column           |       Type       | Modifiers 
---------------------------+------------------+-----------
 address_detail_pid        | text             | 
 building_name             | text             | 
 lot_number_prefix         | text             | 
 lot_number                | text             | 
 lot_number_suffix         | text             | 
 flat_type_code            | text             | 
 flat_number_prefix        | text             | 
 flat_number               | integer          | 
 flat_number_suffix        | text             | 
 level_type_code           | text             | 
 level_number_prefix       | text             | 
 level_number              | integer          | 
 level_number_suffix       | text             | 
 number_first_prefix       | text             | 
 number_first              | integer          | 
 number_first_suffix       | text             | 
 number_last_prefix        | text             | 
 number_last               | integer          | 
 number_last_suffix        | text             | 
 location_description      | text             | 
 alias_principal           | text             | 
 postcode                  | text             | 
 private_street            | text             | 
 legal_parcel_id           | text             | 
 confidence                | integer          | 
 level_geocoded_code       | integer          | 
 property_pid              | text             | 
 gnaf_property_pid         | text             | 
 primary_secondary         | text             | 
 m2_mb_2011_code           | text             | 
 amb2_mb_match_code        | text             | 
 sl_street_class_code      | text             | 
 sl_street_name            | text             | 
 sl_street_type_code       | text             | 
 sl_street_suffix_code     | text             | 
 sl_gnaf_street_pid        | text             | 
 sl_gnaf_street_confidence | integer          | 
 sl_gnaf_reliability_code  | integer          | 
 l_locality_name           | text             | 
 l_primary_postcode        | text             | 
 l_locality_class_code     | text             | 
 l_gnaf_locality_pid       | text             | 
 l_gnaf_reliability_code   | integer          | 
 s_state_abbreviation      | text             | 
 lp_planimetric_accuracy   | integer          | 
 lp_longitude              | double precision | 
 lp_latitude               | double precision | 
 as_address_type           | text             | 
 as_address_site_name      | text             | 
 adg_geocode_type_code     | text             | 
 adg_longitude             | double precision | 
 adg_latitude              | double precision | 
 slp_boundary_extent       | integer          | 
 slp_planimetric_accuracy  | integer          | 
 slp_longitude             | double precision | 
 slp_latitude              | double precision | 
```

The following tables are included:

- address_mesh_block_2011 (`amb2_`)
- mb_2011 (`mb_`)
- address_site (`as_`)
- locality (`l_`)
- street_locality (`sl_`)
- state (`s_`)
- locality_point (`lp_`)
- address_default_geocode (`adg_`)
- street_locality_point (`slp_`)
