.class public final Lcom/shabakaty/downloader/p04;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lcom/shabakaty/downloader/l04;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/l04<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/hn1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hn1;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/p04;->a:Lcom/shabakaty/downloader/hn1;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p04;->a:Lcom/shabakaty/downloader/hn1;

    const-string v1, "block"

    .line 2
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/m04;

    invoke-direct {v1}, Lcom/shabakaty/downloader/m04;-><init>()V

    .line 4
    invoke-static {v0, v1, v1}, Lcom/shabakaty/downloader/he0;->f(Lcom/shabakaty/downloader/hn1;Ljava/lang/Object;Lcom/shabakaty/downloader/ud0;)Lcom/shabakaty/downloader/ud0;

    move-result-object v0

    .line 5
    iput-object v0, v1, Lcom/shabakaty/downloader/m04;->t:Lcom/shabakaty/downloader/ud0;

    return-object v1
.end method
