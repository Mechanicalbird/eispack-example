	program main


     implicit none
      

      
      INTEGER          n
      PARAMETER        ( n = 3 )
      INTEGER          nm
      PARAMETER        ( nm = 3 )

      Integer ierr,matz,i,j
      
      integer iv1(3)

      DOUBLE PRECISION a(3,3), wr( 3 ), wi(3), z(3,3),fv1(3)

      matz=1
      
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
 
c      WRITE(*,*)  "****Z*****"
c
c      DO i = 1, n
c       DO j = 1, n
c          WRITE(*,*)  u( i, j ) 
c       END DO
c      END Do
c
c      WRITE(*,*)  "****V*****"
c      DO i = 1, n
c       DO j = 1, n
c          WRITE(*,*)  v( i, j ) 
c       END DO
c      END DO
c
c      WRITE(*,*)  "*****W****"
c
c       DO i = 1, n
c          WRITE(*,*)  w( i ) 
c       END DO
c
c      WRITE(*,*)  "*********"
c
c      WRITE(*,*) ierr
c
c      WRITE(*,*)  "*********"
	  stop
	end

