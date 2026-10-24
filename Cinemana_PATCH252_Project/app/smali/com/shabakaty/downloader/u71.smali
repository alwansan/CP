.class public final Lcom/shabakaty/downloader/u71;
.super Ljava/lang/Object;
.source "ExoPlayerModule_ProvideAudioAttributesFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/oj3;


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/shabakaty/downloader/lk2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lk2;I)V
    .locals 1

    iput p2, p0, Lcom/shabakaty/downloader/u71;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/u71;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ah2;

    const-wide/32 v1, 0x6400000

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ah2;-><init>(J)V

    return-object v0

    .line 4
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v2, 0x3

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/ie;

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/ie;-><init>(IIIILcom/shabakaty/downloader/ie$a;)V

    return-object v0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u71;->b:Lcom/shabakaty/downloader/lk2;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/shabakaty/downloader/oo0;

    invoke-direct {v0}, Lcom/shabakaty/downloader/oo0;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
