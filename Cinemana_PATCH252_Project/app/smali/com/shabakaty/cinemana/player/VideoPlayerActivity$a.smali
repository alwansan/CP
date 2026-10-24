.class public final Lcom/shabakaty/cinemana/player/VideoPlayerActivity$a;
.super Lcom/shabakaty/downloader/af2;
.source "VideoPlayerActivity.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/player/VideoPlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Landroid/widget/Toast;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/shabakaty/cinemana/player/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity$a;->r:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/cinemana/player/VideoPlayerActivity$a;->r:Lcom/shabakaty/cinemana/player/VideoPlayerActivity;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method
