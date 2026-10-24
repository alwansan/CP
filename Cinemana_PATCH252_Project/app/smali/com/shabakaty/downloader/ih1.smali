.class public Lcom/shabakaty/downloader/ih1;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"

# interfaces
.implements Lcom/shabakaty/downloader/yc0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/yc0<",
        "Lcom/shabakaty/downloader/lh1$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/dr;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/dr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ih1;->a:Lcom/shabakaty/downloader/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/lh1$a;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ih1;->a:Lcom/shabakaty/downloader/dr;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/dr;->a(Lcom/shabakaty/downloader/lh1$a;)V

    return-void
.end method
