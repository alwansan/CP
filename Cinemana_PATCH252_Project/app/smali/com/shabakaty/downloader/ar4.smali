.class public final Lcom/shabakaty/downloader/ar4;
.super Ljava/lang/Object;
.source "TransportRuntime_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/y30;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/y30;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/vx3;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ww4;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/p75;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p6, p0, Lcom/shabakaty/downloader/ar4;->a:I

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ar4;->b:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ar4;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/ar4;->d:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/ar4;->e:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/ar4;->f:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 7
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/ar4;->b:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/ar4;->c:Lcom/shabakaty/downloader/oj3;

    .line 10
    iput-object p3, p0, Lcom/shabakaty/downloader/ar4;->d:Lcom/shabakaty/downloader/oj3;

    .line 11
    iput-object p4, p0, Lcom/shabakaty/downloader/ar4;->e:Lcom/shabakaty/downloader/oj3;

    .line 12
    iput-object p5, p0, Lcom/shabakaty/downloader/ar4;->f:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/ar4;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/y30;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/y30;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/vx3;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/ww4;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/p75;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/yq4;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/yq4;-><init>(Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/vx3;Lcom/shabakaty/downloader/ww4;Lcom/shabakaty/downloader/p75;)V

    return-object v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/gi;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/b85;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/x51;

    iget-object v0, p0, Lcom/shabakaty/downloader/ar4;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/shabakaty/downloader/fj4;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/wo0;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/wo0;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/gi;Lcom/shabakaty/downloader/b85;Lcom/shabakaty/downloader/x51;Lcom/shabakaty/downloader/fj4;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
