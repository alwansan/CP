.class public final synthetic Lcom/shabakaty/downloader/dy1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/fy1$a;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fy1;

.field public final synthetic b:Lcom/shabakaty/downloader/fy1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/fy1;Lcom/shabakaty/downloader/fy1$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/dy1;->a:Lcom/shabakaty/downloader/fy1;

    iput-object p2, p0, Lcom/shabakaty/downloader/dy1;->b:Lcom/shabakaty/downloader/fy1$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/fz1;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/dy1;->a:Lcom/shabakaty/downloader/fy1;

    iget-object v1, p0, Lcom/shabakaty/downloader/dy1;->b:Lcom/shabakaty/downloader/fy1$a;

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/cx4;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/fz1;->L0(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    invoke-interface {v1, p1}, Lcom/shabakaty/downloader/fy1$a;->a(Lcom/shabakaty/downloader/fz1;)V

    return-void
.end method
