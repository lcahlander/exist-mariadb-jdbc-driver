xquery version "3.1";

(:~
 : A very simple example XQuery Library Module implemented
 : in XQuery.
 :)
module namespace mariadb = "https://exist-db.org/exist-db/ns/app/mariadb";

declare function mariadb:say-hello($name as xs:string?) as document-node(element(hello)) {
    document {
        element hello {
            if($name) then
                $name
            else
                "stranger"
        }
    }
};

declare function mariadb:hello-world() as document-node(element(hello)) {
    mariadb:say-hello("world")
};

declare function mariadb:add($a as xs:int, $b as xs:int) as xs:int {
    $a + $b
};
