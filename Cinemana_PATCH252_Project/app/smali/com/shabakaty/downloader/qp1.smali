.class public abstract Lcom/shabakaty/downloader/qp1;
.super Lcom/shabakaty/downloader/i0;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qp1$b;,
        Lcom/shabakaty/downloader/qp1$d;,
        Lcom/shabakaty/downloader/qp1$c;,
        Lcom/shabakaty/downloader/qp1$a;,
        Lcom/shabakaty/downloader/qp1$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/qp1<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/qp1$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/i0<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/qp1<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Lcom/shabakaty/downloader/sv4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/qp1;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/i0;-><init>()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/sv4;->f:Lcom/shabakaty/downloader/sv4;

    iput-object v0, p0, Lcom/shabakaty/downloader/qp1;->unknownFields:Lcom/shabakaty/downloader/sv4;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

    return-void
.end method

.method public static u(Ljava/lang/Class;)Lcom/shabakaty/downloader/qp1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/qp1<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qp1;

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
    sget-object v0, Lcom/shabakaty/downloader/qp1;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qp1;

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
    invoke-static {p0}, Lcom/shabakaty/downloader/hw4;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/qp1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1;->v()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lcom/shabakaty/downloader/qp1;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs w(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static x(Lcom/shabakaty/downloader/x22$d;)Lcom/shabakaty/downloader/x22$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/x22$d<",
            "TE;>;)",
            "Lcom/shabakaty/downloader/x22$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/x22$d;->S(I)Lcom/shabakaty/downloader/x22$d;

    move-result-object p0

    return-object p0
.end method

.method public static z(Ljava/lang/Class;Lcom/shabakaty/downloader/qp1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/qp1<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->r:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 5
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/ey3;->e(Ljava/lang/Object;)Z

    move-result v2

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->s:Lcom/shabakaty/downloader/qp1$e;

    if-eqz v2, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 7
    :goto_0
    invoke-virtual {p0, v0, v3, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return v2
.end method

.method public bridge synthetic b()Lcom/shabakaty/downloader/ds2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qp1;->v()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/ds2$a;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->v:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/qp1$a;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/qp1$a;->s(Lcom/shabakaty/downloader/qp1;Lcom/shabakaty/downloader/qp1;)V

    return-object v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/ey3;->f(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

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
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/qp1;

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/ey3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(Lcom/shabakaty/downloader/v40;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/v40;->a:Lcom/shabakaty/downloader/x40;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/x40;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/x40;-><init>(Lcom/shabakaty/downloader/v40;)V

    .line 5
    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/ey3;->g(Ljava/lang/Object;Lcom/shabakaty/downloader/b95;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/i0;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/jj3;->c:Lcom/shabakaty/downloader/jj3;

    .line 3
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/jj3;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/ey3;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/ey3;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/i0;->memoizedHashCode:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

    return v0
.end method

.method public q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/qp1;->memoizedSerializedSize:I

    return-void
.end method

.method public final r()Lcom/shabakaty/downloader/qp1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/shabakaty/downloader/qp1<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/shabakaty/downloader/qp1$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->v:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/qp1$a;

    return-object v0
.end method

.method public s(Lcom/shabakaty/downloader/qp1$e;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v0}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    invoke-static {p0, v1, v0}, Lcom/shabakaty/downloader/hs2;->c(Lcom/shabakaty/downloader/ds2;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/shabakaty/downloader/qp1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->w:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/qp1;

    return-object v0
.end method

.method public final y()Lcom/shabakaty/downloader/qp1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qp1$e;->v:Lcom/shabakaty/downloader/qp1$e;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/qp1;->t(Lcom/shabakaty/downloader/qp1$e;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/qp1$a;

    return-object v0
.end method
