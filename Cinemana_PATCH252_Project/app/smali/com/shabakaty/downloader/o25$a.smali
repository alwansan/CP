.class public final Lcom/shabakaty/downloader/o25$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/o25;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lcom/shabakaty/downloader/o25;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/shabakaty/downloader/o25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/o25$a;->a:Landroid/os/Handler;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    return-void
.end method
