.class public abstract Lcom/shabakaty/downloader/b37;
.super Lcom/shabakaty/downloader/yy6;
.source "com.google.android.gms:play-services-cast@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b37$a;,
        Lcom/shabakaty/downloader/b37$c;,
        Lcom/shabakaty/downloader/b37$d;,
        Lcom/shabakaty/downloader/b37$b;,
        Lcom/shabakaty/downloader/b37$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/b37<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/b37$b<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/yy6<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzbqz:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/b37<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzbqx:Lcom/shabakaty/downloader/y97;

.field private zzbqy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/b37;->zzbqz:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/yy6;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/y97;->e:Lcom/shabakaty/downloader/y97;

    iput-object v0, p0, Lcom/shabakaty/downloader/b37;->zzbqx:Lcom/shabakaty/downloader/y97;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    return-void
.end method

.method public static i(Ljava/lang/Class;)Lcom/shabakaty/downloader/b37;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/b37<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b37;->zzbqz:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b37;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/b37;->zzbqz:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b37;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/shabakaty/downloader/da7;->g(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/b37;

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v2}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Lcom/shabakaty/downloader/b37;

    if-eqz v0, :cond_1

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/b37;->zzbqz:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs k(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static l(Ljava/lang/Class;Lcom/shabakaty/downloader/b37;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/b37<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b37;->zzbqz:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2
    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 4
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/n87;->c(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 5
    :goto_0
    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v0
.end method

.method public final b(Lcom/shabakaty/downloader/e17;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/e17;->a:Lcom/shabakaty/downloader/l17;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/l17;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/l17;-><init>(Lcom/shabakaty/downloader/e17;)V

    .line 5
    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/n87;->e(Ljava/lang/Object;Lcom/shabakaty/downloader/ob7;)V

    return-void
.end method

.method public final synthetic c()Lcom/shabakaty/downloader/b77;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/b37$b;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/b37$b;->i(Lcom/shabakaty/downloader/b37;)Lcom/shabakaty/downloader/b37$b;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    return-void
.end method

.method public final e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/n87;->d(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/b37;

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/n87;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic f()Lcom/shabakaty/downloader/d77;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/b37;

    return-object v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/b37;->zzbqy:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/yy6;->zzbmy:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/l87;->c:Lcom/shabakaty/downloader/l87;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/l87;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/n87;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/n87;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/yy6;->zzbmy:I

    return v0
.end method

.method public abstract j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final m()Lcom/shabakaty/downloader/b37$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/shabakaty/downloader/b37<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/shabakaty/downloader/b37$b<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/b37;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/b37$b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v1, v0}, Lcom/shabakaty/downloader/f77;->a(Lcom/shabakaty/downloader/d77;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
