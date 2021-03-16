(: Exercici 1 :)
xquery version "3.1";
<table border="1">
    <tr>
        <th>Name</th>
    </tr>
    {
        for $x in doc("/db/activitat/mondial_geo_accidents.xml")/mondial/sea
        where starts-with($x/located/@country, 'F')
        return 
            <tr>
                <td>{data($x/name)}</td>
            </tr>
    }
</table>

(: Exercici 2 :)
xquery version "3.1";
<table border="1">
    <tr>
        <th>Name</th>
    </tr>
    {
        for $x in doc("/db/activitat/mondial_geo_accidents.xml")/mondial/sea
        where starts-with($x/located/@country, 'F')
        return 
            if(starts-with($x/name, 'M'))
            then
                <tr bgcolor="green">
                    <td>{data($x/name)}</td>
                </tr>
            else
                <tr>
                    <td>{data($x/name)}</td>
                </tr>
    }
</table>

(: Exercici 3 :)
xquery version "3.1";
<table border="1">
    <tr>
        <th>Name</th>
    </tr>
    {
        for $x at $i in doc("/db/activitat/mondial_geo_accidents.xml")/mondial/sea
        where $i <= 5
        return 
            if(count($x/located) > 7)
            then
                <tr bgcolor="green">
                    <td>{data($x/name)}</td>
                </tr>
            else if($x/depth < 200)
            then
                <tr bgcolor="yellow">
                    <td>{data($x/name)}</td>
                </tr>
            else
                <tr>
                    <td>{data($x/name)}</td>
                </tr>
    }
</table>

(: Exercici 4 :)
xquery version "3.1";
<table border="1">
    <tr>
        <th>Name</th>
    </tr>
    {
        for $x in doc("/db/activitat/mondial_geo_accidents.xml")/mondial/sea
        order by $x/name
        return 
            <tbody>
                <tr bgcolor="yellow">
                    <td>{data($x/name)}</td>
                </tr> 
                {
                    for $y in $x/located
                    order by $y/@country
                    return
                        <tr bgcolor="green">
                            <td>{data($y/@country)}</td>
                        </tr> 
                }
            </tbody>
    }
</table>