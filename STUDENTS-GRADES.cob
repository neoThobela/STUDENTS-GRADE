      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SORT-PROGRAM.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INPUT-FILE ASSIGN TO 'input.txt'
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT OUTPUT-FILE ASSIGN TO 'output.txt'
           ORGANIZATION IS LINE SEQUENTIAL.
           SELECT SORT-WORK ASSIGN TO SORTWORK.

       DATA DIVISION.

       FILE SECTION.
       FD INPUT-FILE.
       01 INPUT-REC.
           05 STUDENT-NAME-INPUT PIC X(50).
           05 STUDENT-GRADE-INPUT PIC 9(2).

       FD OUTPUT-FILE.
       01 OUTPUT-REC.
           05 STUDENT-NAME-OUTPUT PIC X(50).
           05 STUDENT-GRADE-OUTPUT PIC 9(2).

       SD SORT-WORK.
       01 SORT-REC.
           05 SORT-NAME PIC X(50).
           05 SORT-GRADE PIC 9(2).


       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           SORT SORT-WORK
           ON ASCENDING KEY SORT-GRADE
           USING INPUT-FILE
           GIVING OUTPUT-FILE
           DISPLAY "PROGRAM EXUCTED SUCCESSFULY"
            STOP RUN.
       END PROGRAM SORT-PROGRAM.
