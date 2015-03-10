use JSON;
use Plack::Request;
my $app = sub {
    my $env = shift;
    my $req = Plack::Request->new($env);
    return [
        200,
        [
            'Content-Type'      =>  'application/json',
        ],
        [
            JSON->new->pretty->encode(
                {
                    name => "nhayashi",
                    authorization_header => $req->header('Authorization') || "",
                    request_header => $req->headers->as_string,
                    request_body  => $req->content,
                }
            ),
        ]
   ];
};
