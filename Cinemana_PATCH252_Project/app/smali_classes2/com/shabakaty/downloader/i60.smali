.class public final Lcom/shabakaty/downloader/i60;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/me0;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/i60$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/me0;

.field public final s:Lcom/shabakaty/downloader/me0$b;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/i60;->a()I

    move-result v0

    .line 2
    new-array v1, v0, [Lcom/shabakaty/downloader/me0;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/jo3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/jo3;-><init>()V

    .line 4
    sget-object v3, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    new-instance v4, Lcom/shabakaty/downloader/i60$c;

    invoke-direct {v4, v1, v2}, Lcom/shabakaty/downloader/i60$c;-><init>([Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/jo3;)V

    invoke-virtual {p0, v3, v4}, Lcom/shabakaty/downloader/i60;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    .line 5
    iget v2, v2, Lcom/shabakaty/downloader/jo3;->r:I

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/i60$a;

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/i60$a;-><init>([Lcom/shabakaty/downloader/me0;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v1, v1, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    instance-of v2, v1, Lcom/shabakaty/downloader/i60;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shabakaty/downloader/i60;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eq p0, p1, :cond_2

    .line 1
    instance-of v1, p1, Lcom/shabakaty/downloader/i60;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/shabakaty/downloader/i60;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/i60;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/shabakaty/downloader/i60;->a()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    .line 2
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    .line 3
    invoke-interface {v2}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/i60;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, v1, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    .line 5
    instance-of v2, v1, Lcom/shabakaty/downloader/i60;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/shabakaty/downloader/i60;

    goto :goto_0

    .line 7
    :cond_1
    check-cast v1, Lcom/shabakaty/downloader/me0$b;

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/i60;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lcom/shabakaty/downloader/hn1<",
            "-TR;-",
            "Lcom/shabakaty/downloader/me0$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/me0;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    invoke-interface {p2, p1, v0}, Lcom/shabakaty/downloader/hn1;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/shabakaty/downloader/me0$b;",
            ">(",
            "Lcom/shabakaty/downloader/me0$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    :goto_0
    iget-object v1, v0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/me0$b;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    .line 3
    instance-of v1, v0, Lcom/shabakaty/downloader/i60;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/i60;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0$c<",
            "*>;)",
            "Lcom/shabakaty/downloader/me0;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/me0$b;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/me0;->minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    if-ne p1, v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/i60;

    iget-object v1, p0, Lcom/shabakaty/downloader/i60;->s:Lcom/shabakaty/downloader/me0$b;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/i60;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V

    move-object p1, v0

    :goto_0
    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/i60;->r:Lcom/shabakaty/downloader/me0;

    return-object p1
.end method

.method public plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/me0$a;->a(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x5b

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/i61;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/i60$b;->r:Lcom/shabakaty/downloader/i60$b;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/i60;->fold(Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
