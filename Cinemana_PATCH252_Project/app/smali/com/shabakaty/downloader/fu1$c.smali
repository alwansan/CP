.class public final Lcom/shabakaty/downloader/fu1$c;
.super Ljava/lang/Object;
.source "HomeFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xu1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/fu1;-><init>(Lcom/shabakaty/downloader/wt1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/fu1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fu1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/fu1$c;->r:Lcom/shabakaty/downloader/fu1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V
    .locals 1

    const-string v0, "videoModel"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fu1$c;->r:Lcom/shabakaty/downloader/fu1;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/fu1;->a:Lcom/shabakaty/downloader/wt1;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/wt1;->a(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    return-void
.end method
