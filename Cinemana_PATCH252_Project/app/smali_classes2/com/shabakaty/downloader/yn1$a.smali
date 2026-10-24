.class public Lcom/shabakaty/downloader/yn1$a;
.super Ljava/lang/Object;
.source "FunctionDescriptorImpl.java"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/yn1;->U0(Lcom/shabakaty/downloader/yn1$c;)Lcom/shabakaty/downloader/xn1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/util/Collection<",
        "Lcom/shabakaty/downloader/xn1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/wt4;

.field public final synthetic s:Lcom/shabakaty/downloader/yn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/yn1;Lcom/shabakaty/downloader/wt4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yn1$a;->s:Lcom/shabakaty/downloader/yn1;

    iput-object p2, p0, Lcom/shabakaty/downloader/yn1$a;->r:Lcom/shabakaty/downloader/wt4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e94;

    invoke-direct {v0}, Lcom/shabakaty/downloader/e94;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yn1$a;->s:Lcom/shabakaty/downloader/yn1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yn1;->f()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/xn1;

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/yn1$a;->r:Lcom/shabakaty/downloader/wt4;

    invoke-interface {v2, v3}, Lcom/shabakaty/downloader/xn1;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/e94;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
