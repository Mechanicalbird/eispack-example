	program main


     implicit none

      INTEGER          n
      PARAMETER        ( n = 3 )
      INTEGER          nm
      PARAMETER        ( nm = 3 )
      INTEGER          m
      PARAMETER        ( m = 3 )
      LOGICAL          matu
      PARAMETER        ( matu = .true. )
      LOGICAL          matv
      PARAMETER        ( matv = .true. )
      
      INTEGER          ierr,i,j
      

      DOUBLE PRECISION a( n, n ), w( n ), u( n, n ),v( n, n ),rv1(n)
      
      a(1,1) = 0.0
      a(1,2) = 1.0
      a(1,3) = 0.0
      a(2,1) = -0.0
      a(2,2) = 0.0
      a(2,3) = 0.3999999
      a(3,1) = -0.0
      a(3,2) = 283640.00
      a(3,3) = 0.0

      
      call svd(nm,m,n,a,w,matu,u,matv,v,ierr,rv1)


      WRITE(*,*)  "*********"

      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  a( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "****U*****"

      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  u( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "****V*****"
      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  v( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "*****W****"

       DO i = 1, n
          WRITE(*,*)  w( i ) 
       END DO
c
c      WRITE(*,*)  "*********"
c
c      WRITE(*,*) ierr
c
c      WRITE(*,*)  "*********"
	  stop
	end

