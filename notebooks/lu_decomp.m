n = 5;
A = magic(n);
A = [ 
    
    1 0 3
    0 0 2
    4 5 9
];
[n, ~] = size(A);

% initiailization
L = eye(n);
P = eye(n);
U = A;

for i = 1:n
    k = i;
    while U(i, i) == 0
        U([i, k+1], :) = U([k+1, i], :);
        P([i, k+1], :) = P([k+1, i], :);
        L([i, k+1], :) = L([k+1, i], :);
        k = k + 1;
    end
    for j = i+1:n
        L(j, i) = U(j, i) / U(i, i);
        U(j, :) = U(j, :) - L(j, i) * U(i, :);
    end
end



%%

mylu = @LU_pivot;

A = [ 
    
    1 0 3 5 3
    0 0 2 3 4
    4 5 9 2 5
    1 0 0 1 6
    2 0 0 0 7
];

[L, U, P] = mylu(A);

% LU Factorization MATLAB Program
% LU factorization with partial (row) pivoting
function [L,U,P]=LU_pivot(A) % declaration of function 
% L, U, and P are output of the program
% A is the input matrix or argument to the function 
% A = [4 3; 6 3] % Input matrix which is to be factored 
[n,n]=size(A); % checking the size of matrix
L=eye(n); P=L; U=A; % assigning process
for k=1:n %start of loop
    [pivot, m]=max(abs(U(k:n,k))); % pivoting process
    m=m+k-1;
    if m~=k % begining of scope of if statement 
        % interchange rows m and k in U
        %temp=U(k,:); % assigning to temporary variable
        %U(k,:)=U(m,:);
        %U(m,:)=temp; % returnig the value from temp
        U([k, m], :) = U([m, k], :);

        % interchange rows m and k in P
        %temp=P(k,:); % assigning to temp 
        %P(k,:)=P(m,:);
        %P(m,:)=temp; % returning the value from temp
        P([k, m], :) = P([m, k], :);

        if k >= 2 % checking the condition using if
            %temp=L(k,1:k-1);
            %L(k,1:k-1)=L(m,1:k-1);
            %L(m,1:k-1)=temp;

            % L([k, m], 1:k-1) = L([m, k], 1:k-1);

            L([k, m], :) = L([m, k], :);
            L(:, [k, m]) = L(:, [m, k]);

        end % end of if scope
    end
    for j=k+1:n  % loop to print output 
        L(j,k)=U(j,k)/U(k,k);
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end
    
    fprintf("iteration %d\n", k);
    fprintf("L(%d):\n", k);
    disp(L)
    %disp(P * A - L * U);
    disp(U);

end
end