.class public final synthetic Lcom/shabakaty/downloader/w5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/t6$a;

.field public final synthetic s:F


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/t6$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/w5;->r:Lcom/shabakaty/downloader/t6$a;

    iput p2, p0, Lcom/shabakaty/downloader/w5;->s:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/w5;->r:Lcom/shabakaty/downloader/t6$a;

    iget v1, p0, Lcom/shabakaty/downloader/w5;->s:F

    check-cast p1, Lcom/shabakaty/downloader/t6;

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/t6;->M(Lcom/shabakaty/downloader/t6$a;F)V

    return-void
.end method
