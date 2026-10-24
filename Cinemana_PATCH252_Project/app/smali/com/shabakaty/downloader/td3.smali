.class public final synthetic Lcom/shabakaty/downloader/td3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/google/android/exoplayer2/ui/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/c;I)V
    .locals 0

    iput p2, p0, Lcom/shabakaty/downloader/td3;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/td3;->s:Lcom/google/android/exoplayer2/ui/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/td3;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/td3;->s:Lcom/google/android/exoplayer2/ui/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c;->m()V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/td3;->s:Lcom/google/android/exoplayer2/ui/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/c;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
