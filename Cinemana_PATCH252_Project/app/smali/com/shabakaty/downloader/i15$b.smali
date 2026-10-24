.class public final Lcom/shabakaty/downloader/i15$b;
.super Ljava/lang/Object;
.source "VideoInfoFragment.kt"

# interfaces
.implements Lcom/shabakaty/downloader/pq3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/i15;-><init>(Lcom/shabakaty/downloader/j15;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/j15;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j15;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/i15$b;->r:Lcom/shabakaty/downloader/j15;

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
    iget-object v0, p0, Lcom/shabakaty/downloader/i15$b;->r:Lcom/shabakaty/downloader/j15;

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/j15;->u1(Lcom/shabakaty/cinemana/domain/models/local/VideoModel;Landroid/view/View;)V

    return-void
.end method
