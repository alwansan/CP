.class public final synthetic Lcom/shabakaty/downloader/rl2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/a73;
.implements Lcom/shabakaty/downloader/p63;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/sl2;

.field public final synthetic s:Lcom/shabakaty/downloader/fz1;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/sl2;Lcom/shabakaty/downloader/fz1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/rl2;->r:Lcom/shabakaty/downloader/sl2;

    iput-object p2, p0, Lcom/shabakaty/downloader/rl2;->s:Lcom/shabakaty/downloader/fz1;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Exception;)V
    .locals 2

    iget-object p1, p0, Lcom/shabakaty/downloader/rl2;->r:Lcom/shabakaty/downloader/sl2;

    iget-object v0, p0, Lcom/shabakaty/downloader/rl2;->s:Lcom/shabakaty/downloader/fz1;

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$imageProxy"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p1, Lcom/shabakaty/downloader/sl2;->b:Z

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/fz1;->close()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/rl2;->r:Lcom/shabakaty/downloader/sl2;

    iget-object v1, p0, Lcom/shabakaty/downloader/rl2;->s:Lcom/shabakaty/downloader/fz1;

    check-cast p1, Ljava/util/List;

    const-string v2, "this$0"

    .line 1
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$imageProxy"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object p1, v2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ri;

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/ri;->a:Lcom/shabakaty/downloader/nr6;

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/nr6;->c()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "Barcode"

    .line 5
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, v0, Lcom/shabakaty/downloader/sl2;->a:Lcom/shabakaty/downloader/ox3;

    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/ox3;->a(Ljava/lang/String;)V

    :goto_2
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, v0, Lcom/shabakaty/downloader/sl2;->b:Z

    .line 8
    invoke-interface {v1}, Lcom/shabakaty/downloader/fz1;->close()V

    return-void
.end method
