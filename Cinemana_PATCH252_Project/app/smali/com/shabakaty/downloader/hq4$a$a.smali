.class public Lcom/shabakaty/downloader/hq4$a$a;
.super Lcom/shabakaty/downloader/gq4;
.source "TransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/hq4$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/ad;

.field public final synthetic b:Lcom/shabakaty/downloader/hq4$a;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hq4$a;Lcom/shabakaty/downloader/ad;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/hq4$a$a;->b:Lcom/shabakaty/downloader/hq4$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/hq4$a$a;->a:Lcom/shabakaty/downloader/ad;

    invoke-direct {p0}, Lcom/shabakaty/downloader/gq4;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lcom/shabakaty/downloader/dq4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hq4$a$a;->a:Lcom/shabakaty/downloader/ad;

    iget-object v1, p0, Lcom/shabakaty/downloader/hq4$a$a;->b:Lcom/shabakaty/downloader/hq4$a;

    iget-object v1, v1, Lcom/shabakaty/downloader/hq4$a;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/m64;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/dq4;->y(Lcom/shabakaty/downloader/dq4$d;)Lcom/shabakaty/downloader/dq4;

    return-void
.end method
