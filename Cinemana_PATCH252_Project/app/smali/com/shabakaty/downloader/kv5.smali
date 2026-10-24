.class public abstract Lcom/shabakaty/downloader/kv5;
.super Lcom/shabakaty/downloader/wj5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/kv5$b;,
        Lcom/shabakaty/downloader/kv5$d;,
        Lcom/shabakaty/downloader/kv5$c;,
        Lcom/shabakaty/downloader/kv5$a;,
        Lcom/shabakaty/downloader/kv5$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/shabakaty/downloader/kv5<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/shabakaty/downloader/kv5$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/shabakaty/downloader/wj5<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzjr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/downloader/kv5<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public zzjp:Lcom/shabakaty/downloader/y96;

.field private zzjq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kv5;->zzjr:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/shabakaty/downloader/wj5;-><init>()V

    sget-object v0, Lcom/shabakaty/downloader/y96;->f:Lcom/shabakaty/downloader/y96;

    iput-object v0, p0, Lcom/shabakaty/downloader/kv5;->zzjp:Lcom/shabakaty/downloader/y96;

    const/4 v0, -0x1

    iput v0, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    return-void
.end method

.method static varargs f(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static g(Ljava/lang/Class;Lcom/shabakaty/downloader/kv5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/kv5<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/kv5;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(Ljava/lang/Class;)Lcom/shabakaty/downloader/kv5;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shabakaty/downloader/kv5<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/downloader/kv5;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/shabakaty/downloader/kv5;->zzjr:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get default instance for: "

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_0

    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/o66;->d(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    move-object v3, p0

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final synthetic b()Lcom/shabakaty/downloader/y26;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    return-object v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    return v0
.end method

.method public abstract e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/kv5;

    invoke-interface {v0, p0, p1}, Lcom/shabakaty/downloader/o66;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/wj5;->zzex:I

    if-eqz v0, :cond_0

    return v0

    .line 1
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/o66;->b(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/wj5;->zzex:I

    return v0
.end method

.method public final synthetic o()Lcom/shabakaty/downloader/c36;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5$a;

    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/kv5$a;->c(Lcom/shabakaty/downloader/kv5;)Lcom/shabakaty/downloader/kv5$a;

    return-object v0
.end method

.method public final q(Lcom/shabakaty/downloader/zp5;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s56;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/o66;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/zp5;->s:Lcom/shabakaty/downloader/mq5;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/shabakaty/downloader/mq5;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/mq5;-><init>(Lcom/shabakaty/downloader/zp5;)V

    .line 4
    :goto_0
    invoke-interface {v0, p0, v1}, Lcom/shabakaty/downloader/o66;->e(Ljava/lang/Object;Lcom/shabakaty/downloader/ie6;)V

    return-void
.end method

.method public final synthetic r()Lcom/shabakaty/downloader/c36;
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/shabakaty/downloader/kv5;->e(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/kv5$a;

    return-object v0
.end method

.method public final s()I
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s56;->c:Lcom/shabakaty/downloader/s56;

    .line 2
    invoke-virtual {v0, p0}, Lcom/shabakaty/downloader/s56;->b(Ljava/lang/Object;)Lcom/shabakaty/downloader/o66;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/shabakaty/downloader/o66;->f(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/kv5;->zzjq:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lcom/shabakaty/downloader/k36;->a(Lcom/shabakaty/downloader/y26;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
