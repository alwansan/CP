.class public Lcom/shabakaty/downloader/tk2;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/tk2$a;,
        Lcom/shabakaty/downloader/tk2$b;,
        Lcom/shabakaty/downloader/tk2$c;,
        Lcom/shabakaty/downloader/tk2$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/TimeZone;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/tk2$c;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lcom/shabakaty/downloader/tk2$c;

.field public static d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "UTC"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/tk2;->a:Ljava/util/TimeZone;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tk2;->b:Ljava/util/List;

    :try_start_0
    const-string v0, "android.os.Build"

    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/tk2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tk2$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/tk2$b;

    invoke-direct {v1}, Lcom/shabakaty/downloader/tk2$b;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;

    :cond_0
    throw v0

    :catch_0
    nop

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/shabakaty/downloader/tk2$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/tk2$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/shabakaty/downloader/tk2;->d:Z

    return-void
.end method

.method public static varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->s:Lcom/shabakaty/downloader/tk2$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Lcom/shabakaty/downloader/z41;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Network Error: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Status Code: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", Reason: "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/shabakaty/downloader/z41;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->v:Lcom/shabakaty/downloader/tk2$d;

    invoke-static {p1}, Lcom/shabakaty/downloader/fe4;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown error"

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->v:Lcom/shabakaty/downloader/tk2$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->t:Lcom/shabakaty/downloader/tk2$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    array-length v0, p4

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p2, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    sget-boolean p4, Lcom/shabakaty/downloader/tk2;->d:Z

    if-eqz p4, :cond_1

    .line 4
    sget-object p4, Lcom/shabakaty/downloader/tk2;->c:Lcom/shabakaty/downloader/tk2$c;

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/shabakaty/downloader/tk2$c;->a(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    sget-object p4, Lcom/shabakaty/downloader/tk2;->b:Ljava/util/List;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/tk2$c;

    .line 6
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/tk2$c;->a(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/tk2$d;->u:Lcom/shabakaty/downloader/tk2$d;

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1, p2}, Lcom/shabakaty/downloader/tk2;->e(Lcom/shabakaty/downloader/tk2$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
