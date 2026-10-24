.class public final Lcom/shabakaty/downloader/l16;
.super Lcom/shabakaty/downloader/s36;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"


# instance fields
.field public final synthetic A:Lcom/shabakaty/downloader/g66;

.field public final synthetic v:I

.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:Z

.field public final synthetic z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/l16;->v:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/l16;->A:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l16;->w:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/l16;->x:Ljava/lang/String;

    iput-object p4, p0, Lcom/shabakaty/downloader/l16;->z:Ljava/lang/Object;

    iput-boolean p5, p0, Lcom/shabakaty/downloader/l16;->y:Z

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/ts5;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/l16;->v:I

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/l16;->A:Lcom/shabakaty/downloader/g66;

    iput-object p2, p0, Lcom/shabakaty/downloader/l16;->w:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/l16;->x:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/shabakaty/downloader/l16;->y:Z

    iput-object p5, p0, Lcom/shabakaty/downloader/l16;->z:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/shabakaty/downloader/s36;-><init>(Lcom/shabakaty/downloader/g66;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/l16;->v:I

    const-string v1, "null reference"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l16;->A:Lcom/shabakaty/downloader/g66;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/l16;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/shabakaty/downloader/l16;->x:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/l16;->y:Z

    iget-object v4, p0, Lcom/shabakaty/downloader/l16;->z:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/ts5;

    .line 5
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/nu5;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/shabakaty/downloader/fv5;)V

    return-void

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l16;->A:Lcom/shabakaty/downloader/g66;

    .line 7
    iget-object v2, v0, Lcom/shabakaty/downloader/g66;->f:Lcom/shabakaty/downloader/nu5;

    .line 8
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lcom/shabakaty/downloader/l16;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/l16;->x:Ljava/lang/String;

    iget-object v0, p0, Lcom/shabakaty/downloader/l16;->z:Ljava/lang/Object;

    .line 10
    new-instance v5, Lcom/shabakaty/downloader/p43;

    invoke-direct {v5, v0}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 11
    iget-boolean v6, p0, Lcom/shabakaty/downloader/l16;->y:Z

    iget-wide v7, p0, Lcom/shabakaty/downloader/s36;->r:J

    invoke-interface/range {v2 .. v8}, Lcom/shabakaty/downloader/nu5;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/gx1;ZJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/l16;->v:I

    packed-switch v0, :pswitch_data_0

    return-void

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/l16;->z:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ts5;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/ts5;->o(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
