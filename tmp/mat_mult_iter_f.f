      subroutine mat_mult_iter_f(A,B,AB,od1,od2,id)
	 integer od1,od2,id
         real*8 A(od1,id),B(id,od2)
	 real*8 AB(od1,od2)

	 integer i,j,k
		
         do 30 i=1,od1
	   do 20 j=1,od2
             AB(i,j) = 0.0
	     do 10 k=1,id
	       AB(i,j)=AB(i,j)+A(i,k)*B(k,j)
10	     continue
20	   continue
30	 continue
		
         return
       end

