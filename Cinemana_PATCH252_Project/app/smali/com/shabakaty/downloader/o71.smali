.class public final synthetic Lcom/shabakaty/downloader/o71;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/si2$a;
.implements Lcom/shabakaty/downloader/wc0;


# instance fields
.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/shabakaty/downloader/o71;->r:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/o71;->r:I

    check-cast p1, Lcom/shabakaty/downloader/s01$a;

    .line 1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/s01$a;->d(I)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/shabakaty/downloader/o71;->r:I

    check-cast p1, Lcom/shabakaty/downloader/bd3$c;

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bd3$c;->P(I)V

    return-void
.end method
