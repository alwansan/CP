.class public final Lcom/shabakaty/downloader/fe2;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fv;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/fe2;->a:Lcom/shabakaty/downloader/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fe2;->a:Lcom/shabakaty/downloader/fv;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/nq;Lcom/shabakaty/downloader/xs3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/xs3<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/fe2;->a:Lcom/shabakaty/downloader/fv;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method
