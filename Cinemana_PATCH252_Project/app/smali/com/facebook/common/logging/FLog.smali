.class public Lcom/facebook/common/logging/FLog;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field public static a:Lcom/facebook/common/logging/LoggingDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c:Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 2
    sput-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs c(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 3
    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 2
    iget v0, v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->b:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 4
    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    .line 4
    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    aput-object p4, v1, v0

    .line 2
    invoke-static {p1, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/facebook/common/logging/FLog;->g(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    aput-object p4, v2, v1

    const/4 p2, 0x3

    aput-object p5, v2, p2

    .line 4
    invoke-static {p1, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs m(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 5
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs n(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lcom/facebook/common/logging/FLog;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {p2, p3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    sget-object p3, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast p3, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    invoke-virtual {p3, v0}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    sget-object p3, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    .line 6
    check-cast p3, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 7
    invoke-virtual {p3, v0, p0, p2, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->d(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static varargs o(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 3
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/facebook/common/logging/FLog;->a:Lcom/facebook/common/logging/LoggingDelegate;

    invoke-static {p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast v0, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;

    .line 3
    invoke-virtual {v0, v1, p0, p1}, Lcom/facebook/common/logging/FLogDefaultLoggingDelegate;->c(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
