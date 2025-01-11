#!/usr/bin/env ys-0

require ys::taptest: :all

test::
#-------------------------------------------------------------------------------
- cmnd: ys -Y file.yml
  want: |
    countries:
    - name: foo
      population: 1000
      area: 42334.11
      climate: Foggy wet.
    - name: bar
      population: 2000
      area: 44242
      incomeTax: 55
    - name: baz
      population: 100
      area: 1234.432
      planet: Mars

- cmnd: ys -Y err/file-01.yml
  what: err
  want: |
    Runtime error:
    Missing key 'name' in:
    {type Triangle, sides [3 4 5]}

- cmnd: ys -Y err/file-02.yml
  what: err
  want: |
    Runtime error:
    -1000 is not in range 0..

- cmnd: ys -Y err/file-03.yml
  what: err
  want: |
    Runtime error:
    Failed to validate type 'planets' for:
    Marzzz

done:
