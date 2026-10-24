.class public Lcom/shabakaty/downloader/j21;
.super Ljava/lang/Object;
.source "Element.java"

# interfaces
.implements Lcom/shabakaty/downloader/uz2;


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k21;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/sz2;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/shabakaty/downloader/k21;

    if-eqz p2, :cond_0

    .line 2
    move-object p2, p1

    check-cast p2, Lcom/shabakaty/downloader/k21;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 4
    iget-boolean p2, p2, Lcom/shabakaty/downloader/kk4;->b:Z

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/sz2;->r()Lcom/shabakaty/downloader/sz2;

    move-result-object p1

    instance-of p1, p1, Lcom/shabakaty/downloader/zl4;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/shabakaty/downloader/zl4;->B(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public b(Lcom/shabakaty/downloader/sz2;I)V
    .locals 0

    .line 1
    instance-of p2, p1, Lcom/shabakaty/downloader/zl4;

    if-eqz p2, :cond_0

    .line 2
    check-cast p1, Lcom/shabakaty/downloader/zl4;

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    .line 4
    invoke-static {p2, p1}, Lcom/shabakaty/downloader/k21;->A(Ljava/lang/StringBuilder;Lcom/shabakaty/downloader/zl4;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p2, p1, Lcom/shabakaty/downloader/k21;

    if-eqz p2, :cond_2

    .line 6
    check-cast p1, Lcom/shabakaty/downloader/k21;

    .line 7
    iget-object p2, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/k21;->t:Lcom/shabakaty/downloader/kk4;

    .line 9
    iget-boolean p2, p1, Lcom/shabakaty/downloader/kk4;->b:Z

    if-nez p2, :cond_1

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/kk4;->a:Ljava/lang/String;

    const-string p2, "br"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/zl4;->B(Ljava/lang/StringBuilder;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/j21;->a:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method
