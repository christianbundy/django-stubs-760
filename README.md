# Django Stubs #760 Reproduction

```console
$ docker build -t django-stubs-760 . && docker run django-stubs-760
Traceback (most recent call last):
  File "/usr/local/bin/mypy", line 8, in <module>
    sys.exit(console_entry())
             ^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/__main__.py", line 15, in console_entry
    main()
  File "/usr/local/lib/python3.11/site-packages/mypy/main.py", line 95, in main
    res, messages, blockers = run_build(sources, options, fscache, t0, stdout, stderr)
                              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/main.py", line 174, in run_build
    res = build.build(sources, options, None, flush_errors, fscache, stdout, stderr)
          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 194, in build
    result = _build(
             ^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 277, in _build
    graph = dispatch(sources, manager, stdout)
            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 2923, in dispatch
    process_graph(graph, manager)
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 3313, in process_graph
    process_fresh_modules(graph, prev_scc, manager)
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 3394, in process_fresh_modules
    graph[id].fix_cross_refs()
  File "/usr/local/lib/python3.11/site-packages/mypy/build.py", line 2120, in fix_cross_refs
    fixup_module(self.tree, self.manager.modules, self.options.use_fine_grained_cache)
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 53, in fixup_module
    node_fixer.visit_symbol_table(tree.names, tree.fullname)
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 138, in visit_symbol_table
    value.node.accept(self)
  File "/usr/local/lib/python3.11/site-packages/mypy/nodes.py", line 1020, in accept
    return visitor.visit_var(self)
           ^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 190, in visit_var
    v.type.accept(self.type_fixer)
  File "/usr/local/lib/python3.11/site-packages/mypy/types.py", line 1355, in accept
    return visitor.visit_instance(self)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 218, in visit_instance
    a.accept(self)
  File "/usr/local/lib/python3.11/site-packages/mypy/types.py", line 1355, in accept
    return visitor.visit_instance(self)
           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 209, in visit_instance
    inst.type = lookup_fully_qualified_typeinfo(
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/fixup.py", line 344, in lookup_fully_qualified_typeinfo
    stnode = lookup_fully_qualified(name, modules, raise_on_missing=not allow_missing)
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/usr/local/lib/python3.11/site-packages/mypy/lookup.py", line 49, in lookup_fully_qualified
    assert key in names, f"Cannot find component {key!r} for {name!r}"
           ^^^^^^^^^^^^
AssertionError: Cannot find component 'WithAnnotations[django__contrib__auth__models__User]' for 'django_stubs_ext.WithAnnotations[django__contrib__auth__models__User]'

```
