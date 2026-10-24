.class public Lcom/shabakaty/downloader/ci2$c$a;
.super Lcom/shabakaty/downloader/ci2$d;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ci2$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/ci2<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ci2$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/shabakaty/downloader/ci2$c;->r:Lcom/shabakaty/downloader/ci2;

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ci2$d;-><init>(Lcom/shabakaty/downloader/ci2;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ci2$d;->a()Lcom/shabakaty/downloader/ci2$e;

    move-result-object v0

    iget-object v0, v0, Lcom/shabakaty/downloader/ci2$e;->w:Ljava/lang/Object;

    return-object v0
.end method
