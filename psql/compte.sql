
\lo_import :file

\set myoid :LASTOID

\timing
select count(*) from (select regexp_split_to_table(convert_from(loread(lo_open(:myoid,x'40000'::int),1073741800),'utf8'),E'\\n')) as tmp;
\timing
\lo_unlink :myoid
