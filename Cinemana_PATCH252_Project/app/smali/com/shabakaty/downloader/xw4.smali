.class public final Lcom/shabakaty/downloader/xw4;
.super Ljava/lang/Object;
.source "Uploader_Factory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final a:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/gi;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/x51;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/b85;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/fj4;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/y30;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/gi;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/x51;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/b85;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/fj4;",
            ">;",
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/y30;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/xw4;->a:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/xw4;->b:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/xw4;->c:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/xw4;->d:Lcom/shabakaty/downloader/oj3;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/xw4;->e:Lcom/shabakaty/downloader/oj3;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/xw4;->f:Lcom/shabakaty/downloader/oj3;

    .line 8
    iput-object p7, p0, Lcom/shabakaty/downloader/xw4;->g:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->a:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/shabakaty/downloader/gi;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/shabakaty/downloader/x51;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/shabakaty/downloader/b85;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/shabakaty/downloader/fj4;

    iget-object v0, p0, Lcom/shabakaty/downloader/xw4;->g:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/shabakaty/downloader/y30;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ww4;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/shabakaty/downloader/ww4;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/gi;Lcom/shabakaty/downloader/x51;Lcom/shabakaty/downloader/b85;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/fj4;Lcom/shabakaty/downloader/y30;)V

    return-object v0
.end method
