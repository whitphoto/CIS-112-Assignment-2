       Identification Division.
       program-id. uniondues.
      ******************************************************
      * This program will read employee information such   *
      * as Name, Employee Number, Salary, Union Dues and   *
      * Insurance. It will then calculate a new values for *
      * Salary, Union Dues and Insurance                   *
      ******************************************************
       Environment Division.
       Input-output Section.
       file-control.
           Select Employee-Data assign to "input.txt"
                  organization is line sequential
           select output-file assign to "outfile.txt"
                  organization is line sequential.
    
       Data Division.
       File Section.
       FD  Employee-Data.
       01  Employee Record.
           05 Employee-Number-in   pic x(5).
           05 Employee-Name-in     pic x(20).
           05 FILLER               pic x(4).
           05 Annual-Salary        pic 9(6).
           05 FILLER               pic x(4).
           05 Union-Dues           pic 999v99.
           05 insurance            pic 999v99.
       FD output-file.
       01 report-rec x(80).
       working-storage section.
       01 eof pic x value "n".
       01 header-line-1.
           05 Filler               pic x(31) value spaces.
           05 Payroll-Peport       pic x(15) value 'PAYROLL REPORT'.
           05 Filler               pic x(34) value spaces.
       01 header-line-2.
           05 Filler               pic x(1) value spaces.
           05 Emp                  pic x(8) value 'EMPLOYEE'.
           05 Filler               pic x(8) value spaces.
           05 Name                 pic x(4) value 'NAME'.
           05 Filler               pic x(11) value spaces.
           05 Old-1                pic x(3) value 'OLD'.
           05 Filler               pic x(5) value spaces.
           05 Filler               pic x(3) value 'NEW'
           05 Filler               pic x(5) value spaces.
           05 Filler               pic x(3) value 'OLD'.
           05 Filler               pic x(5) value spaces
           05 Filler               pic x(3) value 'NEW'
           05 Filler               pic x(4) value spaces.
       01 header-line-3.
           05 Filler               pic x(4) value spaces.
           05 Num                  pic x(3) value 'NO.'
           05 Filler               pic x(25) value spaces.
           05 Sal-1                pic x(6) value 'SALARY'.
           05 Filler               pic x(2) value spaces.
           05 Sal-2                pic x(6) value 'SALARY'.
           05 Filler               pic x(3) value spaces.
           05 Dues-1               pic x(4) value 'DUES'.
           05 Filler               pic x(4) value spaces.
           05 Dues-2               pic x(4) value 'DUES'.
           05 Filler               pic x(19) value spaces.
       01 detail-line.
           05 filler               pic x(3) value spaces.
           05 Number-Out           pic 9(5).
           05 filler               pic x(2) value spaces. 
           05 Name-Out             pic x(20).
           05 filler               pic x(2) value spaces.
           05 Old-Salary           pic 9(6).
           05 Filler               pic x(1) value spaces.
           05 New-Salary           pic 9(6).
           05 Filler               pic x(2) value spaces.
           05 Old-Dues             pic 999v99.
           05 Filler               pic x(1) value spaces.
           05 New-Dues             pic 9999v99.
           05 Filler               pic x(1) value spaces.
           05 Old-Insur            pic 9999v99.
           05 Filler               pic x(1) value spaces.
           05 New-Insur            pic 9999v99.
           05 Filler               pic x(2) value spaces.
       
           
           
           
       
       
       
       working-storage section.

       procedure division.

           goback.
           
       end program Program1.
