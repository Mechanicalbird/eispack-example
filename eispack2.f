	program main


     implicit none

      INTEGER          n
      PARAMETER        ( n = 3 )
      INTEGER          nm
      PARAMETER        ( nm = 3 )
      INTEGER          matz
      PARAMETER        ( matz = 1 )
      
      INTEGER          ierr,i,j
      

      DOUBLE PRECISION a( n, n ), w( n ), z( n, n ),fv1(n),fv2(n)
      
      a(1,1) = 0.0
      a(1,2) = 1.0
      a(1,3) = 0.0
      a(2,1) = -0.0
      a(2,2) = 0.0
      a(2,3) = 0.3999999
      a(3,1) = -0.0
      a(3,2) = 283640.00
      a(3,3) = 0.0



      call rs(nm,n,a,w,matz,z,fv1,fv2,ierr)

      WRITE(*,*)  "*********"

      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  a( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "*********"

      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  z( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "*********"

       DO i = 1, n
          WRITE(*,*)  w( i ) 
       END DO

      WRITE(*,*)  "*********"

      WRITE(*,*) ierr

      WRITE(*,*)  "*********"
	  stop
	end
