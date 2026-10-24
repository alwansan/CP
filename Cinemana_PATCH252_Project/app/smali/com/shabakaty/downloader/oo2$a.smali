.class public final Lcom/shabakaty/downloader/oo2$a;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oo2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/ro2;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Landroid/view/Surface;

.field public final d:Landroid/media/MediaCrypto;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ro2;Landroid/media/MediaFormat;Lcom/shabakaty/downloader/wh1;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/oo2$a;->a:Lcom/shabakaty/downloader/ro2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/oo2$a;->b:Landroid/media/MediaFormat;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/oo2$a;->c:Landroid/view/Surface;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/oo2$a;->d:Landroid/media/MediaCrypto;

    return-void
.end method
