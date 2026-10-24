.class public abstract Lcom/shabakaty/downloader/ac2;
.super Ljava/lang/Object;
.source "KCallableImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/zb2;
.implements Lcom/shabakaty/downloader/rd2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/zb2<",
        "TR;>;",
        "Lcom/shabakaty/downloader/rd2;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/cq3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$a<",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/cd2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ac2$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ac2$a;-><init>(Lcom/shabakaty/downloader/ac2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ac2$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ac2$b;-><init>(Lcom/shabakaty/downloader/ac2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ac2;->r:Lcom/shabakaty/downloader/cq3$a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ac2$c;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ac2$c;-><init>(Lcom/shabakaty/downloader/ac2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ac2$d;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ac2$d;-><init>(Lcom/shabakaty/downloader/ac2;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ac2;->b()Lcom/shabakaty/downloader/er;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/er;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/an0;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/an0;-><init>(Ljava/lang/IllegalAccessException;)V

    throw v0
.end method

.method public abstract b()Lcom/shabakaty/downloader/er;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/er<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract c()Lcom/shabakaty/downloader/oc2;
.end method

.method public abstract e()Lcom/shabakaty/downloader/tq;
.end method

.method public final f()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/zb2;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ac2;->c()Lcom/shabakaty/downloader/oc2;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/k20;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract g()Z
.end method
