include makefile.inc

postgres:
	$(MAKE) -C ddl/postgres/GLOBAL createdb
	$(MAKE) postgres_load

postgres_load:
	$(MAKE) -C ddl/postgres load
	$(MAKE) -C data/postgres load

postgres_drop:
	$(MAKE) -C ddl/postgres/GLOBAL drop

oracle:
	$(MAKE) -C ddl/oracle load

oracle_drop:
	$(MAKE) -C ddl/oracle drop

.PHONY: postgres postgres_load postgres_drop oracle oracle_drop
