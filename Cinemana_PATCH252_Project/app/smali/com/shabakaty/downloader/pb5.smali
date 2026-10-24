.class public final Lcom/shabakaty/downloader/pb5;
.super Lcom/shabakaty/downloader/oa5;
.source "com.google.android.gms:play-services-base@@17.4.0"


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Landroid/content/Intent;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/pb5;->r:I

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pb5;->s:Landroid/content/Intent;

    iput-object p2, p0, Lcom/shabakaty/downloader/pb5;->t:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/downloader/pb5;->u:I

    invoke-direct {p0}, Lcom/shabakaty/downloader/oa5;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Lcom/shabakaty/downloader/nh2;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/pb5;->r:I

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pb5;->s:Landroid/content/Intent;

    iput-object p2, p0, Lcom/shabakaty/downloader/pb5;->t:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/shabakaty/downloader/pb5;->u:I

    invoke-direct {p0}, Lcom/shabakaty/downloader/oa5;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/pb5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pb5;->s:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/pb5;->t:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget v2, p0, Lcom/shabakaty/downloader/pb5;->u:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pb5;->s:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/pb5;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/nh2;

    iget v2, p0, Lcom/shabakaty/downloader/pb5;->u:I

    invoke-interface {v1, v0, v2}, Lcom/shabakaty/downloader/nh2;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
