import java

from MethodAccess ma
where
  ma.getMethod().hasName("printStackTrace") and
  ma.getMethod().getDeclaringType().hasQualifiedName("java.lang", "Throwable") and
  ma.getNumArgument() = 0

select ma, "printStackTrace() called on Throwable with no arguments"


