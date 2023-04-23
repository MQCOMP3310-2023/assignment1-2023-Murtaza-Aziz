import java

from MethodAccess ma, MethodAccess getMessage
where
  ma.getMethod().hasName("printStackTrace") and
  ma.getMethod().getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
  ma.getNumArgument() = 0 
  or
  ma.getMethod().hasName("println") and
  ma.getMethod().getDeclaringType().hasQualifiedName("java.io", "PrintStream") and
  ma.getNumArgument() > 0 and
  getMessage.getMethod().hasName("getMessage") and
  getMessage.getMethod().getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
    getMessage.getNumArgument() = 0 and
    ma.getArgument(0) = getMessage

select ma, "printStackTrace() called on Throwable with no arguments"


