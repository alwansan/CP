.class public final Lcom/shabakaty/downloader/dy3;
.super Ljava/lang/Object;
.source "SchedulingModule_WorkSchedulerFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
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
            "Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/y30;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V
    .locals 1

    iput p5, p0, Lcom/shabakaty/downloader/dy3;->a:I

    const/4 v0, 0x1

    if-eq p5, v0, :cond_1

    const/4 v0, 0x2

    if-eq p5, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    .line 9
    iput-object p3, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    .line 10
    iput-object p4, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    .line 13
    iput-object p2, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    .line 14
    iput-object p3, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    .line 15
    iput-object p4, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/dy3;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/x51;

    iget-object v2, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/b85;

    iget-object v3, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/fj4;

    .line 2
    new-instance v4, Lcom/shabakaty/downloader/p75;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/p75;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/x51;Lcom/shabakaty/downloader/b85;Lcom/shabakaty/downloader/fj4;)V

    return-object v4

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/x51;

    iget-object v2, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;

    iget-object v3, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/y30;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/i92;

    invoke-direct {v3, v0, v1, v2}, Lcom/shabakaty/downloader/i92;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/x51;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/c;)V

    return-object v3

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/dy3;->b:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/y30;

    iget-object v1, p0, Lcom/shabakaty/downloader/dy3;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/y30;

    iget-object v2, p0, Lcom/shabakaty/downloader/dy3;->d:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/dy3;->e:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v3}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v3

    .line 6
    new-instance v4, Lcom/shabakaty/downloader/lw3;

    check-cast v2, Lcom/shabakaty/downloader/y51;

    check-cast v3, Lcom/shabakaty/downloader/ky3;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/shabakaty/downloader/lw3;-><init>(Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y30;Lcom/shabakaty/downloader/y51;Lcom/shabakaty/downloader/ky3;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
