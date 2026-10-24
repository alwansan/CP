.class public final Lcom/shabakaty/downloader/po2$b;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/shabakaty/downloader/ze$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/po2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/po2;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/po2;Lcom/shabakaty/downloader/po2$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/shabakaty/downloader/fk2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/po2$b;->a:Lcom/shabakaty/downloader/po2;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/po2;->Z0:Lcom/shabakaty/downloader/ye$a;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/ye$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lcom/shabakaty/downloader/ue;

    const/4 v3, 0x1

    invoke-direct {v2, v0, p1, v3}, Lcom/shabakaty/downloader/ue;-><init>(Lcom/shabakaty/downloader/ye$a;Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
