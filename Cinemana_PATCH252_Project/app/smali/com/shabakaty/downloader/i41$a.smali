.class public final Lcom/shabakaty/downloader/i41$a;
.super Ljava/lang/Object;
.source "EpomExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/wq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/i41;->a(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/fv<",
            "Lcom/shabakaty/downloader/ws3;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/shabakaty/downloader/mq;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;Lcom/shabakaty/downloader/mq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/fv<",
            "-",
            "Lcom/shabakaty/downloader/ws3;",
            ">;",
            "Lcom/shabakaty/downloader/mq;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/i41$a;->a:Lcom/shabakaty/downloader/fv;

    iput-object p2, p0, Lcom/shabakaty/downloader/i41$a;->b:Lcom/shabakaty/downloader/mq;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/shabakaty/downloader/mq;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/i41$a;->a:Lcom/shabakaty/downloader/fv;

    invoke-interface {p1}, Lcom/shabakaty/downloader/fv;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/i41$a;->a:Lcom/shabakaty/downloader/fv;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lcom/shabakaty/downloader/mq;Lcom/shabakaty/downloader/ws3;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/i41$a;->a:Lcom/shabakaty/downloader/fv;

    new-instance v0, Lcom/shabakaty/downloader/i41$a$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i41$a;->b:Lcom/shabakaty/downloader/mq;

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/i41$a$a;-><init>(Lcom/shabakaty/downloader/i41$a;Lcom/shabakaty/downloader/mq;)V

    invoke-interface {p1, p2, v0}, Lcom/shabakaty/downloader/fv;->g(Ljava/lang/Object;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method
