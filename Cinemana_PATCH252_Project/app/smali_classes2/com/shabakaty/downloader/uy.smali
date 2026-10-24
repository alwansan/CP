.class public abstract Lcom/shabakaty/downloader/uy;
.super Lcom/shabakaty/downloader/ry;
.source "ChannelFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ry<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final u:Lcom/shabakaty/downloader/te1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/te1<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/te1<",
            "+TS;>;",
            "Lcom/shabakaty/downloader/me0;",
            "I",
            "Lcom/shabakaty/downloader/co;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/shabakaty/downloader/ry;-><init>(Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/co;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    return-void
.end method


# virtual methods
.method public d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
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
    sget-object v0, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    iget v1, p0, Lcom/shabakaty/downloader/ry;->s:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_6

    .line 2
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ry;->r:Lcom/shabakaty/downloader/me0;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/me0;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v2

    .line 4
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/downloader/uy;->i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_2

    .line 6
    :cond_1
    sget v3, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v3, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/yd0;

    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/yd0;

    invoke-static {v4, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7
    invoke-interface {p2}, Lcom/shabakaty/downloader/ud0;->a()Lcom/shabakaty/downloader/me0;

    move-result-object v1

    .line 8
    instance-of v3, p1, Lcom/shabakaty/downloader/k04;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/shabakaty/downloader/zz2;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    new-instance v3, Lcom/shabakaty/downloader/mv4;

    invoke-direct {v3, p1, v1}, Lcom/shabakaty/downloader/mv4;-><init>(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/me0;)V

    move-object p1, v3

    .line 10
    :goto_0
    new-instance v1, Lcom/shabakaty/downloader/ty;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/shabakaty/downloader/ty;-><init>(Lcom/shabakaty/downloader/uy;Lcom/shabakaty/downloader/ud0;)V

    .line 11
    invoke-static {v2}, Lcom/shabakaty/downloader/zm4;->b(Lcom/shabakaty/downloader/me0;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, p1, v3, v1, p2}, Lcom/shabakaty/downloader/rm3;->B(Lcom/shabakaty/downloader/me0;Ljava/lang/Object;Ljava/lang/Object;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_1
    if-ne p1, v0, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    goto :goto_2

    .line 14
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/shabakaty/downloader/ry;->d(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_2

    .line 15
    :cond_7
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_2
    return-object p1
.end method

.method public e(Lcom/shabakaty/downloader/hg3;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/k04;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/k04;-><init>(Lcom/shabakaty/downloader/h04;)V

    invoke-virtual {p0, v0, p2}, Lcom/shabakaty/downloader/uy;->i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    :goto_0
    return-object p1
.end method

.method public abstract i(Lcom/shabakaty/downloader/ue1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/downloader/uy;->u:Lcom/shabakaty/downloader/te1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/shabakaty/downloader/ry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
