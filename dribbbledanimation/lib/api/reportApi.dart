import 'dart:convert';

import 'package:http/http.dart' as http;
class CallApi{
    // final String _url = 'https://my-json-server.typicode.com/Fatou99/report/';
    final String _url = 'http://10.0.2.2:8000/';

    postData(data, apiUrl) async {
        var fullUrl = _url + apiUrl; 
        return await http.post(
            fullUrl, 
            body: jsonEncode(data), 
            headers: _setHeaders()
        );
    }


    getData(apiUrl) async {
       var fullUrl = _url + apiUrl ; 
       return await http.get(
         fullUrl, 
         headers: _setHeaders()
       );
    }

      _setHeaders() => {
        'Content-type' : 'application/json',
        'Accept' : 'application/json',
    };
}