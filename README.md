# shi-mo/yukicoder
My answers &amp; test cases for http://yukicoder.me/ .

( My user profile: http://yukicoder.me/users/1721 )

## Make commands
### $ make
Build all binaries (from *.c &amp; *.d files).

### $ make test
Run test for all problems.

### $ make clean / $ make clobber
(clean / clobber as usual)


## Script commands
### $ ./test TEST_TARGET1 [TEST_TARGET2 ...]
Run test for a specific file.

Test target file can be binary / Ruby program (*.rb)

### $ ./cp4submit FILE
Copy a source file into the clipboard.

### $ ./dlsample PROBLEM_ID
Automatically download the sample input/output data &amp; create files for ./test script.

#### (internal behavior)

1. Create a test data directory: ./${PROBLEM_ID}
2. Download HTML from http://yukicoder.me/problems/${PAGE_ID} .
3. Parse HTML and extract sample input/output data.
4. Write each data into files respectively (under the directory created at 1.).
