# https://pursuit.purescript.org/packages/purescript-postgresql-client

maybe

better errors, more stars

newtype Query i o = Query String

https://github.com/rightfold/purescript-postgresql-client/blob/v3.0.2/src/Database/PostgreSQL/PG.purs - monad class

Generating SQL Queries
The `purspg` preprocessor has been replaced by `sqltopurs`, which is a code generator instead of a preprocessor, and easier to use.

docs - https://abhinavsarkar.net/posts/ps-simple-rest-service/

https://github.com/FrigoEU/sqltopurs

HASKELL ANALOG - https://hackage.haskell.org/package/postgresql-simple-0.6.2/docs/Database-PostgreSQL-Simple.html (HASKELL DIFF - sql query as text)

# https://pursuit.purescript.org/packages/purescript-node-postgres

maybe, but justinwoo

uses `readXXX :: Foreign -> F XXX` approach

(example https://github.com/purescript/purescript-foreign/blob/master/examples/Applicative.purs)

# https://pursuit.purescript.org/packages/purescript-pg/

no, not used

# OTHER

other orm very popular
https://www.yesodweb.com/book/persistent
no purescript analog
no types generator from database schema
sql queries are generated from [mkMigration|...|]

-- http://hackage.haskell.org/package/persistent-audit : input - hs file, output - hs file with migration with history/audit table migration

-- https://github.com/alevy/postgresql-orm/blob/master/src/Database/PostgreSQL/Migrate.hs
-- has migration script O-O that generates hs file from sql file???? O-O??

# TODO

`$(genBeamSchema "host=localhost dbname=shoppingcart1")`
how works - https://hackage.haskell.org/package/beam-postgres-0.4.0.0/docs/src/Database.Beam.Postgres.Migrate.html#getDbConstraints
output - https://github.com/gagandeepb/Frames-beam/blob/master/test/NewBeamSchema.hs
http://hackage.haskell.org/package/Frames-beam
http://acowley.github.io/Frames/
https://tathougies.github.io/beam/
no purescript analog

hasura and that typescript lib also has needed quesry
https://github.com/hasura/graphql-engine/blob/master/server/src-rsr/table_meta.sql
