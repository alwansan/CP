.class public final Lcom/shabakaty/downloader/o43;
.super Lcom/shabakaty/downloader/wr4;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/wr4<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/xr4;


# instance fields
.field public final a:Lcom/shabakaty/downloader/lr1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o43$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/o43$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/o43;->b:Lcom/shabakaty/downloader/xr4;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/lr1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/wr4;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/o43;->a:Lcom/shabakaty/downloader/lr1;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->L()Lcom/shabakaty/downloader/ka2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->B()V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->p()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->r()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->J()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/ci2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ci2;-><init>()V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->b()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/o43;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ci2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->f()V

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->a()V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/o43;->a(Lcom/shabakaty/downloader/ga2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ga2;->e()V

    return-object v0
.end method

.method public b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->k()Lcom/shabakaty/downloader/pa2;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/o43;->a:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Lcom/shabakaty/downloader/cu4;->get(Ljava/lang/Class;)Lcom/shabakaty/downloader/cu4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/lr1;->f(Lcom/shabakaty/downloader/cu4;)Lcom/shabakaty/downloader/wr4;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/o43;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->c()Lcom/shabakaty/downloader/pa2;

    .line 6
    invoke-virtual {p1}, Lcom/shabakaty/downloader/pa2;->f()Lcom/shabakaty/downloader/pa2;

    return-void

    .line 7
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/wr4;->b(Lcom/shabakaty/downloader/pa2;Ljava/lang/Object;)V

    return-void
.end method
