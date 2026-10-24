.class public Lcom/shabakaty/downloader/np4;
.super Ljava/lang/Object;
.source "Trackers.java"

# interfaces
.implements Lcom/shabakaty/downloader/tq3;


# static fields
.field public static w:Lcom/shabakaty/downloader/np4;


# instance fields
.field public final synthetic r:I

.field public s:Ljava/lang/Object;

.field public t:Ljava/lang/Object;

.field public u:Ljava/lang/Object;

.field public v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Lcom/shabakaty/downloader/np4;->r:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/be3;

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/be3;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/be3;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/be3;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/be3;

    invoke-direct {p1, v0, v1}, Lcom/shabakaty/downloader/be3;-><init>(II)V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Lcom/shabakaty/downloader/n94;

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance p1, Lcom/shabakaty/downloader/ad;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    .line 16
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    .line 17
    new-instance p1, Lcom/shabakaty/downloader/jl2;

    const/16 v0, 0xa

    .line 18
    invoke-direct {p1, v0}, Lcom/shabakaty/downloader/jl2;-><init>(I)V

    .line 19
    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    .line 20
    new-instance p1, Lcom/shabakaty/downloader/ad;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/shabakaty/downloader/ol;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/ol;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/shabakaty/downloader/ql;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/ql;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/shabakaty/downloader/sy2;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/sy2;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/od4;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/od4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/k73;Lcom/shabakaty/downloader/p73;Lcom/shabakaty/downloader/xl2;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    const-string v0, "logger"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiClient"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/tk1;

    invoke-static {p3}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    invoke-direct {p2, p1, p3, p4}, Lcom/shabakaty/downloader/tk1;-><init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/p73;Lcom/shabakaty/downloader/xl2;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/qz2;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/vh5;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    iput p4, p0, Lcom/shabakaty/downloader/np4;->r:I

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-eq p4, v1, :cond_0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/xw1;Lcom/shabakaty/downloader/ww1;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/shabakaty/downloader/eb4;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/shabakaty/downloader/eb4;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    new-instance v0, Lcom/shabakaty/downloader/np4;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/np4;-><init>(Ljava/lang/Throwable;Lcom/shabakaty/downloader/eb4;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)Lcom/shabakaty/downloader/np4;
    .locals 2

    const-class v0, Lcom/shabakaty/downloader/np4;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/np4;->w:Lcom/shabakaty/downloader/np4;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/np4;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/np4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;)V

    sput-object v1, Lcom/shabakaty/downloader/np4;->w:Lcom/shabakaty/downloader/np4;

    .line 3
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/np4;->w:Lcom/shabakaty/downloader/np4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/u33;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tk1;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/x33;

    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/b33;

    iget-object v2, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/tk1;

    new-instance v3, Lcom/shabakaty/downloader/y33;

    iget-object v4, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/k73;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/y33;-><init>(Lcom/shabakaty/downloader/k73;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/x33;-><init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/p83;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/v33;

    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/b33;

    iget-object v2, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/tk1;

    new-instance v3, Lcom/shabakaty/downloader/w33;

    iget-object v4, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/k73;

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/w33;-><init>(Lcom/shabakaty/downloader/k73;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/shabakaty/downloader/v33;-><init>(Lcom/shabakaty/downloader/b33;Lcom/shabakaty/downloader/tk1;Lcom/shabakaty/downloader/p83;)V

    :goto_0
    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/t33;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/t33;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/np4;->d()Lcom/shabakaty/downloader/t33;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/np4;->a()Lcom/shabakaty/downloader/u33;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public d()Lcom/shabakaty/downloader/t33;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tk1;->y()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/t33;

    instance-of v1, v1, Lcom/shabakaty/downloader/v33;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/t33;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tk1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tk1;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/t33;

    instance-of v1, v1, Lcom/shabakaty/downloader/x33;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lcom/shabakaty/downloader/t33;

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/np4;->a()Lcom/shabakaty/downloader/u33;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/np4;
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/np4;

    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/qz2;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/np4;-><init>(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/qz2;)V

    return-object v0
.end method

.method public f(Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/qz2;

    .line 1
    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/shabakaty/downloader/uf5;)Lcom/shabakaty/downloader/gj5;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/gj5;->i:Lcom/shabakaty/downloader/gj5;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uf5;->z()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/qz2;

    .line 4
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/uf5;->u(I)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/shabakaty/downloader/qz2;->k(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/gj5;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 5
    instance-of v2, v0, Lcom/shabakaty/downloader/ng5;

    if-eqz v2, :cond_0

    :cond_1
    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gj5;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s is not defined"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    .line 2
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/np4;->k(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 7
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/np4;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/np4;->k(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/np4;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/np4;->v:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/vh5;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->e()V

    .line 4
    :try_start_0
    iget-object v5, v0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/shabakaty/downloader/gf5;->S(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->B:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p2, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ye7;->p(Ljava/lang/Exception;)V

    :goto_0
    return-void

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/np4;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/vh5;

    iget-object v1, p0, Lcom/shabakaty/downloader/np4;->t:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/np4;->u:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/cf7;

    check-cast p2, Lcom/shabakaty/downloader/zk4;

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->e()V

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ij;->k()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/gf5;

    const/4 v3, 0x0

    .line 11
    invoke-interface {p1, v1, v2, v3}, Lcom/shabakaty/downloader/gf5;->h0(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/mo5;)V

    .line 12
    invoke-virtual {v0, p2}, Lcom/shabakaty/downloader/vh5;->g(Lcom/shabakaty/downloader/zk4;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
