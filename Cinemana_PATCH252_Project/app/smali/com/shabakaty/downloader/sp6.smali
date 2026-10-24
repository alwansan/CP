.class public final Lcom/shabakaty/downloader/sp6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/aq6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/aq6;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/sp6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/sp6;->s:Lcom/shabakaty/downloader/aq6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/shabakaty/downloader/sp6;->s:Lcom/shabakaty/downloader/aq6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/sp6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sp6;->s:Lcom/shabakaty/downloader/aq6;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/aq6;->j:Lcom/shabakaty/downloader/jp6;

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/aq6;->e:Lcom/shabakaty/downloader/jp6;

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/sp6;->s:Lcom/shabakaty/downloader/aq6;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/aq6;->j:Lcom/shabakaty/downloader/jp6;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
