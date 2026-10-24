.class public final synthetic Lcom/shabakaty/downloader/cr6;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/cr6;->r:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/cr6;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/eh2;->c:Lcom/shabakaty/downloader/eh2;

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/eh2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    .line 5
    sget-object v1, Lcom/shabakaty/downloader/eh2;->c:Lcom/shabakaty/downloader/eh2;

    .line 6
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/eh2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/cr6;->s:Ljava/lang/String;

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/eh2;->c:Lcom/shabakaty/downloader/eh2;

    .line 9
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/eh2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
