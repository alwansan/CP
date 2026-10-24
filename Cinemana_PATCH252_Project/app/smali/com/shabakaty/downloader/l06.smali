.class public final Lcom/shabakaty/downloader/l06;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic v:I

.field public final synthetic w:Lcom/shabakaty/downloader/ts5;

.field public final synthetic x:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V
    .locals 2

    iput p3, p0, Lcom/shabakaty/downloader/l06;->v:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_1

    const/4 v1, 0x4

    if-eq p3, v1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void

    .line 9
    :cond_3
    iput-object p1, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 10
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/l06;->v:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->getCurrentScreenName(Lcom/shabakaty/downloader/fv5;)V

    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->generateEventId(Lcom/shabakaty/downloader/fv5;)V

    return-void

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 11
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->getCachedAppInstanceId(Lcom/shabakaty/downloader/fv5;)V

    return-void

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object v1, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->getGmpAppId(Lcom/shabakaty/downloader/fv5;)V

    return-void

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->x:Lcom/shabakaty/downloader/g66;

    .line 18
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 19
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iget-object v1, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/nu5;->getCurrentScreenClass(Lcom/shabakaty/downloader/fv5;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/l06;->v:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    .line 5
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    .line 7
    :pswitch_3
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 8
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l06;->w:Lcom/shabakaty/downloader/ts5;

    .line 10
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
