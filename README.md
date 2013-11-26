# query-filter [![Dependency status](https://david-dm.org/alexgorbatchev/query-filter.png)](https://david-dm.org/alexgorbatchev/query-filter) [![Build Status](https://travis-ci.org/alexgorbatchev/query-filter.png)](https://travis-ci.org/alexgorbatchev/query-filter)

query-filter is a utility module which removes all matching query/get parameters from URL using regular expressions.

## Example

    > queryFilter = require('query-filter');
    > url = 'http://localhost?param1=1&param2=1&param3&param4';
    > filters = ['param[23]', /param1/];
    > queryFilter(url, filters);
    http://localhost/?param4=

## License

The MIT License (MIT)

Copyright (c) 2013 Alex Gorbatchev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
