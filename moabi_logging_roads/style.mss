// color scheme for years
@before_2000: #fbffdd;
@2000: #f8ffcc;
@2001: #f9f3be;
@2002: #fae8b0;
@2003: #fadea3;
@2004: #fad396;
@2005: #f9c788;
@2006: #f8bc7b;
@2007: #f6b06e;
@2008: #f4a661;
@2009: #f19a54;
@2010: #ef8f47;
@2011: #eb8439;
@2012: #e8782b;
@2013: #e46c1c;
@after_2013: #cc5506;

#moabi_logging_roads {
// style for line casing
  ::case{
    line-join: round;
    line-cap: round;
    line-color: #444;
    line-width: 0.6 + 0.6;
    [zoom >= 8]{ line-width: 1 + 0.7; }
    [zoom >= 10]{ line-width: 1.6 + 0.8; }
    [zoom >= 12]{ line-width: 2.0 + 1.0; }
  }
// style for lines
  line-join: round;
  line-cap: round;
  line-color: #aaa;
  line-width: 0.6;
  [zoom >= 8]{ line-width: 1; }
  [zoom >= 10]{ line-width: 1.6; }
  [zoom >= 12]{ line-width: 2.0; }
 
// colors by year
[start_date ='before 2000'] {
    ::fill {line-color:@before_2000;}
  }
[start_date ='2000'] {
    ::fill {line-color:@2000;}
  }
[start_date ='2001'] {
    ::fill {line-color:@2001;}
  }
[start_date ='2002'] {
    ::fill {line-color:@2002;}
  }
[start_date ='2003'] {
    ::fill {line-color:@2003;}
  }
[start_date ='2004'] {
    ::fill {line-color:@2004;}
  }
[start_date ='2005'] {
    ::fill {line-color:@2005;}
  }
[start_date ='2006'] {
    ::fill {line-color:@2006;}
  }
[start_date ='2007'] {
    ::fill {line-color:@2007;}
  }
[start_date ='2008'] {
    ::fill {line-color:@2008;}
  }
[start_date ='2009'] {
    ::fill {line-color:@2009;}
  }
[start_date ='2010'] {
    ::fill {line-color:@2010;}
  }
[start_date ='2011'] {
    ::fill {line-color:@2011;}
  }
[start_date ='2012'] {
    ::fill {line-color:@2012;}
  }
[start_date ='2013'] {
    ::fill {line-color:@2013;}
  }
[start_date ='after 2013'] {
    ::fill {line-color:@after_2013;}
  }
  
}