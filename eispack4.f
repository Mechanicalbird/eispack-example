	program main


     implicit none

      INTEGER          n
      PARAMETER        ( n = 3 )
      INTEGER          nm
      PARAMETER        ( nm = 3 )

      Integer          matz
      PARAMETER        ( matz = 1 )
      
      INTEGER          ierr,i,j
      
      Integer          iv1(n)

      DOUBLE PRECISION a( nm, n ), wr(n), wi(n),z( nm, n ),fv1(n)
      
      a(1,1) = 0.0
      a(1,2) = 1.0
      a(1,3) = 0.0
      a(2,1) = -0.0
      a(2,2) = 0.0
      a(2,3) = 0.3999999
      a(3,1) = -0.0
      a(3,2) = 283640.00
      a(3,3) = 0.0

      
      call rg(nm,n,a,wr,wi,matz,z,iv1,fv1,ierr)

      WRITE(*,*)  "*********"

      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  a( i, j ) 
       END DO
      END DO


      WRITE(*,*)  "****Z*****"
      DO i = 1, n
       DO j = 1, n
          WRITE(*,*)  z( i, j ) 
       END DO
      END DO

      WRITE(*,*)  "*****Wr****"

       DO i = 1, n
          WRITE(*,*)  wr( i ) 
       END DO

      WRITE(*,*)  "*****Wi****"

       DO i = 1, n
          WRITE(*,*)  wi( i ) 
       END DO

      WRITE(*,*)  "*********"

      WRITE(*,*) ierr

      WRITE(*,*)  "*********"
	  stop
	end

