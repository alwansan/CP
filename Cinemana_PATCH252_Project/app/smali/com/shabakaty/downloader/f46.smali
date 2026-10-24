.class public final Lcom/shabakaty/downloader/f46;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic v:I

.field public final synthetic w:Landroid/app/Activity;

.field public final synthetic x:Lcom/shabakaty/downloader/b66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/b66;Landroid/app/Activity;I)V
    .locals 2

    iput p3, p0, Lcom/shabakaty/downloader/f46;->v:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iput-object p2, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    iget-object p1, p1, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iput-object p2, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    iget-object p1, p1, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iput-object p2, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    iget-object p1, p1, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iput-object p2, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    iget-object p1, p1, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 9
    :cond_3
    iput-object p1, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iput-object p2, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    iget-object p1, p1, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Lcom/shabakaty/downloader/f46;->v:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iget-object v0, v0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/p43;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-wide v3, p0, Lcom/shabakaty/downloader/s36;->s:J

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->onActivityStopped(Lcom/shabakaty/downloader/gx1;J)V

    return-void

    .line 7
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iget-object v0, v0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    .line 11
    new-instance v2, Lcom/shabakaty/downloader/p43;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 12
    iget-wide v3, p0, Lcom/shabakaty/downloader/s36;->s:J

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->onActivityPaused(Lcom/shabakaty/downloader/gx1;J)V

    return-void

    .line 13
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iget-object v0, v0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    .line 17
    new-instance v2, Lcom/shabakaty/downloader/p43;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 18
    iget-wide v3, p0, Lcom/shabakaty/downloader/s36;->s:J

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->onActivityResumed(Lcom/shabakaty/downloader/gx1;J)V

    return-void

    .line 19
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iget-object v0, v0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 20
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 21
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    .line 23
    new-instance v2, Lcom/shabakaty/downloader/p43;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 24
    iget-wide v3, p0, Lcom/shabakaty/downloader/s36;->s:J

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->onActivityStarted(Lcom/shabakaty/downloader/gx1;J)V

    return-void

    .line 25
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/f46;->x:Lcom/shabakaty/downloader/b66;

    iget-object v0, v0, Lcom/shabakaty/downloader/b66;->r:Lcom/shabakaty/downloader/g66;

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 27
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/f46;->w:Landroid/app/Activity;

    .line 29
    new-instance v2, Lcom/shabakaty/downloader/p43;

    invoke-direct {v2, v1}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 30
    iget-wide v3, p0, Lcom/shabakaty/downloader/s36;->s:J

    invoke-interface {v0, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->onActivityDestroyed(Lcom/shabakaty/downloader/gx1;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
