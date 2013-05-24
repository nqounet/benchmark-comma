use v5.12;
use App::Benchmark qw(benchmark_diag);

benchmark_diag(1000000,{
  legacy => sub {
    my $num = 1234567890;
    if ($num =~ /^[-+]?\d\d\d\d+/g) {
      for (my $i = pos($num) - 3, my $j = $num =~ /^[-+]/; $i > $j; $i -= 3)
      {
        substr($num, $i, 0) = ',';
      }
    }
    return $num;
  },
  regexp1 => sub {
    my $num = 1234567890;
    while($num =~ s/(.*\d)(\d\d\d)/$1,$2/){};
    return $num;
  },
  regexp2 => sub {
    my $num = 1234567890;
    $num =~ s/(\d{1,3})(?=(?:\d{3})+(?!\d))/$1,/g;
  },
});
