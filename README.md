# hacker-rank-solutions

Some algorithm solutions to HackerRank problems


## Rubocop Offenses

### `save-princess.rb`

```bash
Offenses:

save-princess.rb:1:1: W: Lint/ScriptPermission: Script file save-princess.rb doesn't have execute permission.
#!/bin/ruby
^^^^^^^^^^^
save-princess.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/bin/ruby
^
save-princess.rb:5:5: C: Naming/MethodName: Use snake_case for method names.
def displayPathToPrincess(n, grid)
    ^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:5:27: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
def displayPathToPrincess(n, grid)
                          ^
save-princess.rb:6:27: C: [Correctable] Layout/TrailingWhitespace: Trailing whitespace detected.
  grid = Grid.new(n, grid) 
                          ^
save-princess.rb:8:3: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
  if not grid.is_valid
  ^^
save-princess.rb:8:3: C: [Correctable] Style/NegatedIf: Favor unless over if for negative conditions.
  if not grid.is_valid ...
  ^^^^^^^^^^^^^^^^^^^^
save-princess.rb:8:6: C: [Correctable] Style/Not: Use ! instead of not.
  if not grid.is_valid
     ^^^
save-princess.rb:9:11: C: [Correctable] Style/StringLiterals: Prefer single-quoted strings when you don't need string interpolation or special symbols.
    raise "Grid validation error"
          ^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:18:1: C: Style/Documentation: Missing top-level class documentation comment.
class Grid
^^^^^
save-princess.rb:20:1: C: [Correctable] Layout/TrailingWhitespace: Trailing whitespace detected.
save-princess.rb:21:18: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
  def initialize(n, grid)
                 ^
save-princess.rb:30:7: C: Naming/PredicateName: Rename has_valid_row_count to valid_row_count?.
  def has_valid_row_count
      ^^^^^^^^^^^^^^^^^^^
save-princess.rb:31:5: C: [Correctable] Style/RedundantSelf: Redundant self detected.
    self.n == self.matrix.size
    ^^^^^^
save-princess.rb:31:15: C: [Correctable] Style/RedundantSelf: Redundant self detected.
    self.n == self.matrix.size
              ^^^^^^^^^^^
save-princess.rb:34:7: C: Naming/PredicateName: Rename has_valid_column_count to valid_column_count?.
  def has_valid_column_count
      ^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:35:15: C: [Correctable] Style/InverseMethods: Use reject instead of inverting select.
    invalid = self.matrix.select { |line| line.size != self.n }
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:35:15: C: [Correctable] Style/RedundantSelf: Redundant self detected.
    invalid = self.matrix.select { |line| line.size != self.n }
              ^^^^^^^^^^^
save-princess.rb:35:56: C: [Correctable] Style/RedundantSelf: Redundant self detected.
    invalid = self.matrix.select { |line| line.size != self.n }
                                                       ^^^^^^
save-princess.rb:36:5: C: [Correctable] Style/NumericPredicate: Use invalid.size.zero? instead of invalid.size == 0.
    invalid.size == 0
    ^^^^^^^^^^^^^^^^^
save-princess.rb:36:5: C: [Correctable] Style/ZeroLengthPredicate: Use empty? instead of size == 0.
    invalid.size == 0
    ^^^^^^^^^^^^^^^^^
save-princess.rb:39:7: C: Naming/PredicateName: Rename is_valid to valid?.
  def is_valid
      ^^^^^^^^
save-princess.rb:44:5: C: [Correctable] Style/RedundantSelf: Redundant self detected.
    self.matrix.each.with_index do |line, x_index|
    ^^^^^^^^^^^
save-princess.rb:46:9: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
        if column == val
        ^^
save-princess.rb:51:1: C: [Correctable] Layout/EmptyLinesAroundMethodBody: Extra empty line detected at method body end.
save-princess.rb:54:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
  def get_princess_coordinates
      ^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:55:5: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
    if not princess_coord
    ^^
save-princess.rb:55:5: C: [Correctable] Style/NegatedIf: Favor unless over if for negative conditions.
    if not princess_coord ...
    ^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:55:8: C: [Correctable] Style/Not: Use ! instead of not.
    if not princess_coord
       ^^^
save-princess.rb:56:25: C: [Correctable] Style/RedundantSelf: Redundant self detected.
      @princess_coord = self.get_coordinates_for(@princess_mark)
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:61:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
  def get_bot_coordinates
      ^^^^^^^^^^^^^^^^^^^
save-princess.rb:62:5: C: [Correctable] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
    if not bot_coord
    ^^
save-princess.rb:62:5: C: [Correctable] Style/NegatedIf: Favor unless over if for negative conditions.
    if not bot_coord ...
    ^^^^^^^^^^^^^^^^
save-princess.rb:62:8: C: [Correctable] Style/Not: Use ! instead of not.
    if not bot_coord
       ^^^
save-princess.rb:63:20: C: [Correctable] Style/RedundantSelf: Redundant self detected.
      @bot_coord = self.get_coordinates_for(@bot_mark)
                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:68:3: C: Metrics/AbcSize: Assignment Branch Condition size for get_path is too high. [<11, 15, 8> 20.25/17]
  def get_path ...
  ^^^^^^^^^^^^
save-princess.rb:68:3: C: Metrics/MethodLength: Method has too many lines. [20/10]
  def get_path ...
  ^^^^^^^^^^^^
save-princess.rb:68:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
  def get_path
      ^^^^^^^^
save-princess.rb:74:5: C: [Correctable] Style/ConditionalAssignment: Use the return of the conditional for variable assignment and comparison.
    if row_diff > 0 ...
    ^^^^^^^^^^^^^^^
save-princess.rb:74:8: C: [Correctable] Style/NumericPredicate: Use row_diff.positive? instead of row_diff > 0.
    if row_diff > 0
       ^^^^^^^^^^^^
save-princess.rb:80:5: C: [Correctable] Style/ConditionalAssignment: Use the return of the conditional for variable assignment and comparison.
    if col_diff > 0 ...
    ^^^^^^^^^^^^^^^
save-princess.rb:80:8: C: [Correctable] Style/NumericPredicate: Use col_diff.positive? instead of col_diff > 0.
    if col_diff > 0
       ^^^^^^^^^^^^
save-princess.rb:86:5: C: [Correctable] Style/For: Prefer each over for.
    for i in (1..row_diff.abs) do ...
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:86:9: W: Lint/UselessAssignment: Useless assignment to variable - i.
    for i in (1..row_diff.abs) do
        ^
save-princess.rb:90:5: C: [Correctable] Style/For: Prefer each over for.
    for i in (1..col_diff.abs) do ...
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess.rb:90:9: W: Lint/UselessAssignment: Useless assignment to variable - i.
    for i in (1..col_diff.abs) do
        ^
save-princess.rb:93:1: C: [Correctable] Layout/TrailingWhitespace: Trailing whitespace detected.
save-princess.rb:96:1: C: [Correctable] Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body end.
save-princess.rb:107:31: C: [Correctable] Layout/TrailingEmptyLines: Final newline missing.
displayPathToPrincess(m, grid)
                              

1 file inspected, 49 offenses detected, 34 offenses auto-correctable
```

### `save-princess-2.rb`

```bash
save-princess-2.rb:1:1: C: [Correctable] Style/FrozenStringLiteralComment: Missing frozen string literal comment.
#!/bin/ruby
^
save-princess-2.rb:6:5: C: Naming/MethodName: Use snake_case for method names.
def nextMove(n, x, y, grid)
    ^^^^^^^^
save-princess-2.rb:6:14: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
def nextMove(n, x, y, grid)
             ^
save-princess-2.rb:6:17: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
def nextMove(n, x, y, grid)
                ^
save-princess-2.rb:6:20: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
def nextMove(n, x, y, grid)
                   ^
save-princess-2.rb:9:19: C: [Corrected] Layout/SpaceAfterComma: Space missing after comma.
  g.bot_coord = [x,y]
                  ^
save-princess-2.rb:13:3: C: [Corrected] Style/RedundantReturn: Redundant return detected.
  return g.next_move
  ^^^^^^
save-princess-2.rb:16:1: C: Style/Documentation: Missing top-level class documentation comment.
class Grid
^^^^^
save-princess-2.rb:17:1: C: [Corrected] Layout/EmptyLinesAroundClassBody: Extra empty line detected at class body beginning.
save-princess-2.rb:20:18: C: Naming/MethodParameterName: Method parameter must be at least 3 characters long.
  def initialize(n, grid)
                 ^
save-princess-2.rb:29:7: C: Naming/PredicateName: Rename has_valid_row_count to valid_row_count?.
  def has_valid_row_count
      ^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:31:5: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    self.n == self.matrix.size
    ^^^^^^
save-princess-2.rb:31:15: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    self.n == self.matrix.size
              ^^^^^^^^^^^
save-princess-2.rb:33:7: C: Naming/PredicateName: Rename has_valid_column_count to valid_column_count?.
  def has_valid_column_count
      ^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:34:15: C: [Correctable] Style/InverseMethods: Use reject instead of inverting select.
    invalid = matrix.select { |line| line.size != n }
              ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:35:5: C: [Correctable] Style/NumericPredicate: Use invalid.size.zero? instead of invalid.size == 0.
    invalid.size == 0
    ^^^^^^^^^^^^^^^^^
save-princess-2.rb:35:5: C: [Correctable] Style/ZeroLengthPredicate: Use empty? instead of size == 0.
    invalid.size == 0
    ^^^^^^^^^^^^^^^^^
save-princess-2.rb:35:15: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    invalid = self.matrix.select { |line| line.size != self.n }
              ^^^^^^^^^^^
save-princess-2.rb:35:56: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    invalid = self.matrix.select { |line| line.size != self.n }
                                                       ^^^^^^
save-princess-2.rb:38:7: C: Naming/PredicateName: Rename is_valid to valid?.
  def is_valid
      ^^^^^^^^
save-princess-2.rb:44:5: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    self.matrix.each.with_index do |line, x_index|
    ^^^^^^^^^^^
save-princess-2.rb:46:9: C: [Corrected] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
        if column == val
        ^^
save-princess-2.rb:50:7: C: Naming/AccessorMethodName: Do not prefix reader method names with get_.
  def get_princess_coordinates
      ^^^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:51:1: C: [Corrected] Layout/EmptyLinesAroundMethodBody: Extra empty line detected at method body end.
save-princess-2.rb:51:5: C: [Corrected] Style/NegatedIf: Favor unless over if for negative conditions.
    @princess_coord = self.get_coordinates_for(@princess_mark) if not princess_coord
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:51:23: C: [Corrected] Style/RedundantSelf: Redundant self detected.
    @princess_coord = self.get_coordinates_for(@princess_mark) if not princess_coord
                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:51:67: C: [Corrected] Style/Not: Use ! instead of not.
    @princess_coord = self.get_coordinates_for(@princess_mark) if not princess_coord
                                                                  ^^^
save-princess-2.rb:55:3: C: Metrics/MethodLength: Method has too many lines. [17/10]
  def next_move ...
  ^^^^^^^^^^^^^
save-princess-2.rb:55:5: C: [Corrected] Style/IfUnlessModifier: Favor modifier if usage when having a single-line body. Another good alternative is the usage of control flow &&/||.
    if not princess_coord
    ^^
save-princess-2.rb:55:5: C: [Corrected] Style/NegatedIf: Favor unless over if for negative conditions.
    if not princess_coord ...
    ^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:55:8: C: [Corrected] Style/Not: Use ! instead of not.
    if not princess_coord
       ^^^
save-princess-2.rb:56:25: C: [Corrected] Style/RedundantSelf: Redundant self detected.
      @princess_coord = self.get_coordinates_for(@princess_mark)
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
save-princess-2.rb:61:8: C: [Corrected] Style/Not: Use ! instead of not.
    if not row_diff == 0
       ^^^
save-princess-2.rb:62:15: C: [Corrected] Layout/TrailingWhitespace: Trailing whitespace detected.
    move = nil 
              ^
save-princess-2.rb:62:17: C: [Correctable] Style/NumericPredicate: Use row_diff.positive? instead of row_diff > 0.
      move = if row_diff > 0
                ^^^^^^^^^^^^
save-princess-2.rb:63:9: C: [Corrected] Layout/IndentationWidth: Use 2 (not -5) spaces for indentation.
        'UP' ...
        ^^^^
save-princess-2.rb:64:7: C: [Corrected] Layout/ElseAlignment: Align else with if.
      else
      ^^^^
save-princess-2.rb:65:9: C: [Corrected] Layout/IndentationWidth: Use 2 (not -5) spaces for indentation.
        'DOWN'
        ^^^^^
save-princess-2.rb:67:8: C: [Corrected] Style/Not: Use ! instead of not.
    if not row_diff == 0
       ^^^
save-princess-2.rb:67:11: C: [Corrected] Style/Not: Use ! instead of not.
    elsif not col_diff == 0
          ^^^
save-princess-2.rb:68:7: C: [Corrected] Style/ConditionalAssignment: Use the return of the conditional for variable assignment and comparison.
      if row_diff > 0 ...
      ^^^^^^^^^^^^^^^
save-princess-2.rb:68:17: C: [Correctable] Style/NumericPredicate: Use col_diff.positive? instead of col_diff > 0.
      move = if col_diff > 0
                ^^^^^^^^^^^^
save-princess-2.rb:69:9: C: [Corrected] Layout/IndentationWidth: Use 2 (not -5) spaces for indentation.
        'LEFT'
        ^^^^^
save-princess-2.rb:70:7: C: [Corrected] Layout/ElseAlignment: Align else with if.
      else
      ^^^^
save-princess-2.rb:71:9: C: [Corrected] Layout/IndentationWidth: Use 2 (not -5) spaces for indentation.
        'RIGHT'
        ^^^^^
save-princess-2.rb:73:11: C: [Corrected] Style/Not: Use ! instead of not.
    elsif not col_diff == 0
          ^^^
save-princess-2.rb:74:7: C: [Corrected] Style/ConditionalAssignment: Use the return of the conditional for variable assignment and comparison.
      if col_diff > 0 ...
      ^^^^^^^^^^^^^^^
save-princess-2.rb:96:29: C: [Corrected] Layout/TrailingEmptyLines: Final newline missing.
puts nextMove(n, x, y, grid)
                            

1 file inspected, 48 offenses detected, 31 offenses corrected, 6 more offenses can be corrected with `rubocop -A`
```