----Scroll cursor will fetch first record  from table if 
---we use 'fetch from first Cursor_name'

declare Scroll_CpuCursor cursor
Scroll for
select *from [dbo].[CpuLogData2019-11-17-new]

open Scroll_CpuCursor

---this will fetch first record from table
fetch first from Scroll_CpuCursor

---this will fetch last record from table
fetch last from Scroll_CpuCursor

---using this we will get previous data from last executed cursor.
----I used fetch last previously and i got last row and if i use fetch prior from Scroll_CpuCursor then i will get second last row from table.
fetch prior from Scroll_CpuCursor

---this will also give last data from dable but it is using scroll cursor.
fetch last from Scroll_CpuCursor

---This will go line by line and give absolute or exact 4th record/row from table
---Absolute cursor will start scanning from top(index 1) and goes to specified position then print the record.  
fetch absolute 4 from Scroll_CpuCursor

---this will print the 2nd record from last executed curor
---like i have executed abosolute 4 and it will print 4th record and after that 
---I am executing relative 2 query then it will print 6th record from table(It will jump by two and will print the data)
---Its a forward jump by position specified
fetch relative 2 from Scroll_CpuCursor

---will print exact 4th row
fetch absolute 4 from Scroll_CpuCursor

---It will show the 2nd row because last executed is absolute 4.
---It traverse back by position number.
fetch relative -2 from Scroll_CpuCursor


fetch absolute 800 from Scroll_CpuCursor
fetch absolute 1500 from Scroll_CpuCursor
fetch absolute 1200 from Scroll_CpuCursor
fetch absolute 1111 from Scroll_CpuCursor

