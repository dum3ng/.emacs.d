## hiearachy

homepage/
	/category
		/sub-category
			/post

+-----------------+-------------------------------------+
|                 |                                     |
|                  XXXXXXX+-------+---------------------+
|                 |  sub0 |  sub1 |  sub2|              |
|                 |XXXXXXX|       |      |              |
|                 |XXXXXXX+-------+------+--------------+
|                 |                                     |
|      XXXXXXXXXXX|                                     |
|      XX cat0 XXX|                                     |
|      XXXXXXXXXXX|                                     |
|                 |          post00                     |
|      +----------+                                     |
|      |  cat1    |                                     |
|      +----------+                                     |
|                 |                                     |
|      +----------+                                     |
|      |  cat2    |                                     |
|      +----------+                                     |
+-------------------------------------------------------+

### category
*level-0* = *level-1*.
Show all the categories, and the default sub-category.

### sub-category
*level-1*
Show all the posts under that.

### post
*level-2*
The last level.

### homepage
The *homepage* is *level-0*.
Is a special *category* page.
Show the default category content.


## CONCLUSION
So in fact there is only *level-1* and *level-2* page.
All page has the same look feeling, and same *css* and *js* files.
