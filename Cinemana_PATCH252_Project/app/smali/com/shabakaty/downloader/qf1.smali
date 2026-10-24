.class public abstract Lcom/shabakaty/downloader/qf1;
.super Ljava/lang/Object;
.source "Flowable.java"

# interfaces
.implements Lcom/shabakaty/downloader/wj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/wj3<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "rx2.buffer-size"

    const/16 v1, 0x80

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/shabakaty/downloader/qf1;->r:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/Object;)Lcom/shabakaty/downloader/qf1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "item is null"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/kg1;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kg1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ef4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/wg1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/wg1;

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    goto :goto_0

    :cond_0
    const-string v0, "s is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/be4;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/be4;-><init>(Lcom/shabakaty/downloader/ef4;)V

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    :goto_0
    return-void
.end method

.method public final b()Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/do1;->a:Lcom/shabakaty/downloader/in1;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/wf1;

    sget-object v2, Lcom/shabakaty/downloader/n43;->a:Lcom/shabakaty/downloader/xl;

    invoke-direct {v1, p0, v0, v2}, Lcom/shabakaty/downloader/wf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;Lcom/shabakaty/downloader/xl;)V

    return-object v1
.end method

.method public final c(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)Lcom/shabakaty/downloader/qf1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/j2;",
            ")",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onComplete is null"

    .line 3
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/xf1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/xf1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/j2;)V

    return-object v0
.end method

.method public final e(Lcom/shabakaty/downloader/in1;)Lcom/shabakaty/downloader/qf1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/in1<",
            "-TT;+TR;>;)",
            "Lcom/shabakaty/downloader/qf1<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "mapper is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lg1;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/lg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/in1;)V

    return-object v0
.end method

.method public final f(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/qf1;->r:I

    const-string v1, "bufferSize"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/n43;->a(ILjava/lang/String;)I

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/mg1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/shabakaty/downloader/mg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/wx3;ZI)V

    return-object v1
.end method

.method public final g(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)Lcom/shabakaty/downloader/mu0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/xc0<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lcom/shabakaty/downloader/j2;",
            "Lcom/shabakaty/downloader/xc0<",
            "-",
            "Lcom/shabakaty/downloader/lf4;",
            ">;)",
            "Lcom/shabakaty/downloader/mu0;"
        }
    .end annotation

    const-string v0, "onNext is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "onError is null"

    .line 2
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/cf2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/cf2;-><init>(Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/xc0;Lcom/shabakaty/downloader/j2;Lcom/shabakaty/downloader/xc0;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/qf1;->h(Lcom/shabakaty/downloader/wg1;)V

    return-object v0
.end method

.method public final h(Lcom/shabakaty/downloader/wg1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wg1<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "s is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/qf1;->i(Lcom/shabakaty/downloader/ef4;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/shabakaty/downloader/kf5;->m(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    .line 5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Actually not, but can\'t throw other exceptions due to RS"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    throw v0

    :catch_0
    move-exception p1

    .line 8
    throw p1
.end method

.method public abstract i(Lcom/shabakaty/downloader/ef4;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public final j(Lcom/shabakaty/downloader/wx3;)Lcom/shabakaty/downloader/qf1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wx3;",
            ")",
            "Lcom/shabakaty/downloader/qf1<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "scheduler is null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/vg1;

    invoke-direct {v1, p0, p1, v0}, Lcom/shabakaty/downloader/vg1;-><init>(Lcom/shabakaty/downloader/qf1;Lcom/shabakaty/downloader/wx3;Z)V

    return-object v1
.end method
