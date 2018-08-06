RDL.nowrap :String
RDL.type :String, :initialize, '(?String str) -> self new_str'
RDL.type :String, :try_convert, '(Object obj) -> String or nil new_string'
RDL.type :String, :%, '(Object) -> String'
RDL.type :String, :*, '(Integer) -> String'
RDL.type :String, :+, '(String) -> String'
RDL.type :String, :<<, '(Object) -> String'
RDL.type :String, :<=>, '(String other) -> Integer or nil ret'
RDL.type :String, :==, '(%any) -> %bool', effect: [:+, :+]
RDL.type :String, :===, '(%any) -> %bool'
RDL.type :String, :=~, '(Object) -> Integer or nil', wrap: false # Wrapping this messes up $1 etc
RDL.type :String, :[], '(Integer, ?Integer) -> String or nil', effect: [:+, :+]
RDL.type :String, :[], '(Range<Integer> or Regexp) -> String or nil', effect: [:+, :+]
RDL.type :String, :[], '(Regexp, Integer) -> String or nil', effect: [:+, :+]
RDL.type :String, :[], '(Regexp, String) -> String or nil', effect: [:+, :+]
RDL.type :String, :[], '(String) -> String or nil', effect: [:+, :+]
RDL.type :String, :ascii_only?, '() -> %bool'
RDL.type :String, :b, '() -> String'
RDL.type :String, :bytes, '() -> Array' # TODO: bindings to parameterized (vars)
RDL.type :String, :bytesize, '() -> Integer'
RDL.type :String, :byteslice, '(Integer, ?Integer) -> String or nil'
RDL.type :String, :byteslice, '(Range<Integer>) -> String or nil'
RDL.type :String, :capitalize, '() -> String'
RDL.type :String, :capitalize!, '() -> String or nil'
RDL.type :String, :casecmp, '(String) -> nil or Integer'
RDL.type :String, :center, '(Integer, ?String) -> String'
RDL.type :String, :chars, '() -> Array'  #deprecated
RDL.type :String, :chomp, '(?String) -> String'
RDL.type :String, :chomp!, '(?String) -> String or nil'
RDL.type :String, :chop, '() -> String'
RDL.type :String, :chop!, '() -> String or nil'
RDL.type :String, :chr, '() -> String'
RDL.type :String, :clear, '() -> String'
RDL.type :String, :codepoints, '() -> Array<Integer>' # TODO
RDL.type :String, :codepoints, '() {(?%any) -> %any} -> Array<Integer>' # TODO
RDL.type :String, :concat, '(Integer or Object) -> String'
RDL.type :String, :count, '(String, *String) -> Integer'
RDL.type :String, :crypt, '(String) -> String'
RDL.type :String, :delete, '(String, *String) -> String'
RDL.type :String, :delete!, '(String, *String) -> String or nil'
RDL.type :String, :downcase, '() -> String'
RDL.type :String, :downcase!, '() -> String or nil'
RDL.type :String, :dump, '() -> String'
RDL.type :String, :each_byte, '() {(Integer) -> %any} -> String'
RDL.type :String, :each_byte, '() -> Enumerator'
RDL.type :String, :each_char, '() {(String) -> %any} -> String'
RDL.type :String, :each_char, '() -> Enumerator'
RDL.type :String, :each_codepoint, '() {(Integer) -> %any} -> String'
RDL.type :String, :each_codepoint, '() -> Enumerator'
RDL.type :String, :each_line, '(?String) {(Integer) -> %any} -> String'
RDL.type :String, :each_line, '(?String) -> Enumerator'
RDL.type :String,  :empty?, '() -> %bool'
# RDL.type :String, :encode, '(?Encoding, ?Encoding, *Symbol) -> String' # TODO: fix Hash arg:String,
# RDL.type :String, :encode!, '(Encoding, ?Encoding, *Symbol) -> String'
RDL.type :String, :encoding, '() -> Encoding'
RDL.type :String, :end_with?, '(*String) -> %bool'
RDL.type :String, :eql?, '(String) -> %bool'
RDL.type :String, :force_encoding, '(String or Encoding) -> String'
RDL.type :String, :getbyte, '(Integer) -> Integer or nil'
RDL.type :String, :gsub, '(Regexp or String, String) -> String', wrap: false # Can't wrap these:String, , since they mess with $1 etc
RDL.type :String, :gsub, '(Regexp or String, Hash) -> String', wrap: false
RDL.type :String, :gsub, '(Regexp or String) {(String) -> %any } -> String', wrap: false
RDL.type :String, :gsub, '(Regexp or String) ->  Enumerator', wrap: false
RDL.type :String, :gsub, '(Regexp or String) -> String', wrap: false
RDL.type :String, :gsub!, '(Regexp or String, String) -> String or nil', wrap: false
RDL.type :String, :gsub!, '(Regexp or String) {(String) -> %any } -> String or nil', wrap: false
RDL.type :String, :gsub!, '(Regexp or String) -> Enumerator', wrap: false
RDL.type :String, :hash, '() -> Integer'
RDL.type :String, :hex, '() -> Integer'
RDL.type :String, :include?, '(String) -> %bool', effect: [:+, :+]
RDL.type :String, :index, '(Regexp or String, ?Integer) -> Integer or nil'
RDL.type :String, :replace, '(String) -> String'
RDL.type :String, :insert, '(Integer, String) -> String'
RDL.type :String, :inspect, '() -> String'
RDL.type :String, :intern, '() -> Symbol'
RDL.type :String, :length, '() -> Integer'
RDL.type :String, :lines, '(?String) -> Array<String>'
RDL.type :String, :ljust, '(Integer, ?String) -> String' # TODO
RDL.type :String, :lstrip, '() -> String'
RDL.type :String, :lstrip!, '() -> String or nil'
RDL.type :String, :match, '(Regexp or String) -> MatchData'
RDL.type :String, :match, '(Regexp or String, Integer) -> MatchData'
RDL.type :String, :next, '() -> String'
RDL.type :String, :next!, '() -> String'
RDL.type :String, :oct, '() -> Integer'
RDL.type :String, :ord, '() -> Integer'
RDL.type :String, :partition, '(Regexp or String) -> Array<String>'
RDL.type :String, :prepend, '(String) -> String'
RDL.type :String, :reverse, '() -> String'
RDL.type :String, :rindex, '(String or Regexp, ?Integer) -> Integer or nil' # TODO
RDL.type :String, :rjust, '(Integer, ?String) -> String' # TODO
RDL.type :String, :rpartition, '(String or Regexp) -> Array<String>'
RDL.type :String, :rstrip, '() -> String'
RDL.type :String, :rstrip!, '() -> String'
RDL.type :String, :scan, '(Regexp or String) -> Array<String or Array<String>>', wrap: false # :String, Can't wrap or screws up last_match
RDL.type :String, :scan, '(Regexp or String) {(*%any) -> %any} -> Array<String or Array<String>>', wrap: false
RDL.type :String, :scrub, '(?String) -> String'
RDL.type :String, :scrub, '(?String) {(%any) -> %any} -> String'
RDL.type :String, :scrub!, '(?String) -> String'
RDL.type :String, :scrub!, '(?String) {(%any) -> %any} -> String'
RDL.type :String, :set_byte, '(Integer, Integer) -> Integer'
RDL.type :String, :size, '() -> Integer'
RDL.rdl_alias :String, :slice, :[]
RDL.type :String, :slice!, '(Integer, ?Integer) -> String or nil'
RDL.type :String, :slice!, '(Range<Integer> or Regexp) -> String or nil'
RDL.type :String, :slice!, '(Regexp, Integer) -> String or nil'
RDL.type :String, :slice!, '(Regexp, String) -> String or nil'
RDL.type :String, :slice!, '(String) -> String or nil'
RDL.type :String, :split, '(?(Regexp or String), ?Integer) -> Array<String>', effect: [:+, :+]
RDL.type :String, :split, '(?Integer) -> Array<String>', effect: [:+, :+]
RDL.type :String, :squeeze, '(?String) -> String'
RDL.type :String, :squeeze!, '(?String) -> String'
RDL.type :String, :start_with?, '(* String) -> %bool', effect: [:+, :+]
RDL.type :String, :strip, '() -> String'
RDL.type :String, :strip!, '() -> String'
RDL.type :String, :sub, '(Regexp or String, String or Hash) -> String', wrap: false # Can't wrap these, since they mess with $1 etc
RDL.type :String, :sub, '(Regexp or String) {(String) -> %any} -> String', wrap: false
RDL.type :String, :sub!, '(Regexp or String, String) -> String', wrap: false # TODO: Does this really not allow Hash?
RDL.type :String, :sub!, '(Regexp or String) {(String) -> %any} -> String', wrap: false
RDL.type :String, :succ, '() -> String'
RDL.type :String, :sum, '(?Integer) -> Integer'
RDL.type :String, :swapcase, '() -> String'
RDL.type :String, :swapcase!, '() -> String or nil'
RDL.type :String, :to_c, '() -> Complex'
RDL.type :String, :to_f, '() -> Float'
RDL.type :String, :to_i, '(?Integer) -> Integer'
RDL.type :String, :to_r, '() -> Rational'
RDL.type :String, :to_s, '() -> String', effect: [:+, :+]
RDL.type :String, :to_str, '() -> String'
RDL.type :String, :to_sym, '() -> Symbol', effect: [:+, :+]
RDL.type :String, :tr, '(String, String) -> String'
RDL.type :String, :tr!, '(String, String) -> String or nil'
RDL.type :String, :tr_s, '(String, String) -> String'
RDL.type :String, :tr_s!, '(String, String) -> String or nil'
RDL.type :String, :unpack, '(String) -> Array<String>'
RDL.type :String, :upcase, '() -> String'
RDL.type :String, :upcase!, '() -> String or nil'
RDL.type :String, :upto, '(String, ?bool) -> Enumerator'
RDL.type :String, :upto, '(String, ?bool) {(String) -> %any } -> String'
RDL.type :String, :valid_encoding?, '() -> %bool'
