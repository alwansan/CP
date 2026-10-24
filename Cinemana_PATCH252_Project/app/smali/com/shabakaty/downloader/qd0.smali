.class public final Lcom/shabakaty/downloader/qd0;
.super Ljava/lang/Object;
.source "ContextModule_ProvideWeakContextFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/cp6;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/qd0;->a:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ll3;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/qd0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/pd0;Lcom/shabakaty/downloader/oj3;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/qd0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/qd0;->a:I

    const-string v1, "context"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ll3;

    iget-object v2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/sx2;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/shabakaty/downloader/sx2;-><init>(Landroid/content/Context;[Lcom/shabakaty/downloader/vx2;I)V

    return-object v0

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pd0;

    iget-object v2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/qd0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cp6;

    iget-object v2, p0, Lcom/shabakaty/downloader/qd0;->c:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 12
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
