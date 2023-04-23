import java

from MethodAccess println, MethodAccess getMessage
where
  println.getMethod().hasName("println") and
  println.getMethod().getDeclaringType().hasQualifiedName("java.io", "PrintStream") and
  println.getNumArgument() > 0 and
  getMessage.getMethod().hasName("getMessage") and
  getMessage.getMethod().getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
    getMessage.getNumArgument() = 0 and
    println.getArgument(0) = getMessage
select println, "printStackTrace() called on Throwable with no arguments"
