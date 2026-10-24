.class public abstract Lcom/shabakaty/downloader/ry;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"

# interfaces
.implements Lcom/shabakaty/downloader/go1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/go1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/me0;

.field public final s:I

.field public final t:Lcom/shabakaty/downloader/co;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    iput p2, p0, Lcom/shabakaty/downloader/ry;->s:I

    iput-object p3, p0, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    if-eq p3, v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget p3, p0, Lcom/shabakaty/downloader/ry;->s:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p3, p2

    if-ltz p3, :cond_5

    goto :goto_0

    :cond_5
    const p2, 0x7fffffff

    .line 4
    :goto_1
    iget-object p3, p0, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    .line 5
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/shabakaty/downloader/ry;->s:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    if-ne p3, v0, :cond_6

    return-object p0

    .line 6
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/ry;->g(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/ry;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ue1<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/ry$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/ry$a;-><init>(Lcom/shabakaty/downloader/ry;Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v0, p2}, Lcom/shabakaty/downloader/nh3;->h(Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    return-object p1
.end method

.method public abstract e(Lcom/shabakaty/downloader/hg3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hg3<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract g(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)Lcom/shabakaty/downloader/ry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")",
            "Lcom/shabakaty/downloader/ry<",
            "TT;>;"
        }
    .end annotation
.end method

.method public h()Lcom/shabakaty/downloader/te1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/te1<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    sget-object v2, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    if-eq v1, v2, :cond_0

    const-string v1, "context="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget v1, p0, Lcom/shabakaty/downloader/ry;->s:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_1

    const-string v1, "capacity="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/shabakaty/downloader/ry;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    sget-object v2, Lcom/shabakaty/downloader/co;->r:Lcom/shabakaty/downloader/co;

    if-eq v1, v2, :cond_2

    const-string v1, "onBufferOverflow="

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/ry;->t:Lcom/shabakaty/downloader/co;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v1, ", "

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-static {v8, v0, v1}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
