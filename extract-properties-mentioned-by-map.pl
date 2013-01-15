# Usage: perl extract-properties-mentioned-by-map.pl transformed-mapping.n3 > properties-from-map.lisp

open(my $transformed,"<",$ARGV[0]) or die("expected first argument to be path to transformed d2rq map");

my @props = map {s/d2rq:property vocab:/|/; s/;/|/; $_} (grep /d2rq:property vocab:/, <$transformed>);

print "(setq *properties-from-map* (remove-duplicates '(@props)))\n";




